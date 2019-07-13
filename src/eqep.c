#include "driverlib.h"
#include "device.h"
#include "IQmathLib.h"
#include "eqep.h"

#define MECH_SCALER     16776                                                          // .9999 / 4000 converted to IQ26 fixed point format
#define POLE_PAIRS      2                                                              // 2 pole pairs in this example
#define CAL_ANGLE       0                                                              // Angular offset between encoder and Phase A
#define SPEED_SCALER    ((((uint64_t)32 * DEVICE_SYSCLK_FREQ / 64) * 60) / (24000000)) // See Equation 5 in eqep_ex2_calculation.c
#define BASE_RPM        6000                                                           // Base/max rpm is 6000rpm

// Globals
PosSpeed_Object posSpeed =
{
    0, 0, 0, 0,     // Initialize outputs to zero
    MECH_SCALER,    // mechScaler
    POLE_PAIRS,     // polePairs
    CAL_ANGLE,      // calAngle
    SPEED_SCALER,   // speedScaler
    0,              // Initialize output to zero
    BASE_RPM,       // baseRPM
    0, 0, 0, 0      // Initialize outputs to zero
};

void initEqep(void)
{
   //como salida index
   GPIO_setPinConfig     ( GPIO_2_GPIO2         );
   GPIO_setDirectionMode ( 2, GPIO_DIR_MODE_OUT );
   GPIO_writePin         ( 2, 0                 );

   // Initialize GPIOs for use as EQEP1A, EQEP1B, and EQEP1I
   GPIO_setPinConfig ( GPIO_20_EQEP1A        );
   GPIO_setPinConfig ( GPIO_21_EQEP1B        );
   GPIO_setPinConfig ( GPIO_23_EQEP1I        );

   GPIO_setPadConfig ( 20 ,GPIO_PIN_TYPE_STD );
   GPIO_setPadConfig ( 21 ,GPIO_PIN_TYPE_STD );
   GPIO_setPadConfig ( 23 ,GPIO_PIN_TYPE_STD );

   // Configure the decoder for quadrature count mode
   EQEP_setDecoderConfig ( EQEP1_BASE, (EQEP_CONFIG_1X_RESOLUTION | EQEP_CONFIG_QUADRATURE | EQEP_CONFIG_NO_SWAP ));
   EQEP_setEmulationMode ( EQEP1_BASE, EQEP_EMULATIONMODE_RUNFREE                                                ) ;

   // Configure the position counter to reset on an index event
   EQEP_setPositionCounterConfig(EQEP1_BASE, EQEP_POSITION_RESET_IDX, 0xFFFFFFFF);

   // Enable the unit timer, setting the frequency to 100 Hz
   EQEP_enableUnitTimer(EQEP1_BASE, (DEVICE_SYSCLK_FREQ / 100));

   // Configure the position counter to be latched on a unit time out
   EQEP_setLatchMode(EQEP1_BASE, EQEP_LATCH_UNIT_TIME_OUT);

   // Enable the eQEP1 module
   EQEP_enableModule(EQEP1_BASE);

   // Configure and enable the edge-capture unit. The capture clock divider is
   // SYSCLKOUT/64. The unit-position event divider is QCLK/32.
   EQEP_setCaptureConfig ( EQEP1_BASE, EQEP_CAPTURE_CLK_DIV_64, EQEP_UNIT_POS_EVNT_DIV_32 );
   EQEP_enableCapture    ( EQEP1_BASE                                                     );
}


void PosSpeed_calculate(PosSpeed_Object *p)
{
   int32_t temp;
   uint16_t pos16bVal, temp1;
   _iq temp2, newPosCnt, oldPosCnt;

   // **** Position calculation - mechanical and electrical motor angle ****
   // Get the motor direction: -1 = CCW/reverse, 1 = CW/forward
   p->directionQEP = EQEP_getDirection(EQEP1_BASE);

   // Capture position once per QA/QB period
   pos16bVal = (uint16_t)EQEP_getPosition(EQEP1_BASE);

   // Raw theta = current pos. + ang. offset from QA
   p->thetaRaw = pos16bVal + p->calAngle;

   // The following lines calculate
   // p->thetaMech ~= QPOSCNT / mechScaler [current cnt/(total cnt in 1 rev)]
   // where mechScaler = 4000 cnts/revolution
   temp  = (int32_t)p->thetaRaw * (int32_t)p->mechScaler;// Q0 * Q26 = Q26
   temp &= 0x03FFF000;

   p->thetaMech  = (int16_t)(temp >> 11);// Q26 -> Q15
   p->thetaMech &= 0x7FFF;

   // The following lines calculate p->elec_mech
   p->thetaElec  = p->polePairs * p->thetaMech;// Q0 * Q15 = Q15
   p->thetaElec &= 0x7FFF;

   // Check for an index occurrence
   if((EQEP_getInterruptStatus(EQEP1_BASE) & EQEP_INT_INDEX_EVNT_LATCH) != 0U) {
      EQEP_clearInterruptStatus(EQEP1_BASE, EQEP_INT_INDEX_EVNT_LATCH);
   }

   // **** High Speed Calculation using QEP Position counter ****
   // Check for unit position event
   if((EQEP_getInterruptStatus(EQEP1_BASE) & EQEP_INT_UNIT_TIME_OUT) != 0) {
      // The following lines calculate position: (x2 - x1) / 4000 (position in 1 revolution)
      pos16bVal  = (uint16_t)EQEP_getPositionLatch(EQEP1_BASE);
      temp       = (int32_t)pos16bVal * (int32_t)p->mechScaler; // Q0 * Q26 = Q26
      temp      &= 0x03FFF000;
      temp       = (int16_t)(temp >> 11);                       // Q26 -> Q15
      temp      &= 0x7FFF;

      newPosCnt = _IQ15toIQ(temp);
      oldPosCnt = p->oldPos;

      // POSCNT is counting down
      if(p->directionQEP == -1) {
         if(newPosCnt > oldPosCnt) { // x2 - x1 should be negative
            temp2 = -(_IQ(1) - newPosCnt + oldPosCnt);
         }
         else {
            temp2 = newPosCnt -oldPosCnt;
         }
      }
      // POSCNT is counting up
      else if(p->directionQEP == 1) {
         if(newPosCnt < oldPosCnt) {
            temp2 = _IQ(1) + newPosCnt - oldPosCnt;
         }
         else { // x2 - x1 should be positive
            temp2 = newPosCnt - oldPosCnt;
         }
      }

      if(temp2 > _IQ(1)) {
         p->speedFR = _IQ(1);
      }
      else
         if(temp2 < _IQ(-1)) {
            p->speedFR = _IQ(-1);
         }
         else {
            p->speedFR = temp2;
         }

      // Update the electrical angle
      p->oldPos = newPosCnt;

      // Change motor speed from pu value to rpm value (Q15 -> Q0)
      // Q0 = Q0*GLOBAL_Q => _IQXmpy(), X = GLOBAL_Q
      p->speedRPMFR = _IQmpy(p->baseRPM, p->speedFR);

      // Clear unit time out flag
      EQEP_clearInterruptStatus(EQEP1_BASE, EQEP_INT_UNIT_TIME_OUT);
   }

   // **** Low-speed computation using QEP capture counter ****
   // Check for unit position event
   if((EQEP_getStatus(EQEP1_BASE) & EQEP_STS_UNIT_POS_EVNT) != 0) { // No Capture overflow
      if((EQEP_getStatus(EQEP1_BASE) & EQEP_STS_CAP_OVRFLW_ERROR) == 0) {
         temp1 = (uint32_t)EQEP_getCapturePeriodLatch(EQEP1_BASE);
      }
      else { // Capture overflow, saturate the result
         temp1 = 0xFFFF;
      }

      // p->speedPR = p->speedScaler / temp1
      p->speedPR = _IQdiv(p->speedScaler, temp1);
      temp2      = p->speedPR;

      if(temp2 > _IQ(1)) {
         p->speedPR = _IQ(1);
      }
      else {
         p->speedPR = temp2;
      }

      // Convert p->speedPR to RPM
      // Reverse direction = negative
      if(p->directionQEP == -1) { // Q0 = Q0 * GLOBAL_Q => _IQXmpy(), X = GLOBAL_Q
         p->speedRPMPR = -_IQmpy(p->baseRPM, p->speedPR);
      }
      // Forward direction = positive
      else { // Q0 = Q0 * GLOBAL_Q => _IQXmpy(), X = GLOBAL_Q
         p->speedRPMPR = _IQmpy(p->baseRPM, p->speedPR);
      }

      // Clear unit position event flag and overflow error flag
      EQEP_clearStatus(EQEP1_BASE, (EQEP_STS_UNIT_POS_EVNT | EQEP_STS_CAP_OVRFLW_ERROR));
   }
}


#include "driverlib.h"
#include "device.h"
#include "IQmathLib.h"
#include "F2837xD_device.h"
#include "eqep_.h"
#include "opt.h"
#include "fcl_qep_f2837x_tmdxiddk_settings.h"
#include "qep_defs.h"
#include "speed_fr.h"

//#ifdef FCL_LIB
//extern
//#endif
//QEP             qep1;
//extern SPEED_MEAS_QEP  speed1;
//extern float32_t       T;

// Position Sensing Configuration
void initQep(void)/*{{{*/
{
//    // Setup GPIO for QEP operation
//    //
//    // QEP1A
//    GPIO_setMasterCore        ( 20, GPIO_CORE_CPU1    );
//    GPIO_setPadConfig         ( 20, GPIO_PIN_TYPE_STD );
//    GPIO_setDirectionMode     ( 20, GPIO_DIR_MODE_IN  );
//    GPIO_setQualificationMode ( 20, GPIO_QUAL_3SAMPLE );
//    GPIO_setPinConfig         ( GPIO_20_EQEP1A        );
//
//    // QEP1B
//    GPIO_setMasterCore        ( 21, GPIO_CORE_CPU1    );
//    GPIO_setPadConfig         ( 21, GPIO_PIN_TYPE_STD );
//    GPIO_setDirectionMode     ( 21, GPIO_DIR_MODE_IN  );
//    GPIO_setQualificationMode ( 21, GPIO_QUAL_3SAMPLE );
//    GPIO_setPinConfig         ( GPIO_21_EQEP1B        );
//
//    // QEP1I
//    GPIO_setMasterCore        ( 23, GPIO_CORE_CPU1    );
//    GPIO_setPadConfig         ( 23, GPIO_PIN_TYPE_STD );
//    GPIO_setDirectionMode     ( 23, GPIO_DIR_MODE_IN  );
//    GPIO_setQualificationMode ( 23, GPIO_QUAL_3SAMPLE );
//    GPIO_setPinConfig         ( GPIO_23_EQEP1I        );
//
//   // Init QEP parameters
//   qep1.LineEncoder     = 2500;// these are the number of slots in the encoder
//   qep1.MechScaler      = 0.25/qep1.LineEncoder;
//   qep1.PolePairs       = POLES/2;
//   qep1.CalibratedAngle = 0;
//
//   // Configure the decoder for quadrature count mode, counting both
//   // rising and falling edges (that is, 2x resolution)
//   EQEP_setDecoderConfig ( EQEP1_BASE, (EQEP_CONFIG_2X_RESOLUTION | EQEP_CONFIG_QUADRATURE | EQEP_CONFIG_NO_SWAP ));
//   EQEP_setEmulationMode ( EQEP1_BASE, EQEP_EMULATIONMODE_RUNFREE                                                ) ;
//
//   // Configure the position counter to be latched on a unit time out
//   // and latch on rising edge of index pulse
//   EQEP_setLatchMode(EQEP1_BASE, (EQEP_LATCH_RISING_INDEX | EQEP_LATCH_UNIT_TIME_OUT));
//
//   // Configure the position counter to reset on a maximum position
//   EQEP_setPositionCounterConfig(EQEP1_BASE, EQEP_POSITION_RESET_MAX_POS, (4 * qep1.LineEncoder) - 1);
//
//   // Disables the eQEP module position-compare unit
//   EQEP_disableCompare(EQEP1_BASE);
//
//   // Enable the unit timer, setting the frequency to 10KHz
//   EQEP_enableUnitTimer(EQEP1_BASE, QEP_UNIT_TIMER_TICKS - 1);
//
//   // Configure and enable the edge-capture unit. The capture clock divider is
//   // SYSCLKOUT/128. The unit-position event divider is QCLK/32.
//   EQEP_setCaptureConfig(EQEP1_BASE, EQEP_CAPTURE_CLK_DIV_128, EQEP_UNIT_POS_EVNT_DIV_32);
//
//   // Enable QEP edge-capture unit
//   EQEP_enableCapture(EQEP1_BASE);
//
//   // Initialize the Speed module for speed calculation from QEP/RESOLVER
//   speed1.K1      = 1/(BASE_FREQ*T);
//   speed1.K2      = 1/(1+2*PI*T*5);      // Low-pass cut-off frequency
//   speed1.K3      = 1-speed1.K2;
//   speed1.BaseRpm = 120*(BASE_FREQ/POLES);
//
//   // Enable UTO on QEP
////   EQEP_enableInterrupt(EQEP1_BASE, EQEP_INT_UNIT_TIME_OUT);
//
//   return;
}/*}}}*/

//float32 qep1ElecTheta ( void ) { return qep1.ElecTheta;}
//float32 qep1MechTheta ( void ) { return qep1.MechTheta;}


//// Globals
//PosSpeed_Object posSpeed =
//{
//    .posActual       = 0,
//    .dirActual       = 0,
//    .pos             = 0,
//    .dir             = 0,
//    .posLast         = 0,
//    .posDiff         = 0,
//    .angle           = 0,
//    .deltaAngle      = 0,
//    .speedFastLinear = 0,
//    .speedFastRps    = 0,
//    .speedFastRpm    = 0,
//    .speedLowPeriod  = 0,
//    .speedLowRps     = 0,
//    .speedLowRpm     = 0,
//};
//
//void initEqep(void)
//{
//
//   // Initialize GPIOs for use as EQEP1A, EQEP1B, and EQEP1I
//   GPIO_setPinConfig ( GPIO_20_EQEP1A        );
//   GPIO_setPinConfig ( GPIO_21_EQEP1B        );
//   GPIO_setPinConfig ( GPIO_23_EQEP1I        );
//
//   GPIO_setPadConfig ( 20 ,GPIO_PIN_TYPE_STD );
//   GPIO_setPadConfig ( 21 ,GPIO_PIN_TYPE_STD );
//   GPIO_setPadConfig ( 23 ,GPIO_PIN_TYPE_STD );
//
//
//   // Configure the decoder for quadrature count mode
//   EQEP_setDecoderConfig ( EQEP1_BASE, (EQEP_CONFIG_1X_RESOLUTION | EQEP_CONFIG_QUADRATURE | EQEP_CONFIG_NO_SWAP ));
//   EQEP_setEmulationMode ( EQEP1_BASE, EQEP_EMULATIONMODE_RUNFREE                                                ) ;
//
//   // Configure the position counter to reset on an index event
//   EQEP_setPositionCounterConfig(EQEP1_BASE, EQEP_POSITION_RESET_IDX, 0xFFFFFFFF);
//
//   // Enable the unit timer, setting the frequency to 100 Hz
//   EQEP_enableUnitTimer(EQEP1_BASE, (DEVICE_SYSCLK_FREQ / 100));
//
//   // Configure the position counter to be latched on a unit time out
//   EQEP_setLatchMode(EQEP1_BASE, EQEP_LATCH_UNIT_TIME_OUT);
//
//   // Enable the eQEP1 module
//   EQEP_enableModule(EQEP1_BASE);
//
//   // Configure and enable the edge-capture unit. The capture clock divider is
//   // SYSCLKOUT/64. The unit-position event divider is QCLK/32.
//   EQEP_setCaptureConfig ( EQEP1_BASE, EQEP_CAPTURE_CLK_DIV_128, EQEP_UNIT_POS_EVNT_DIV_1);
//   EQEP_enableCapture    ( EQEP1_BASE                                                     );
//}
//
//void posCalc(void)
//{
//   posSpeed.dirActual = EQEP_getDirection ( EQEP1_BASE );
//   posSpeed.posActual = EQEP_getPosition  ( EQEP1_BASE );
//}
//
//void incDeltaAngle(void)
//{
//   posSpeed.deltaAngle+=0.01;
//   if(posSpeed.deltaAngle>1) posSpeed.deltaAngle=0;
//}
//void decDeltaAngle(void)
//{
//   posSpeed.deltaAngle-=0.01;
//   if(posSpeed.deltaAngle<0) posSpeed.deltaAngle=1;
//}
//float readAngle(void)
//{
//   return posSpeed.angle-posSpeed.deltaAngle;
//}
//void speedFastCalc(void)
//{
//   posSpeed.dir             = EQEP_getDirection ( EQEP1_BASE );
//   posSpeed.pos             = EQEP_getPosition  ( EQEP1_BASE );
//   posSpeed.posDiff         = posSpeed.pos-posSpeed.posLast;
//   posSpeed.angle           = (posSpeed.pos%(ENCODER_RESOLUTION/4))/(float)(ENCODER_RESOLUTION/4);
//   posSpeed.posLast         = posSpeed.pos;
//   posSpeed.speedFastLinear = ( posSpeed.posDiff )/SPEED_FAST_DELTA_T;
//   posSpeed.speedFastRps    = posSpeed.speedFastLinear/ENCODER_RESOLUTION;
//   posSpeed.speedFastRpm    = posSpeed.speedFastRps*60;
//}
//
//void speedLowCalc(void)
//{
//   if((EQEP_getStatus(EQEP1_BASE) & EQEP_STS_UNIT_POS_EVNT) != 0) {       // Check for unit position event
//      if((EQEP_getStatus(EQEP1_BASE) & EQEP_STS_CAP_OVRFLW_ERROR) == 0) { // No Capture overflow
//         posSpeed.speedLowPeriod = EQEP_getCapturePeriodLatch(EQEP1_BASE);
//      }
//      else { // Capture overflow, saturate the result
//         posSpeed.speedLowPeriod = 0xFFFF;
//      }
//      posSpeed.speedLowRps=DEVICE_SYSCLK_FREQ/((float)posSpeed.speedLowPeriod*128*ENCODER_RESOLUTION);
//      posSpeed.speedLowRpm=posSpeed.speedLowRps*60;
//      EQEP_clearStatus(EQEP1_BASE, (EQEP_STS_UNIT_POS_EVNT | EQEP_STS_CAP_OVRFLW_ERROR));
//   }
//}
//
//

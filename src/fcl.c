#include "../lib/fcl/include/fcl_cpu_cla.h"
#include "fcl.h"
#include "scia.h"
#include "linevoltage.h"
#include "qep_defs.h"
#include "eqep_.h"
#include "cla1.h"
#include "dac_.h"
#include "pwm.h"
#include "sm.h"
#include "events.h"
#include "sigmadelta.h"
#include "adc_.h"
#include "pid_.h"
#include "ramper_.h"
#include "position.h"
#include "schedule.h"

// Flag variables
uint32_t          isrTicker          = 0         ;
MotorRunStop_e    runMotor           = MOTOR_STOP;
uint16_t          speedLoopPrescaler = 10        ; // Speed loop pre scalar
uint16_t          speedLoopCount     = 1         ; // Speed loop counter
volatile uint16_t lsw2EntryFlag      = 0         ;

// Variables for Fast Current Loop
volatile  uint16_t   FCL_cycleCount       = 0;
float32_t alignCntr          = 0;
float32_t alignCnt           = 20000;
float32_t IdRef_start        = 0.1;
float32_t IdRef_run          = 0;

float32_t IdRef     = 0.0;                 // Id reference (pu)
float32_t IqRef     = 0.0;                 // Iq reference (pu)
float32_t speedRef  = 0.0;                 // For Closed Loop tests

// Instance a ramp controller to smoothly ramp the frequency
RMPCNTL rc1 = RMPCNTL_DEFAULTS;

// Instance a speed measurement calc
SPEED_MEAS_QEP  speed1;

void (*isrSm)(void);

//Function that initializes the variables for Fast current Loop library
void initFCLVars()/*{{{*/
{
    FCL_params.carrierMid = maxModIndex * INV_PWM_HALF_TBPRD * 0x10000L;
    FCL_params.adcScale   = ADC_PU_PPB_SCALE_FACTOR * LEM_TO_SHUNT;
    FCL_params.cmidsqrt3  = FCL_params.carrierMid * sqrt(3.0);
    FCL_params.tSamp      = (1.0F/SAMPLING_FREQ);
    FCL_params.Rd         = RS;
    FCL_params.Rq         = RS;
    FCL_params.Ld         = LS;
    FCL_params.Lq         = LS;
    FCL_params.BemfK      = 0.8;
    FCL_params.Ibase      = BASE_SHUNT_CURRENT; // LEM sensing is scaled to match with shunt sensing
    FCL_params.Wbase      = 2.0 * PI * BASE_FREQ;
    FCL_params.wccD       = CUR_LOOP_BANDWIDTH,
    FCL_params.wccQ       = CUR_LOOP_BANDWIDTH;
    return;
}/*}}}*/
// initFcl()
void initFcl(void)/*{{{*/
{
   // Initialize FCL library
   // This function initializes the ADC PPB result bases, as well as the ADC
   // module used to sample phase W. Ensure that the final argument passed
   // corresponds to the ADC base used to sample phase W on the HW board
   FCL_initADC(ADCARESULT_BASE, ADC_PPB_NUMBER1, ADCBRESULT_BASE, ADC_PPB_NUMBER1, ADCA_BASE); 

   // ensure that the correct PWM base addresses are being passed to the
   // FCL library here. pwmHandle[0:2] should represent inverter phases
   // U/V/W in the hardware
   FCL_initPWM(EPWM1_BASE, EPWM2_BASE, EPWM3_BASE);

   // ensure the correct QEP base is being passed
   FCL_initQEP(EQEP1_BASE);

   // Initialize Fast current loop variables
   initFCLVars ( );
   initDac     ( );
   initQep     ( );
   initCLA1    ( );

   // PI control configuration
   // Note that the vectorial sum of d-q PI outputs should be less than 1.0 which
   // refers to maximum duty cycle for SVGEN. Another duty cycle limiting factor
   // is current sense through shunt resistors which depends on hardware/software
   // implementation. Depending on the application requirements 3,2 or a single
   // shunt resistor can be used for current waveform reconstruction. The higher
   // number of shunt resistors allow the higher duty cycle operation and better
   // dc bus utilization. The users should adjust the PI saturation levels
   // carefully during open loop tests (i.e pi_id.Umax, pi_iq.Umax and Umins) as
   // in project manuals. Violation of this procedure yields distorted  current
   // waveforms and unstable closed loop operations that may damage the inverter.
   initPid             ( );
   FCL_resetController ( );

   // Initialize the RAMPGEN module
   rg1.StepAngleMax = BASE_FREQ*T;
   rg1.Angle        = 0;
   rg1.Out          = 0;
   rg1.Gain         = 1.0;
   rg1.Offset       = 1.0;

   // set mock REFERENCES for Speed and current loops
   speedRef   = 0.05;
   IdRef      = 0;
   IqRef      = 0.05;

   // Init FLAGS
   lsw        = QEP_ALIGNMENT;
   runMotor   = MOTOR_STOP;

   // Read and update DC BUS voltage for FCL to use
   FCL_params.Vdcbus = getVdc();

   New_Periodic_Schedule(10,ANY_Event,fcl());
   isrSm=electricalInit;
   // Enable all mapped INTerrupts
   EPWM_clearEventTriggerInterruptFlag ( EPWM1_BASE ); // clear pending INT event
   Interrupt_enable                    ( INT_EPWM1  ); // Enable PWM1INT in PIE group 3

   // Enable group 3 interrupts - EPWM1 is here
   Interrupt_enableInCPU(INTERRUPT_CPU_INT3);

}/*}}}*/
// build level 5
static void buildLevel5(void)/*{{{*/
{
//   FCL_runPICtrl();
//   FCL_params.Vdcbus = getVdc(); // Measure DC Bus voltage using SDFM Filter3
//   FCL_runPICtrlWrap();          // Fast current loop controller wrapper

   // -----------------------------------------------------------------------------
   //  Alignment Routine: this routine aligns the motor to zero electrical angle
   //  and in case of QEP also finds the index location and initializes the angle
   //  w.r.t. the index location
   // -----------------------------------------------------------------------------
//   if(runMotor == MOTOR_STOP)
//   {
//      lsw           = QEP_ALIGNMENT;
//      lsw2EntryFlag = 0;
//      alignCntr     = 0;
//      posCntr       = 0;
//      posPtr        = 0;
//      IdRef         = 0;
//      pi_id.ref     = IdRef;
//      FCL_resetController();
//   }
//   else 
      if(lsw == QEP_ALIGNMENT) {
         // alignment curretnt
         IdRef = IdRef_start;  //(0.1);

         // for restarting from (runMotor = STOP)
         rc1.TargetValue   = 0;
         rc1.SetpointValue = 0;

         // set up an alignment and hold time for shaft to settle down
         if(pi_id.ref >= IdRef) {
            if(++alignCntr >= alignCnt) {
               alignCntr  = 0;
               //              IdRef = IdRef_run;
               lsw = QEP_WAIT_FOR_INDEX;
            }
         }
      } // end else if(lsw == QEP_ALIGNMENT)
      else 
         if(lsw == QEP_GOT_INDEX) {
            IdRef = IdRef_run;
         }

   //  Connect inputs of the RAMP GEN module and call the ramp generator module
   rg1.Freq = speedRef*0.1;
   fclRampGen((RAMPGEN *)&rg1);

   //    Connect inputs of the SPEED_FR module and call the speed calculation module
   posEncElecTheta[QEP_POS_ENCODER] = qep1ElecTheta();
   posEncMechTheta[QEP_POS_ENCODER] = qep1MechTheta();
   speed1.ElecTheta = posEncElecTheta[POSITION_ENCODER];
   runSpeedFR(&speed1);

   //    Connect inputs of the PID module and call the PID speed controller module
   if(++speedLoopCount >= speedLoopPrescaler) {
      if(lsw == QEP_GOT_INDEX) {
         if(!lsw2EntryFlag) {
            lsw2EntryFlag   = 1;
            rc1.TargetValue = posEncMechTheta[POSITION_ENCODER];
            pi_pos.Fbk      = rc1.TargetValue;
            pi_pos.Ref      = pi_pos.Fbk;
         }
         else {
            // ========== reference position setting =========
            // choose between 1 of 2 position commands
            // The user can choose between a position reference table
            // used within refPosGen() or feed it in from rg1.Out
            // Position command read from a table
            rc1.TargetValue = refPosGen(rc1.TargetValue);
            // Position command generated as integral of speedRef
            //              rc1.TargetValue = rg1.Out;
            rc1.SetpointValue = rc1.TargetValue - (float32_t)((int32_t)rc1.TargetValue);

            // Rolling in angle within 0 to 1pu
            if(rc1.SetpointValue < 0) {
               rc1.SetpointValue += 1.0;
            }
            pi_pos.Ref = rc1.SetpointValue;
            pi_pos.Fbk = posEncMechTheta[POSITION_ENCODER];
         }
         runPIPos(&pi_pos);

         // speed PI regulator
         pid_spd.term.Ref = pi_pos.Out;
         pid_spd.term.Fbk = speed1.Speed;
         runPID(&pid_spd);
      }
      speedLoopCount=0;
   }

   if(lsw == QEP_ALIGNMENT) {
      rc1.SetpointValue = 0;// position = 0 deg
      pid_spd.data.d1   = 0;
      pid_spd.data.d2   = 0;
      pid_spd.data.i1   = 0;
      pid_spd.data.ud   = 0;
      pid_spd.data.ui   = 0;
      pid_spd.data.up   = 0;
      pi_pos.ui         = 0;
      pi_pos.i1         = 0;
      rg1.Out           = 0;
      lsw2EntryFlag     = 0;
   }

   //  Setup iqref for FCL
   pi_iq.ref = (lsw == QEP_ALIGNMENT) ? 0 :
      (lsw == QEP_WAIT_FOR_INDEX) ? IqRef : pid_spd.term.Out;

   //  Setup idref for FCL
   pi_id.ref = ramper(IdRef, pi_id.ref, 0.00001);

   updateDac();
   return;
}/*}}}*/
// Motor Control ISR
__interrupt void motorControlISR(void)/*{{{*/
{
   FCL_runPICtrl();
   FCL_params.Vdcbus = getVdc(); // Measure DC Bus voltage using SDFM Filter3
   FCL_runPICtrlWrap();          // Fast current loop controller wrapper
//    buildLevel5();
    isrSm();

    EPWM_clearEventTriggerInterruptFlag(EPWM1_BASE);

    // clear ADCINT1 INT and ack PIE INT
    ADC_clearInterruptStatus(ADCA_BASE, ADC_INT_NUMBER1);

    // ACK PIE for CLA INT GROUP
    // FCL is not clearing the ACK bit for CLA group
    // because the example might have other CLA Tasks

    // ACK the PWM, ADC and CLA interrupts
    Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP3 | INTERRUPT_ACK_GROUP11);

    isrTicker++;

} // motorControlISR Ends Here}}}
//----------------------------------------------------------------------------------------
const State
   adcCalib  [ ];

const State*   fclSm=adcCalib;
const State**  fcl ( void ) { return &fclSm; }


void electricalInit(void)
{
   lsw           = QEP_ALIGNMENT;
   lsw2EntryFlag = 0;
   alignCntr     = 0;
   posCntr       = 0;
   posPtr        = 0;
   IdRef         = 0;
   pi_id.ref     = IdRef;
   FCL_resetController();
   runMotor   = MOTOR_RUN;
   isrSm=electricalAlign;
}
void electricalAlign(void)
{
   buildLevel5();
}
void mechanicalAlign(void)
{
}
void running(void)
{
}






void align(void)
{
   sciPrintf("motor run\r\n");
   runMotor = MOTOR_RUN;
}

void controlling(void)
{
}

const State adcCalib [ ] =
{
    ANY_Event ,Rien ,adcCalib  ,
};

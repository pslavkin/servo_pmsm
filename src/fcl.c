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
#include "fcl_pi.h"
#include "pid_.h"
#include "ramper_.h"
#include "position.h"
#include "schedule.h"

// Flag variables
uint32_t          isrTicker      = 0    ;
uint32_t          speedPidTicker = 0    ;
bool              logEnable      = false;

uint16_t          speedLoopPrescaler = 200 ; // Speed loop pre scalar
uint16_t          speedLoopCount     = 1    ; // Speed loop counter

// Variables for Fast Current Loop
volatile  uint16_t   FCL_cycleCount  = 0    ;
float32_t            alignCntr       = 0    ;
float32_t            alignCnt        = 10000;
float32_t            IdRef_start     = 0.1  ;

// Instance a ramp controller to smoothly ramp the frequency
RMPCNTL rc1 = RMPCNTL_DEFAULTS;

// Instance a speed measurement calc
SPEED_MEAS_QEP  speed1;

void ( *isrSm )(void)=stopIsr;
void setLog ( bool state ) { logEnable=state;}

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

   // Init FLAGS
   lsw        = QEP_ALIGNMENT;
   alignCntr = 0;
   pi_id.ref = 0;
   pi_iq.ref = 0;
   FCL_resetController();

   // Read and update DC BUS voltage for FCL to use
   FCL_params.Vdcbus = getVdc();

   New_Periodic_Schedule(10,ANY_Event,fcl());
   // Enable all mapped INTerrupts
//   EPWM_clearEventTriggerInterruptFlag ( EPWM1_BASE ); // clear pending INT event
//   Interrupt_enable                    ( INT_EPWM1  ); // Enable PWM1INT in PIE group 3
//   // Enable group 3 interrupts - EPWM1 is here
//   Interrupt_enableInCPU(INTERRUPT_CPU_INT3);
}/*}}}*/
// print log
void logPrint(void)/*{{{*/
{
   if (logEnable==true) {
      if(++speedLoopCount >= speedLoopPrescaler) {
         speedLoopCount    = 0;
         speedPidTicker++;
         sciPrintf("%i %f %f %f %f\r\n",speedPidTicker,
               pi_iq.fbk,
               speed1.Speed,
               pi_pos.Fbk,
               getPosAbs()
               );
      }
   }
}/*}}}*/
// Motor Control ISR
__interrupt void motorControlISR(void)/*{{{*/
{
   FCL_runPICtrl();
   FCL_params.Vdcbus = getVdc(); // Measure DC Bus voltage using SDFM Filter3
   FCL_runPICtrlWrap ( );        // Fast current loop controller wrapper
   isrSm             ( );

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
// stop 
void stopIsr(void)/*{{{*/
{
   setAbsMech(qep1MechTheta());
   logPrint();
}/*}}}*/
// electrical align
void alignIsr(void)/*{{{*/
{
   if(pi_id.ref >= IdRef_start) {
      if(++alignCntr >= alignCnt) {
         lsw             = QEP_GOT_INDEX;
         alignCntr       = 0;
         pi_pos.Fbk      = 0;
         pi_pos.Ref      = 0;
         pid_spd.data.d1 = 0;
         pid_spd.data.d2 = 0;
         pid_spd.data.i1 = 0;
         pid_spd.data.ud = 0;
         pid_spd.data.ui = 0;
         pid_spd.data.up = 0;
         pi_pos.ui       = 0;
         pi_pos.i1       = 0;
         pi_id.ref       = 0;
         pi_iq.ref       = 0.1;
         atomicSendEvent(alignEndEvent,fcl());
      }
   }
   pi_id.ref = ramper ( IdRef_start, pi_id.ref, 0.00001 );
}/*}}}*/
// running
void runIsr(void)/*{{{*/
{
   speed1.ElecTheta = qep1ElecTheta();
   runSpeedFR(&speed1);

   setAbsMech(qep1MechTheta());
   pi_pos.Ref = getPosAbs();
   pi_pos.Fbk = getPosAbsMech();
   runPIPos(&pi_pos);
   sinPosGenerator();

   // speed PI regulator
   pid_spd.term.Ref = pi_pos.Out;
   pid_spd.term.Fbk = speed1.Speed;
   runPID(&pid_spd);
   pi_iq.ref        = pid_spd.term.Out;

   logPrint();
}/*}}}*/

//----------------------------------------------------------------------------------------
const State
   stopped       [ ],
   adcCalibrating[ ],
   aligning      [ ],
   running       [ ],
   overCurrenting[ ];

const State*   fclSm=stopped;
const State**  fcl ( void ) { return &fclSm; }

void sendRunEvent         ( void ) { atomicSendEvent(runEvent         ,fcl());}
void sendStopEvent        ( void ) { atomicSendEvent(stopEvent        ,fcl());}
void sendAdcCalibEndEvent ( void ) { atomicSendEvent(adcCalibEndEvent ,fcl());}
void sendOvercurrentEvent ( void ) { atomicSendEvent(overcurrentEvent ,fcl());}

void align(void)
{
   EPWM_clearEventTriggerInterruptFlag ( EPWM1_BASE ); // clear pending INT event
   Interrupt_enable                    ( INT_EPWM1  ); // Enable PWM1INT in PIE group 3
   // Enable group 3 interrupts - EPWM1 is here
   Interrupt_enableInCPU(INTERRUPT_CPU_INT3);
   isrSm     = alignIsr;
   sciPrintf("aligning\r\n");
}
void stop(void)
{
   pi_id.ref       = 0;
   pi_iq.ref       = 0;
   isrSm     = stopIsr;
   sciPrintf("stopped\r\n");
}
void run(void)
{
   isrSm     = runIsr;
   sciPrintf("running\r\n");
}
void overCurrent(void)
{
   isrSm     = stopIsr;
   sciPrintf("overcurrent\r\n");
}
//----------------------------------------------------------------------------------------------------
const State stopped       [ ] =
{
    runEvent                ,currentCalibrate ,adcCalibrating ,
    ANY_Event               ,Rien             ,stopped        ,
};
const State adcCalibrating[ ] =
{
    adcCalibEndEvent        ,align            ,aligning       ,
    ANY_Event               ,Rien             ,adcCalibrating ,
};
const State aligning      [ ] =
{
    alignEndEvent           ,run              ,running        ,
    ANY_Event               ,Rien             ,aligning       ,
};
const State running       [ ] =
{
    overcurrentEvent        ,overCurrent      ,overCurrenting ,
    stopEvent               ,stop             ,stopped        ,
    ANY_Event               ,Rien             ,running        ,
};
const State overCurrenting[ ] =
{
    overcurrentClearedEvent ,stop             ,stopped        ,
    ANY_Event               ,Rien             ,overCurrenting ,
};

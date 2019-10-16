#include "../lib/fcl/include/fcl_cpu_cla.h"/*{{{*/
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
#include "wave.h"
#include "log.h"
#include "leds.h"
#include "gcode.h"
#include "overcurrent.h"
#include "swept.h"
#include "pplacement.h"
#include "schedule.h"/*}}}*/

float32_t            alignCntr                 ;
float32_t            alignCnt                  ;
float32_t            idRefStart                ;
float32_t            idRefActual               ;
float32_t            controlledSpeed  = 0      ;
float32_t            controlledTorque = 0      ;
controlType_enum     controlType      = TORQUE ;
controlMethod_enum   controlMethod    = OPEN   ;
void ( *isrSm )(void)                 = stopIsr;

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
void initFcl(void)/*{{{*/
{
   FCL_initADC(ADCARESULT_BASE, ADC_PPB_NUMBER1, ADCBRESULT_BASE, ADC_PPB_NUMBER1, ADCA_BASE); 
   FCL_initPWM(EPWM1_BASE, EPWM2_BASE, EPWM3_BASE);
   FCL_initQEP(EQEP1_BASE);
   initFCLVars ( );
   initDac     ( );
   initQep     ( );
   initCLA1    ( );
   initPid     ( );
   lsw = QEP_ALIGNMENT;
   FCL_resetController ( );
   getVdc              ( ); // Measure DC Bus voltage using SDFM Filter3
//   New_None_Periodic_Schedule( 10,runEvent,fcl( )); //autostart
}/*}}}*/
__interrupt void motorControlISR(void)/*{{{*/
{
//   led45On(); //debug
      addPosAbsMech     ( qep1MechTheta( ));
      isrSm             (                ) ;
      EPWM_clearEventTriggerInterruptFlag ( EPWM1_BASE                                   );
      ADC_clearInterruptStatus            ( ADCA_BASE, ADC_INT_NUMBER1                   );
      Interrupt_clearACKGroup             ( INTERRUPT_ACK_GROUP3 | INTERRUPT_ACK_GROUP11 );
//   led45Off(); //debug
}/*}}}*/
void stopIsr(void)/*{{{*/
{
   iqd2Pwm(0,0);
   sendlogPrintEvent();
}/*}}}*/
void alignIsr(void)/*{{{*/
{
   if(idRefActual >= idRefStart) {
      if(++alignCntr >= alignCnt) {
         lsw             = QEP_GOT_INDEX;
         sendEvent(alignEndEvent,fcl());
      }
   }
   else
      idRefActual = ramper ( idRefStart, idRefActual, 0.00001 );
   lems2Iqd ( 0             );
   iqd2Pwm  ( 0,idRefActual );
   sendlogPrintEvent();
}/*}}}*/

uint32_t speedCount=0;
uint32_t posCount=0;

void runIsr(void)/*{{{*/
{
   speed1.ElecTheta = qep1ElecTheta();
   runSpeedFR(&speed1);

   if(speedCount++>4) { 
      speedCount=0;
      if(posCount++>1) { 
         posCount=0;
         pid_pos.term.Ref     = getPosAbs     ( );
         pid_pos.term.Fbk     = getPosAbsMech ( );
         runPablosPID(&pid_pos);
      }
      pid_spd.term.Ref = controlType==SPEED?controlledSpeed:pid_pos.term.Out;
      pid_spd.term.Fbk = getSpeed1Speed();
      runPablosPID(&pid_spd);
   }

   lems2Iqd(qep1ElecTheta());
   pid_iq.term.Ref = controlType == TORQUE?controlledTorque:pid_spd.term.Out;
   pid_iq.term.Fbk = parkData.Qs;

   switch(controlMethod) {
      case OPEN:
         pid_iq.term.Out=controlledTorque;
      break;
      case PPLACE:
         runPplacement(&pid_iq);
      break;
      case PID_METHOD:
         runPablosPID(&pid_iq);
      break;
   }

   iqd2Pwm(pid_iq.term.Out,0);

   waveGenerator     ( );
   sendlogPrintEvent ( );
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

void                 sendRunEvent                ( void        ) { atomicSendEvent(runEvent         ,fcl())       ;}
void                 sendStopEvent               ( void        ) { atomicSendEvent(stopEvent        ,fcl())       ;}
void                 sendRestartEvent            ( void        ) { atomicSendEvent(restartEvent     ,fcl())       ;}
void                 sendAdcCalibEndEvent        ( void        ) { atomicSendEvent(adcCalibEndEvent ,fcl())       ;}
void                 sendOvercurrentEvent        ( void        ) { atomicSendEvent(overcurrentEvent ,fcl())       ;}
void                 sendOvercurrentClearedEvent ( void        ) { atomicSendEvent(overcurrentClearedEvent ,fcl());}
controlType_enum     getControlType              ( void        ) { return controlType                             ;}
void                 setControlPos               ( void        ) {
   initPid();
   controlType=POS                                ;}
void                 setControlSpeed             ( void        ) {
   initPid();
   controlType=SPEED                              ;}
void                 setControlTorque            ( void        ) { controlType=TORQUE                             ;}
void                 setControlOpen              ( void        ) { controlMethod=OPEN                             ;}
void                 setControlPid               ( void        ) { 
   initPid();
   controlMethod=PID_METHOD                       ;}
void                 setControlPplace            ( void        ) {
   initPplace();
   controlMethod=PPLACE;
}
void                 setControlledSpeed          ( float32_t s ) { controlledSpeed=s                              ;}
float32_t            getControlledSpeed          ( void        ) { return controlledSpeed                         ;}
void                 setControlledTorque         ( float32_t s ) { controlledTorque=s                             ;}
float32_t            getControlledTorque         ( void        ) { return controlledTorque                        ;}

void align(void)/*{{{*/
{
   FCL_resetController();
   lsw         = QEP_ALIGNMENT;
   alignCntr   = 0            ;
   alignCnt    = 20000        ;
   idRefStart  = 0.2          ;
   idRefActual = 0          ;
   speed1      = ( SPEED_MEAS_QEP )SPEED_MEAS_QEP_DEFAULTS;
   initQep   ( );
   initPid   ( );
   rstPosAbs ( );
   isrSm       = alignIsr;
   sciPrintf("fcl aligning\r\n");
   EPWM_clearEventTriggerInterruptFlag ( EPWM1_BASE         ); // clear pending INT event
   Interrupt_enable                    ( INT_EPWM1          ); // Enable PWM1INT in PIE group 3
   Interrupt_enableInCPU               ( INTERRUPT_CPU_INT3 ); // Enable group 3 interrupts - EPWM1 is here
}
void stop(void)
{
   isrSm     = stopIsr;
   sciPrintf("fcl stopped\r\n");
}
void run(void)
{
   controlledSpeed = 0;//esta la usa wave y podria tener algo
   isrSm     = runIsr;
   sciPrintf("fcl running\r\n");
}
void overCurrent(void)
{
   isrSm     = stopIsr;
   sciPrintf("fcl overcurrent\r\n");
}/*}}}*/
void restart(void)/*{{{*/
{
   sciPrintf        ( "fcl restarting\r\n" ) ;
   rstGcode         (                      ) ;
   resetOvercurrent (                      ) ;
   disableWave      (                      ) ;
   setSweptDisable  (                      ) ;
   setWaveFrec      ( 0.2                  ) ;
   atomicSendEvent  ( runEvent,fcl(        ));
}/*}}}*/
//----------------------------------------------------------------------------------------------------
const State stopped       [ ] =
{
    runEvent                ,sendCalibEvent ,adcCalibrating ,
    restartEvent            ,restart        ,stopped        ,
    ANY_Event               ,Rien           ,stopped        ,
};
const State adcCalibrating[ ] =
{
    adcCalibEndEvent        ,align          ,aligning       ,
    ANY_Event               ,Rien           ,adcCalibrating ,
};
const State aligning      [ ] =
{
    alignEndEvent           ,run            ,running        ,
    ANY_Event               ,Rien           ,aligning       ,
};
const State running       [ ] =
{
    overcurrentEvent        ,overCurrent    ,overCurrenting ,
    stopEvent               ,stop           ,stopped        ,
    ANY_Event               ,Rien           ,running        ,
};
const State overCurrenting[ ] =
{
    overcurrentClearedEvent ,stop           ,stopped        ,
    restartEvent            ,restart        ,stopped        ,
    ANY_Event               ,Rien           ,overCurrenting ,
};

#include "driverlib.h"
#include "device.h"
#include "fcl.h"
#include "scia.h"
#include "sm.h"
#include "events.h"
#include "log.h"
#include "pid_.h"
#include "eqep_.h"
#include "schedule.h"
#include "position.h"

const State
   logEnabled       [ ];

log_t logm    = {
   .state     = DISABLED,
   .pauseTime = 30   ,
   .ticker    = 0    ,
   .prescaler = 500  , // Speed loop pre scalar
   .count     = 1    , // Speed loop counter
};

const State*      logSm=logEnabled;
const State**     logger ( void ) { return &logSm; }

void printLogPrescaled(void)
{
   if(++logm.count >= logm.prescaler) {
      logm.count = 0;
      logm.ticker+=logm.prescaler;
      printLog();
   }
}

void printLog(void)
{
   sciPrintf("%f %f %f %f %f %f %f\r\n",logm.ticker*T,
         getPosAbs      ( ),     //posicion pedida de referencia
         getPiPosFbk    ( ),     //posicion que consigo
         getPidSpeedRef ( ),     //velocidad de referencia, que puede ser fija en el caso de control de speed o sale del pi de posicion
         getSpeed1Speed ( ),     //velocidad que consigo
         getPiIqRef     ( ),     //valor de referencia de iq que puede ser fijo en el caso de control de torque o sale del pid de speed
         getPiIqFbk     ( )      //torque conseguido
         );
}

void     setLogPauseTime ( uint32_t p ) { logm.pauseTime=p     ;}
uint32_t getLogPauseTime ( void       ) { return logm.pauseTime;}

void sendPrintLogEvent(void)
{
   if (logm.state==ENABLED)
      sendEvent(printLogEvent,logger());
}
//bool     getLogState    ( void      ) { return logm.state;}

void     pauseLog(void)
{
   switch(logm.state) {
      case ENABLED:
         logm.state=PAUSED;
         Update_Or_New_None_Periodic_Func_Schedule(logm.pauseTime,setLogEnable);
         break;
      case DISABLED:
         Free_Func_Schedule(setLogEnable);
         break;
      case PAUSED:
         Update_Or_New_None_Periodic_Func_Schedule(logm.pauseTime,setLogEnable);
         break;
      default:
         break;
   }
}
void     setLogEnable    ( void      ) { logm.state = ENABLED    ;}
void     setLogDisable   ( void      ) { logm.state    = DISABLED;}
void     setLogPrescaler ( int32_t p ) { logm.prescaler = p      ;}
int32_t  getLogPrescaler ( void      ) { return logm.prescaler   ;}

const State logEnabled [ ] =
{
    printLogEvent ,printLogPrescaled ,logEnabled ,
    ANY_Event     ,Rien              ,logEnabled ,
};

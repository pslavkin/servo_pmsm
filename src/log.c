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
#include "wave.h"

const State
   logDisabled[ ],
   logEnabled [ ],
   logPaused  [ ];

log_t logm = {
   .pauseTime  = 15  ,
   .ticker     = 0   ,
   .prescaler  = 500 , // Speed loop pre scalar
   .count      = 1   , // Speed loop counter
   .bodeEnable = 0   ,
};

const State*      logSm=logDisabled;
const State**     logger ( void ) { return &logSm; }

void printLogPrescaled(void)
{
   if(++logm.count >= logm.prescaler) {
      logm.count = 0;
      logm.ticker+=logm.prescaler;
      if(logm.bodeEnable==false)
         printLog();
      else
         printBode();
   }
}

void printLog(void)
{
   sciPrintf("%f %f %f %f %f %f %f\r\n",
         logm.ticker*T,
         getPosAbs      ( ), // posicion pedida de referencia
         getPiPosFbk    ( ), // posicion que consigo
         getPidSpeedRef ( ), // velocidad de referencia, que puede ser fija en el caso de control de speed o sale del pi de posicion
         getSpeed1Speed ( ), // velocidad que consigo
         getPiIqRef     ( ), // valor de referencia de iq que puede ser fijo en el caso de control de torque o sale del pid de speed
         getPiIqFbk     ( )  // torque conseguido
         );
}

void     sendlogPrintEvent   ( void       ) { if (logSm!=logDisabled) sendEvent(logPrintEvent,logger())        ;}
void     createLogTimer      ( void       ) { New_Periodic_Schedule(logm.pauseTime,logUnpauseEvent,logger())   ;}
void     freeLogTimer        ( void       ) { Free_Schedule(logUnpauseEvent,logger())                          ;}
void     logUpdateTimer      ( void       ) { Update_Periodic_Schedule(logm.pauseTime,logUnpauseEvent,logger());}
void     sendLogEnableEvent  ( void       ) { atomicSendEvent(logEnableEvent,logger())                         ;}
void     sendLogDisableEvent ( void       ) { atomicSendEvent(logDisableEvent,logger())                        ;}
void     sendLogPauseEvent   ( void       ) { atomicSendEvent(logPauseEvent,logger())                          ;}
void     setLogPrescaler     ( int32_t p  ) { logm.prescaler = p                                               ;}
void     logBodeEnable       (            ) { logm.bodeEnable = true                                           ;}
void     logBodeDisable      (            ) { logm.bodeEnable = false                                          ;}
int32_t  getLogPrescaler     ( void       ) { return logm.prescaler                                            ;}
void     setLogPauseTime     ( uint32_t p ) { logm.pauseTime=p                                                 ;}
uint32_t getLogPauseTime     ( void       ) { return logm.pauseTime                                            ;}
bool     getLogBodeState     (            ) { return logm.bodeEnable;}

const State logDisabled[ ] =
{
    logEnableEvent  ,createLogTimer    ,logEnabled  ,
    ANY_Event       ,Rien              ,logDisabled ,
};
const State logEnabled [ ] =
{
    logPrintEvent   ,printLogPrescaled ,logEnabled  ,
    logPauseEvent   ,logUpdateTimer    ,logPaused   ,
    logDisableEvent ,freeLogTimer      ,logDisabled ,
    ANY_Event       ,Rien              ,logEnabled  ,
};
const State logPaused  [ ] =
{
    logPauseEvent   ,logUpdateTimer    ,logPaused   ,
    logDisableEvent ,freeLogTimer      ,logDisabled ,
    logUnpauseEvent ,Rien              ,logEnabled  ,
    ANY_Event       ,Rien              ,logPaused   ,
};


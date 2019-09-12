#include "driverlib.h"
#include "device.h"
#include "fcl.h"
#include "scia.h"
#include "sm.h"
#include "events.h"
#include "log.h"
#include "pid_.h"
#include "eqep_.h"
#include "position.h"

const State
   logEnabled       [ ];

bool              logEnable          = false;
uint32_t          logTicker          = 0    ;
uint16_t          logPrescaler       = 500  ; // Speed loop pre scalar
uint16_t          logCount           = 1    ; // Speed loop counter
const State*      logSm=logEnabled;

const State**     logger ( void ) { return &logSm; }

void printLogPrescaled(void)
{
   if(++logCount >= logPrescaler) {
      logCount = 0;
      logTicker+=logPrescaler;
      printLog();
   }
}

void printLog(void)
{
   sciPrintf("%f %f %f %f %f %f %f\r\n",logTicker*T,
         getPosAbs      ( ),     //posicion pedida de referencia
         getPiPosFbk    ( ),     //posicion que consigo
         getPidSpeedRef ( ),     //velocidad de referencia, que puede ser fija en el caso de control de speed o sale del pi de posicion
         getSpeed1Speed ( ),     //velocidad que consigo
         getPiIqRef     ( ),     //valor de referencia de iq que puede ser fijo en el caso de control de torque o sale del pid de speed
         getPiIqFbk     ( )      //torque conseguido
         );
}
void sendPrintLogEvent(void)
{
   if (logEnable==true)
      sendEvent(printLogEvent,logger());
}
void     setLogEnable    ( void      ) { logEnable    = true ;}
void     setLogDisable   ( void      ) { logEnable    = false;}
void     setLogPrescaler ( int32_t p ) { logPrescaler = p    ;}
int32_t  getLogPrescaler ( void      ) { return logPrescaler ;}

const State logEnabled [ ] =
{
    printLogEvent ,printLogPrescaled ,logEnabled ,
    ANY_Event     ,Rien              ,logEnabled ,
};

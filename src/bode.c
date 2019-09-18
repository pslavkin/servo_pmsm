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
#include "bode.h"

bode_t bode    = {
   .posAcc    = 0 ,
   .speedAcc  = 0 ,
   .torqueAcc = 0 ,
   .posRms    = 0 ,
   .speedRms  = 0 ,
   .torqueRms = 0 ,
};

void printBode(void)
{
   sciPrintf("%f %f %f %f %f %f %f\r\n",
         getWaveFrec    ( ), // frecuencia
         getBodePos     ( ), // posicion pedida de referencia
         getBodePos     ( ), // posicion pedida de referencia
         getBodeSpeed   ( ), // velocidad de referencia, que puede ser fija en el caso de control de speed o sale del pi de posicion
         getBodeSpeed   ( ), // velocidad de referencia, que puede ser fija en el caso de control de speed o sale del pi de posicion
         getBodeTorque  ( ), // valor de referencia de iq que puede ser fijo en el caso de control de torque o sale del pid de speed
         getBodeTorque  ( ) // valor de referencia de iq que puede ser fijo en el caso de control de torque o sale del pid de speed
         );
}
void bodePosAcc(float32_t p)
{
   float32_t a  = getPidPosFbk();
   bode.posAcc += a*a*p;
}
void calcBodePos  ( float32_t per ) 
{
   bode.posRms = sqrt(bode.posAcc/per);
   bode.posAcc = 0;
}
void bodeSpeedAcc(float32_t p)
{
   float32_t a    = getSpeed1Speed();
   bode.speedAcc += a*a*p;
}
void calcBodeSpeed  ( float32_t per ) 
{
   bode.speedRms = sqrt(bode.speedAcc/per);
   bode.speedAcc = 0;
}
void bodeTorqueAcc(float32_t p)
{
   float32_t s    = getPiIqFbk();
   bode.torqueAcc += s*s*p;
}
void calcBodeTorque  ( float32_t per ) 
{
   bode.torqueRms = sqrt(bode.torqueAcc/per);
   bode.torqueAcc = 0;
}

void calcBode( float32_t per )
{
   if(getLogBodeState()==true) {
      calcBodePos    (per );
      calcBodeSpeed  (per );
      calcBodeTorque (per );
   }
}
void bodeAcc(float32_t delta)
{
   if(getLogBodeState()==true) {
      bodePosAcc    ( delta );
      bodeSpeedAcc  ( delta );
      bodeTorqueAcc ( delta );
   }
}
float32_t getBodePos    ( void        ) { return bode.posRms   ;}
float32_t getBodeSpeed  ( void        ) { return bode.speedRms ;}
float32_t getBodeTorque ( void        ) { return bode.torqueRms;}

#include "driverlib.h"
#include "fcl.h"
#include "device.h"
#include "scia.h"
#include "adc.h"
#include "ramper_.h"
#include "position.h"
#include "wave.h"
#include "bode.h"
#include "swept.h"

swept_t swept={
   .enabled = false,
   .step    = 0.2,
   .init    = 0.2,
   .last    = 3,
   .per     = 2,
};

void        setSweptEnable ( void )
{
   setWavet                  ( 0          );
   setWaveFrecWoCompensation ( swept.init );
   swept.enabled=true;
}
void        setSweptDisable ( void )
{
   swept.enabled=false;
}
void        setSweptInit ( float32_t f ) { swept.init=f     ;}
void        setSweptLast ( float32_t f ) { swept.last=f     ;}
void        setSweptStep ( float32_t f ) { swept.step=f     ;}
void        setSweptPer  ( uint32_t p  ) { swept.per=p      ;}
float32_t   getSweptInit ( void        ) { return swept.init;}
float32_t   getSweptLast ( void        ) { return swept.last;}
float32_t   getSweptStep ( void        ) { return swept.step;}
uint32_t    getSweptPer  ( void        ) { return swept.per ;}

void sweptGenerator(void)
{
   if(swept.enabled==true) {
      if(getWavePeriods()>swept.per) {
         calcBode(swept.per*(1/getWaveFrec()));
         setWavet(0);
         if((getWaveFrec()+swept.step) < swept.last) {
            setWaveFrecWoCompensation(getWaveFrec()+swept.step);
         }
         else {
            setWaveFrecWoCompensation(swept.init);
         }
      }
   }
}


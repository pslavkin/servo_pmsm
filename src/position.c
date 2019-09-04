#include "driverlib.h"
#include "fcl.h"
#include "device.h"
#include "scia.h"
#include "adc.h"
#include "ramper_.h"
#include "position.h"

#define STEP_ANGLE 0.0002

pos_t pos={
   .dir          = CLOCK,
   .abs          = 0,
   .rel          = 0,
   .step         = STEP_ANGLE,
   .absMech      = 0,
   .absOffset    = 0, 
   .lastAbsMech  = 0,
   .frec         = 0.1,
   .sinOffset    = 0,
   .sinEnable    = false,
   .sinAmpWished = 1,
   .sinAmp       = 1,
   .wave         = SIN,
   .t            = 0,
};


void        setPosDir       ( enum POSDIR d  ) { pos.dir=d               ;}
float32_t   getPosRel       ( void           ) { return pos.rel          ;}
float32_t   getPosAbs       ( void           ) { return pos.abs          ;}
void        setPosAbs       ( float32_t abs  ) { pos.abs=abs             ;}
void        setPosStep      ( float32_t step ) { pos.step=step           ;}
float32_t   getPosStep      ( void           ) { return pos.step         ;}
void        setPosAbsOffset ( float32_t mech ) { pos.absOffset     = mech;}
void        setSinAmp       ( float32_t amp  ) 
{
   pos.sinAmpWished = amp;
   if(pos.sinEnable==false)
      pos.sinAmp = pos.sinAmpWished;
}
float32_t   getSinAmp       ( void           ) { return pos.sinAmp       ;}
void        setPosAbsMech   ( float32_t mech ) {
   pos.absMech     = mech;
   pos.lastAbsMech = mech;
}
float32_t   getPost       ( void        ) { return pos.t      ;}
float32_t   getPosAbsMech ( void        ) { return pos.absMech;}
void        setPosFrec    ( float32_t f )
{
   pos.t    = (pos.frec*pos.t)/f;
   pos.frec = f;
}
float32_t   getPosFrec    ( void        ) { return pos.frec   ;}

void incPos(void)
{
   pos.abs = pos.abs + ((pos.dir == CLOCK)?pos.step:(-pos.step));
   pos.rel = pos.abs - (float32_t)((int32_t)pos.abs);
   if(pos.rel < 0) pos.rel += 1.0;
}
void normalizeRelPos(float32_t abs)
{
   pos.rel = abs - (float32_t)((int32_t)abs);
   if(pos.rel < 0) pos.rel += 1.0;
}

void toggleSinGenerator(void)
{
   if(pos.sinEnable==false) {
      pos.t         = 0;
      pos.sinEnable = true;
      pos.sinOffset = pos.abs;
   }
   else
      pos.sinEnable = false;
   sciPrintf("sin generator=%s\r\n",pos.sinEnable?"on":"off");
}
void initSinOffset(void)
{
   pos.sinOffset = pos.abs;
   pos.t         = 0;
}

void setWave(enum WAVE w)
{
   pos.wave=w;
}

void sinPosGenerator(void)
{
   if(pos.sinEnable==true) {
      pos.t++;
      pos.sinAmp = ramper(pos.sinAmpWished,pos.sinAmp,0.00001);
      switch (pos.wave) {
         case SIN:
            pos.abs    = pos.sinAmp*sin(2.0*PI*pos.frec*pos.t*T)+pos.sinOffset;
            break;
         case STEP:
            pos.abs    = pos.sinAmp*((int32_t)(pos.frec*pos.t*T)%2-1) +pos.sinOffset;
            break;
      }
   }
}

void addPosAbsMech ( float32_t mech )
{
   float32_t diff;
   mech += pos.absOffset;
   diff  = mech-pos.lastAbsMech;
   if(diff<-0.5) diff=1.0+diff;
   else if(diff> 0.5) diff=diff-1.0;
   pos.lastAbsMech  = mech;
   pos.absMech     += diff;
}


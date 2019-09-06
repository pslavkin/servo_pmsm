#include "driverlib.h"
#include "fcl.h"
#include "device.h"
#include "scia.h"
#include "adc.h"
#include "ramper_.h"
#include "position.h"
#include "wave.h"
#include "eqep_.h"

wave_t wave={
   .dir       = CLOCK,
   .stepAngle = 0.0002,
   .frec      = 0.1,
   .offset    = 0,
   .enable    = false,
   .ampWished = 1,
   .amp       = 1,
   .shape     = SIN,
   .t         = 0,
   .p         = {
      .x0      = 0,
      .x1      = 0,
      .v0      = 0,
      .v1      = 0,
      .acc     = 0,
      .decc    = 0,
      .actualX = 0,
      .actualV = 0,
      .actualA = 0,
      .t       = 0,
      .period  = 0,
   }
};
void advanceWaveStep(void)
{
   setPosAbs( getPosAbs() + ((wave.dir == CLOCK)?wave.stepAngle:(-wave.stepAngle)));
}

void        setWaveDir       ( enum WAVE_DIR d ) { wave.dir       = d   ;}
void        setWaveStepAngle ( float32_t step  ) { wave.stepAngle = step;}
float32_t   getWaveStepAngle ( void            ) { return wave.stepAngle;}
void        setWaveAmp       ( float32_t amp   )
{
   wave.ampWished = amp;
   if(wave.enable==false)
      wave.amp = wave.ampWished;
}
float32_t   getWaveAmp  ( void        ) { return wave.amp;}
float32_t   getWavet    ( void        ) { return wave.t  ;}
void        setWaveFrec ( float32_t f )
{
   wave.t    = (wave.frec*wave.t)/f;
   wave.frec = f;
}
float32_t   getWaveFrec    ( void        ) { return wave.frec   ;}

void enableWave(void)
{
   wave.t      = 0;
   wave.enable = true;
   wave.offset = getPosAbs();
   sciPrintf("wave generator=on\r\n");
}
void disableWave(void)
{
   wave.enable = false;
   sciPrintf("wave generator=off\r\n");
}
void setWaveShape(enum SHAPE s)
{
   if(wave.shape!=s) {
      wave.shape=s;
      enableWave();
   }
   else 
      wave.shape=s;
}


void setAccelProfile(void)
{
   wave.p.x0      = getPosAbs();
   wave.p.x1      = wave.p.x0+30;
   wave.p.v0      = 0;
   wave.p.v1      = 200.0/((2*60*BASE_FREQ)/POLES);
   wave.p.acc     = 0.01;
   wave.p.decc    = 0.01;
   wave.p.actualX = wave.p.x0;
   wave.p.actualV = 0;
   wave.p.actualA = 0;
   wave.p.t       = 0;
   wave.p.period  = T;
   wave.p.state   = RISE;
   wave.p.deltaX = (wave.p.v1*wave.p.v1*KK)/(2*wave.p.decc);
}

void waveGenerator(void)
{
   if(wave.enable==true) {
      wave.t++;
      wave.amp = ramper(wave.ampWished,wave.amp,0.00001);
      switch (wave.shape) {
         case SIN:
            setPosAbs(wave.amp*sin(2.0*PI*wave.frec*wave.t*T)+wave.offset);
            break;
         case STEP:
            setPosAbs(wave.amp*(((int32_t)(wave.frec*wave.t*T)%2)?1:-1) +wave.offset);
            break;
         case RAMP:
            accel     ( &wave.p        );
            setPosAbs ( wave.p.actualX );
            break;
      }
   }
}

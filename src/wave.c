#include "driverlib.h"
#include "fcl.h"
#include "device.h"
#include "scia.h"
#include "adc.h"
#include "ramper_.h"
#include "position.h"
#include "wave.h"
#include "gcode.h"
#include "eqep_.h"
#include "swept.h"
#include "bode.h"

wave_t wave={
   .dir       = CLOCK,
   .stepAngle = 0.0002,
   .frec      = 0.5,
   .offset    = 0,
   .enabled   = true,
   .ampWished = 0.3,
   .amp       = 0.3,
   .shape     = GCODES,
   .t         = 0,
};
void advanceWaveStep(void)
{
   setPosAbs( getPosAbs() + ((wave.dir == CLOCK)?wave.stepAngle:(-wave.stepAngle)));
}

void        setWaveDir       ( enum WAVE_DIR_ENUM d ) { wave.dir       = d   ;}
void        setWaveStepAngle ( float32_t step       ) { wave.stepAngle = step;}
float32_t   getWaveStepAngle ( void                 ) { return wave.stepAngle;}
void        setWaveAmp       ( float32_t amp        )
{
   wave.ampWished = amp;
   if(wave.enabled==false)
      wave.amp = wave.ampWished;
}
float32_t   getWaveAmp  ( void        ) { return wave.amp;}
void        setWavet    ( uint32_t t  ) { wave.t=t       ;}
uint32_t    getWavet    ( void        ) { return wave.t  ;}
void        setWaveFrec ( float32_t f )
{
   wave.t    = (wave.frec*wave.t)/f;
   wave.frec = f;
}
void        setWaveFrecWoCompensation ( float32_t f )
{
   wave.frec = f;
}
float32_t   getWaveFrec ( void ) { return wave.frec;}

void enableWave(void)
{
   wave.t       = 0;
   wave.enabled = true;
   wave.offset  = getPosAbs();
   sciPrintf("wave generator=on\r\n");
}
void disableWave(void)
{
   wave.enabled = false;
   sciPrintf("wave generator=off\r\n");
}
void setWaveShape(enum SHAPE_ENUM s)
{
   if(wave.shape!=s) {
      wave.shape=s;
      enableWave();
   }
   else 
      wave.shape=s;
}

float32_t getWavePeriods(void)
{
   return wave.frec*wave.t*T;
}


void waveGenerator(void)
{
   if(wave.enabled==true) {
      sweptGenerator();
      wave.t++;
      wave.amp = ramper(wave.ampWished,wave.amp,WAVE_RAMP_STEP);
      switch (wave.shape) {
         case SIN:
            bodeAcc(T);
            switch(getControlType()) {
               case POS:
                  setPosAbs(wave.amp*sin(2.0*PI*wave.frec*wave.t*T)+wave.offset);
                  break;
               case SPEED:
                  setControlledSpeed(wave.amp*sin(2.0*PI*wave.frec*wave.t*T));
                  break;
               case TORQUE:
                  setControlledTorque(wave.amp*sin(2.0*PI*wave.frec*wave.t*T));
                  break;
               default:
                  break;
            }
            break;
         case STEP:
            switch(getControlType()) {
               case POS:
                  setPosAbs(wave.amp*(((int32_t)(wave.frec*wave.t*T)%2)?1:-1) +wave.offset);
                  break;
               case SPEED:
                  setControlledSpeed(wave.amp*(((int32_t)(2*wave.frec*wave.t*T)%2)?1:-1));
                  break;
               case TORQUE:
                  setControlledTorque(wave.amp*(((int32_t)(2*wave.frec*wave.t*T)%2)?1:-1));
                  break;
               default:
                  break;
            }
            break;
         case GCODES:
            advanceGcode();
            break;
         case STEP_DIR:
            break;
         default :
            sciPrintf("error default waveGenerator\r\n");
            break;
      }
   }
}


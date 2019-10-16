#ifndef WAVE
#define WAVE

#include "ramper_.h"

#define WAVE_RAMP_STEP 0.000020


enum WAVE_DIR_ENUM {
   CLOCK =0,
   ANTICLOCK
};
enum SHAPE_ENUM {
   SIN=0,
   STEP,
   GCODES,
   STEP_DIR
};
typedef struct wave_struct {
   enum WAVE_DIR_ENUM   dir      ;
   enum SHAPE_ENUM      shape    ;
   float32_t            stepAngle;
   float32_t            frec     ;
   float32_t            offset   ;
   bool                 enabled  ;
   float32_t            ampWished;
   float32_t            amp      ;
   uint32_t             t        ;
   int32_t              sym      ;
} wave_t;

void      advanceWaveStep           ( void                      );
void      setWaveDir                ( enum      WAVE_DIR_ENUM d );
void      setWaveStepAngle          ( float32_t step            );
float32_t getWaveStepAngle          ( void                      );
void      setWaveSym                ( int32_t  sym              );
int32_t   getWaveSym                (                           );
void      setWaveFrec               ( float32_t f               );
void      setWaveFrecWoCompensation ( float32_t f               );
float32_t getWaveFrec               ( void                      );
uint32_t  getWavet                  ( void                      );
void      setWavet                  ( uint32_t  t               );
float32_t getWavePeriods            ( void                      );
void      enableWave                ( void                      );
void      disableWave               ( void                      );
void      setWaveAmp                ( float32_t amp             );
float32_t getWaveAmp                ( void                      );
void      setWaveShape              ( enum      SHAPE_ENUM    s );
void      waveGenerator             ( void                      );

#endif


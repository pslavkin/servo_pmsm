#ifndef WAVE
#define WAVE

#include "ramper_.h"

enum WAVE_DIR_ENUM {
   CLOCK =0,
   ANTICLOCK
};
enum SHAPE_ENUM {
   SIN=0,
   STEP,
   GCODES
};
typedef struct wave_struct {
   enum WAVE_DIR_ENUM   dir      ;
   enum SHAPE_ENUM      shape    ;
   float32_t            stepAngle;
   float32_t            frec     ;
   float32_t            offset   ;
   float32_t            enable   ;
   float32_t            ampWished;
   float32_t            amp      ;
   uint32_t             t        ;
} wave_t;

void        advanceWaveStep  ( void              );
void        setWaveDir       ( enum WAVE_DIR_ENUM d   );
void        setWaveStepAngle ( float32_t step    );
float32_t   getWaveStepAngle ( void              );
void        setWaveFrec      ( float32_t f       );
float32_t   getWaveFrec      ( void              );
float32_t   getWavet         ( void              );
void        enableWave       ( void              );
void        disableWave      ( void              );
void        setWaveAmp       ( float32_t amp     );
float32_t   getWaveAmp       ( void              );
void        setWaveShape     ( enum SHAPE_ENUM s );
void        waveGenerator    ( void              );

#endif


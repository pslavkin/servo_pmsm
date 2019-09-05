#ifndef WAVE
#define WAVE

enum WAVE_DIR {
   CLOCK =0,
   ANTICLOCK
};
enum SHAPE {
   SIN=0,
   STEP
};
typedef struct wave_struct {
   enum WAVE_DIR dir      ;
   enum SHAPE    shape    ;
   float32_t     stepAngle;
   float32_t     frec     ;
   float32_t     offset   ;
   float32_t     enable   ;
   float32_t     ampWished;
   float32_t     amp      ;
   uint32_t      t        ;
} wave_t;

void        advanceWaveStep  ( void            );
void        setWaveDir       ( enum WAVE_DIR d );
void        setWaveStepAngle ( float32_t step  );
float32_t   getWaveStepAngle ( void            );
void        setWaveFrec      ( float32_t f     );
float32_t   getWaveFrec      ( void            );
float32_t   getWavet         ( void            );
void        enableWave       ( void            );
void        disableWave      ( void            );
void        setWaveAmp       ( float32_t amp   );
float32_t   getWaveAmp       ( void            );
void        setWaveShape     ( enum SHAPE s    );
void        waveGenerator    ( void            );


#endif


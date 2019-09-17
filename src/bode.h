#ifndef BODE
#define BODE

typedef struct bode_struct {
   float32_t    posAcc   ;
   float32_t    speedAcc ;
   float32_t    torqueAcc;
   float32_t    posRms   ;
   float32_t    speedRms ;
   float32_t    torqueRms;
} bode_t;

void      printBode      ( void            );
void      bodePosAcc     ( float32_t p     );
void      bodeSpeedAcc   ( float32_t p     );
void      bodeTorqueAcc  ( float32_t p     );
void      calcBodePos    ( float32_t per   );
void      calcBodeSpeed  ( float32_t per   );
void      calcBodeTorque ( float32_t per   );
void      calcBode       ( float32_t per   );
void      bodeAcc        ( float32_t delta );
float32_t getBodePos     ( void            );
float32_t getBodeSpeed   ( void            );
float32_t getBodeTorque  ( void            );

#endif


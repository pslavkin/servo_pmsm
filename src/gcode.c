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

accel_t p={
   .center  = 0,
   .x0      = 0,
   .x1      = 0,
   .v0      = 0,
   .v1      = 200.0/((2*60*BASE_FREQ)/POLES),
   .acc     = 0.01,
   .dec     = 0.01,
   .actualX = 0,
   .actualV = 0,
   .deltaX  = 0,
   .period  = T,
   .dir     = CLK,
   .state   = IDLE
};

void setGcodeG0  ( float32_t x1 )
{
   p.x0      = getPosAbs(); // este para cortar la funcion en 3 tramos, rise, const y fall
   p.actualX = p.x0;        // y este es el que va incrementeando
   p.x1      = x1;
   p.v0      = p.actualV;   // si lanzo otro g0 con uno en curso tomo la v actual

   if(p.x1<p.x0) {
      p.x1  = p.x0+(p.x0-p.x1);
      p.dir = ACLK;
   }
   else 
      p.dir=CLK;
   p.state   = RISE;
}
void      setGcodeF   ( float32_t f ) { p.v1 = f    / VXM;}
float32_t getGcodeF   ( void        ) { return p.v1 * VXM;}
void      setGcodeAcc ( float32_t a ) { p.acc=a          ;}
float32_t getGcodeAcc ( void        ) { return p.acc     ;}
void      setGcodeDec ( float32_t d ) { p.dec=d          ;}
float32_t getGcodeDec ( void        ) { return p.dec     ;}
float32_t getGcodeX0  ( void        ) { return p.x0      ;}
float32_t getGcodeX1  ( void        ) { return p.x1      ;}

void advanceGcode ( void ) { setPosAbs(accel(&p));}


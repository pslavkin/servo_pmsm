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
   .center =0,
   .x0     =0,
   .x1     =0,
   .v0     =0,
   .v1     =200.0/((2*60*BASE_FREQ)/POLES),
   .acc    =0.01,
   .dec   =0.01,
   .actualX=0,
   .actualV=0,
   .deltaX =0,
   .t      =0,
   .period =T,
   .dir    =CLK,
   .state  =IDLE
};

void setgcodeG0  ( float32_t x1 )
{
   p.center  = getPosAbs(); // este lo uso para hacer mirror
   p.x0      = p.center;    // este para cortar la funcion en 3 tramos, rise, const y fall
   p.actualX = p.x0;        // y este es el que va incrementeando
   p.x1      = x1;
   p.v0      = p.actualV;   // si lanzo otro g0 con uno en curso tomo la v actual
   p.t       = 0;
   p.deltaX  = (p.v1*p.v1*KK)/(2*p.dec);

   if(p.x1<p.x0) {
      p.x1  = p.x0+(p.x0-p.x1);
      p.dir = ACLK;
   }
   else 
      p.dir=CLK;
   p.state   = RISE;
}
void      setgcodeF   ( float32_t f ) { p.v1 = f/((2.0*60*BASE_FREQ)/POLES);}
float32_t getCodeF    ( void        ) { return p.v1                        ;}
void      setgcodeAcc ( float32_t a ) { p.acc=a                            ;}
float32_t getCodeAcc  ( void        ) { return p.acc                       ;}
void      setgcodeDec ( float32_t d ) { p.dec=d                            ;}
float32_t getCodeDec  ( void        ) { return p.dec                       ;}

void advanceGcode(void)
{
   setPosAbs(accel(&p));
}


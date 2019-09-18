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
#include "schedule.h"
#include "log.h"

accel_t p={
   .x0      = 0,
   .x1      = 0,
   .v0      = 0,
   .v1      = 200.0/VXM,
   .acc     = 0.01,
   .dec     = 0.01,
   .actualX = 0,
   .actualV = 0,
   .deltaX  = 0,
   .period  = T,
   .dir     = CLK,
   .state   = RISE
};

void setGcodeG0  ( float32_t x1 )/*{{{*/
{
   if(p.dir==CLK)
      p.x0 = p.x0 + p.actualX;
   else
      p.x0 = p.x0 - p.actualX;
   p.x1      = x1;
   p.actualX = 0;
   p.v0      = p.actualV;   // si lanzo otro g0 con uno en curso tomo la v actual
   if(p.x1>p.x0) {
      if(p.dir == CLK) {
         p.deltaX  = p.x1-p.x0;
         p.state   = RISE;
      }
      else
         p.state   = REVERSING;
   }
   else {
      if(p.dir == ACLK) {
         p.deltaX  = p.x0-p.x1;
         p.state   = RISE;
      }
      else
         p.state   = REVERSING;
   }
}/*}}}*/

void      setGcodeF         ( float32_t f ) { p.v1 = f    / VXM   ;}
float32_t getGcodeF         ( void        ) { return p.v1 * VXM   ;}
void      setGcodeAcc       ( float32_t a ) { p.acc=a             ;}
float32_t getGcodeAcc       ( void        ) { return p.acc        ;}
void      setGcodeDec       ( float32_t d ) { p.dec=d             ;}
float32_t getGcodeDec       ( void        ) { return p.dec        ;}
float32_t getGcodeX0        ( void        ) { return p.x0         ;}
void      setGcodeX02PosAbs ( void        ) { p.x0=getPosAbs()    ;}
float32_t getGcodeX1        ( void        ) { return p.x1         ;}
void      advanceGcode      ( void        ) { setPosAbs(accel(&p));}
void      rstGcode          ( void        )
                                            {
   p.x0      = 0   ;
   p.x1      = 0   ;
   p.v0      = 0   ;
   p.actualX = 0   ;
   p.actualV = 0   ;
   p.deltaX  = 0   ;
   p.dir     = CLK ;
   p.state   = RISE;
}
void      testIfStall      ( void        )
{
   if(p.actualV<0.01) {
      Free_Func_Schedule ( testIfStall );
      sendLogPauseEvent  (             );
      sciPrintf          ( "stall\r\n" );
   }
}
void      gcodeWait      ( void        )
{
   Update_Or_New_Periodic_Func_Schedule(10,testIfStall);
}

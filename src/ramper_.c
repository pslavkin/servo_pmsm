#include "driverlib.h"
#include "fcl.h"
#include "device.h"
#include "scia.h"
#include "adc.h"
#include "wave.h"
#include "ramper_.h"
#include "position.h"
#include "eqep_.h"

// slew programmable ramper
float32_t ramper(float32_t in, float32_t out, float32_t rampDelta)/*{{{*/
{
    float32_t err;

    err = in - out;

    if(err > rampDelta) {
        return(out + rampDelta);
    }
    else if(err < -rampDelta) {
        return(out - rampDelta);
    }
    else {
        return(in);
    }
}/*}}}*/

static inline float32_t x2Dec(accel_t* p)
{
   return  p->deltaX - ((p->actualV * p->actualV * VXS ) / ( 2.0 * p->dec ));
}

float32_t accel(accel_t* p)
{
   switch (p->state) {
      case RISE:
         if ( p->actualV < p->v1 && p->actualX < x2Dec(p) ) {
            p->actualV += p->acc     * p->period;
            p->actualX += p->actualV * p->period * VXS;
            break;                                      // mira donde te pongo el break!!
         }
         else {
            p->state  = CONST;
         }
      case CONST:
         if(p->actualX < x2Dec(p) ) {
            p->actualX += p->actualV * p->period * VXS;
            break;                                      // mira donde te pongo el break!!
         }
         else  {
            p->state = FALL;
         }
      case FALL:
         if ( p->actualV > 0) {
            p->actualV -= p->dec     * p->period      ;
            p->actualX += p->actualV * p->period * VXS;
            break;                                      // mira donde te pongo el break!!
         }
         else {
            p->state=REVERSING;
         }
      case REVERSING:
         if ( p->actualV > 0 ) {
            p->actualV -= p->dec     * p->period      ;
            p->actualX += p->actualV * p->period * VXS;
         }
         else {
            if(p->dir==CLK)
               p->x0 = p->x0 + p->actualX;
            else
               p->x0 = p->x0 - p->actualX;

            if(p->x1 > p->x0) {
               p->dir    = CLK;
               p->deltaX = p->x1-p->x0;
            }
            else {
               p->dir    = ACLK;
               p->deltaX = p->x0-p->x1;
            }
            p->state   = RISE;
            p->actualX = 0;
            p->v0      = p->actualV;
         }
         break;
      case IDLE:
         break;
   }
   if(p->dir==CLK)
      return p->x0 + p->actualX;
   else
      return p->x0 - p->actualX;
}



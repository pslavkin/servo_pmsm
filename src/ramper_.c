#include "driverlib.h"
#include "fcl.h"
#include "device.h"
#include "scia.h"
#include "adc.h"
#include "wave.h"
#include "ramper_.h"
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

static inline float32_t deltaX(float32_t v, float32_t dec) { return  (v * v * VXS ) / ( 2.0 * dec ); }

float32_t accel(accel_t* p)
{
   switch (p->state) {
      case RISE:
         if ( p->actualV < p->v1 && p->actualX < ( p->x1-deltaX(p->actualV,p->dec )) ) {
            p->actualV += p->acc     * p->period;
            p->actualX += p->actualV * p->period * VXS;
            break; // mira donde te pongo el break!!
         }
         else {
            p->state  = CONST;
         }
      case CONST:
         if(p->actualX < ( p->x1 - deltaX(p->actualV,p->dec) ) ) {
            p->actualX += p->actualV * p->period * VXS;
            break; // mira donde te pongo el break!!
         }
         else  {
            p->state = FALL;
         }
      case FALL:
         if ( p->actualV > 0 && p->actualX < p->x1 ) {
            p->actualV -= p->dec     * p->period      ;
            p->actualX += p->actualV * p->period * VXS;
            break; // mira donde te pongo el break!!
         }
         else {
            p->state=IDLE;
         }
      case IDLE:
         break;
   }
                   // sciPrintf("state=%i|x=%f|v=%f|x1=%f|t=%f\r\n",(int32_t)p->state,p->actualX,p->actualV,p->x1,p->t);
   if(p->dir==CLK)
         return p->actualX;
   else
         return p->x0-(p->actualX-p->x0);
}



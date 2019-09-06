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

float32_t accel(accel_t* p)
{
   switch (p->state) {
      case RISE:
         if ( p->actualV<p->v1 && p->actualX < (p->x1-p->deltaX)) {
            p->actualX = p->x0 + KK * (p->v0 *p->t + 0.5*p->acc*p->t*p->t);
            p->actualV = p->v0 + p->acc*p->t;
            break; //mira donde te pongo el break!!
         }
         else {
            p->v1     = p->actualV;
            p->x0     = p->actualX;
            p->deltaX = (p->v1*p->v1*KK)/(2*p->decc);
            p->t      = 0;
            p->state  = CONST;
         }
      case CONST:
         if(p->actualX < (p->x1-p->deltaX)) {
            p->actualX = p->x0 + KK * p->v1 *p->t;
            break; //mira donde te pongo el break!!
         }
         else  {
            p->x0    = p->actualX;
            p->t     = 0;
            p->state = FALL;
         }
      case FALL:
         if(p->actualV>0 && p->actualX<p->x1) {
            p->actualX = p->x0+KK * (p->v1*p->t-0.5*p->decc*p->t*p->t);
            p->actualV = p->v1-p->decc*p->t;
            break; //mira donde te pongo el break!!
         }
         else {
            p->state=IDLE;
         }
         break;
      case IDLE:
         break;
   }
//   sciPrintf("state=%i|x=%f|v=%f|x1=%f|t=%f\r\n",(int32_t)p->state,p->actualX,p->actualV,p->x1,p->t);
   p->t+=p->period;
   if(p->dir==CLK)
         return p->actualX;
   else
         return p->center-(p->actualX-p->center);
}



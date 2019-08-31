#include "driverlib.h"
#include "fcl.h"
#include "device.h"
#include "scia.h"
#include "adc.h"
#include "ramper_.h"
#include "position.h"

// Variables for position reference generation and control
float32_t   posArray[]  = {1, 0, 2, 0};
float32_t   posCntr     = 0;
float32_t   posSlewRate = 0.002;
int16_t     posPtrMax   = 4;
int16_t     posPtr      = 0;

uint16_t  posDir     = 0;
float32_t absPos  = 0;
float32_t relPos = 0;
#define STEP_ANGLE 0.001


void stepPos(void)
{
   if (posDir==0) {
      absPos+=STEP_ANGLE;
   }
   else  {
      absPos-=STEP_ANGLE;
   }
   relPos = absPos - (float32_t)((int32_t)absPos);

   // Rolling in angle within 0 to 1pu
   if(relPos < 0) {
      relPos += 1.0;
   }
}

// Reference Position Generator for position loop
float32_t refPosGen(float32_t out)/*{{{*/
{
    float32_t in = posArray[posPtr];

    out = ramper(in, out, posSlewRate);

    if(in == out) {
        if(++posCntr > 1000) {
            posCntr = 0;
            if(++posPtr >= posPtrMax) {
                posPtr = 0;
            }
            sciPrintf("in pos=%f\r\n",posArray[posPtr]);
        }
    }
    return(out);
}/*}}}*/




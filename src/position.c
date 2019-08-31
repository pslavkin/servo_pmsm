#include "driverlib.h"
#include "fcl.h"
#include "device.h"
#include "scia.h"
#include "adc.h"
#include "ramper_.h"
#include "position.h"

// Variables for position reference generation and control
float32_t   posArray[]  = {1.5, -1.5, 2.5, -2.5};
float32_t   posCntr     = 0;
float32_t   posSlewRate = 0.002;
int16_t     posPtrMax   = 4;
int16_t     posPtr      = 0;

// Reference Position Generator for position loop
float32_t refPosGen(float32_t out)/*{{{*/
{
    float32_t in = posArray[posPtr];

    out = ramper(in, out, posSlewRate);
 //   out=in;

//    if(in == out) {
        if(++posCntr > 5000) {
            posCntr = 0;
            if(++posPtr >= posPtrMax) {
                posPtr = 0;
            }
            sciPrintf("in pos=%f\r\n",posArray[posPtr]);
        }
 //   }
    return(out);
}/*}}}*/

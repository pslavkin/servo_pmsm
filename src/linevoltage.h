#ifndef LINEVOLTAGE
#define LINEVOLTAGE

#include "fcl.h"

float32_t     readFclVdc ( void );
inline void getVdc(void)/*{{{*/
{
    float32_t vdc;

    vdc = ((int32_t)SDFM_getFilterData(SDFM1_BASE, SDFM_FILTER_3) >> 16) * SD_VOLTAGE_SENSE_SCALE;
    if(vdc < 1.0) {
        vdc = 1.0;
    }
    FCL_params.Vdcbus = vdc;
}/*}}}*/

#endif


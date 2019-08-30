#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
#include "schedule.h"
#include "scia.h"
#include "overcurrent.h"
#include "opt.h"
#include "fcl.h"

// Read and update DC BUS voltage for FCL to use
float32_t getVdc(void)/*{{{*/
{
    float32_t vdc;

    vdc = ((int32_t)SDFM_getFilterData(SDFM1_BASE, SDFM_FILTER_3) >> 16) * SD_VOLTAGE_SENSE_SCALE;
    if(vdc < 1.0) {
        vdc = 1.0;
    }
    return(vdc);
}/*}}}*/

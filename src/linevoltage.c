#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
#include "schedule.h"
#include "scia.h"
#include "overcurrent.h"
#include "linevoltage.h"
#include "opt.h"
#include "fcl.h"


float32_t                 readFclVdc ( void ) { return FCL_params.Vdcbus    ;}

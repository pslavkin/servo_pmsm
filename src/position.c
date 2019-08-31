#include "driverlib.h"
#include "fcl.h"
#include "device.h"
#include "scia.h"
#include "adc.h"
#include "ramper_.h"
#include "position.h"

#define STEP_ANGLE 0.001

pos_t pos={CLOCK,0,0,STEP_ANGLE};

void        setPosDir  ( enum POSDIR d  ) { pos.dir=d      ;}
float32_t   getPosRel  ( void           ) { return pos.rel ;}
float32_t   getPosAbs  ( void           ) { return pos.abs ;}
void        setPosStep ( float32_t step ) { pos.step=step  ;}
float32_t   getPosStep ( void           ) { return pos.step;}

void incPos(void)
{
   pos.abs = pos.abs + ((pos.dir == CLOCK)?pos.step:(-pos.step));
   pos.rel = pos.abs - (float32_t)((int32_t)pos.abs);
   if(pos.rel < 0) pos.rel += 1.0;
}


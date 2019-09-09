#include "driverlib.h"
#include "fcl.h"
#include "device.h"
#include "scia.h"
#include "adc.h"
#include "ramper_.h"
#include "position.h"
#include "eqep_.h"

pos_t pos={
   .abs          = 0,
   .absOffset    = 0,
   .absMech      = 0,
   .lastAbsMech  = 0,
};

void rstPosAbs ( void )
{
   setPosAbsOffset ( 0 );
   setPosAbs       ( 0 );
   setPosAbsMech   ( 0 );
}
void        setPosAbsOffset ( float32_t mech ) { pos.absOffset = mech;}
void        setPosAbs       ( float32_t abs  ) { pos.abs       = abs ;}
void        setPosAbsMech   ( float32_t mech )
{
   pos.absMech     = mech;
   pos.lastAbsMech = mech;
}

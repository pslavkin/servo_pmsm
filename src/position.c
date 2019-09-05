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

void        setPosAbsOffset ( float32_t mech ) { pos.absOffset = mech;}
float32_t   getPosAbs       ( void           ) { return pos.abs      ;}
void        setPosAbs       ( float32_t abs  ) { pos.abs       = abs ;}
float32_t   getPosAbsMech   ( void           ) { return pos.absMech  ;}
void        setPosAbsMech   ( float32_t mech )
{
   pos.absMech     = mech;
   pos.lastAbsMech = mech;
}

void addPosAbsMech ( float32_t mech )
{
   float32_t diff;
   mech += pos.absOffset;
   diff  = mech-pos.lastAbsMech;
   if(diff<-0.5)
      diff=1.0+diff;
   else 
      if(diff> 0.5)
         diff=diff-1.0;
   pos.lastAbsMech  = mech;
   pos.absMech     += diff;
}

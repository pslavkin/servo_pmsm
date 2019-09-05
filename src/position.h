#ifndef POSITION
#define POSITION

typedef struct pos_struct {
   float32_t    abs;
   float32_t    absOffset;
   float32_t    absMech;
   float32_t    lastAbsMech;
} pos_t;
extern pos_t pos;

void                       incPos          ( void           )                 ;
void                       setPosAbs       ( float32_t abs  )                 ;
void                       setPosAbsMech   ( float32_t mech )                 ;
void                       setPosAbsOffset ( float32_t mech )                 ;
static inline float32_t    getPosAbs       ( void           ) { return pos.abs;}
static inline float32_t    getPosAbsMech   ( void           ) { return pos.absMech  ;}
static inline void         addPosAbsMech   ( float32_t mech )
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
#endif


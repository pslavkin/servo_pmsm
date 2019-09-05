#ifndef POSITION
#define POSITION

typedef struct pos_struct {
   float32_t    abs;
   float32_t    absOffset;
   float32_t    absMech;
   float32_t    lastAbsMech;
} pos_t;

void        incPos             ( void           );
float32_t   getPosAbs          ( void           );
void        setPosAbs          ( float32_t abs  );
float32_t   getPosAbsMech      ( void           );
void        setPosAbsMech      ( float32_t mech );
void        addPosAbsMech      ( float32_t mech );
void        setPosAbsOffset    ( float32_t mech );

#endif


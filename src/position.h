#ifndef POSITION
#define POSITION

enum POSDIR {
   CLOCK =0,
   ANTICLOCK
};
typedef struct pos_struct {
   enum POSDIR  dir;
   float32_t    abs;
   float32_t    rel;
   float32_t    step;
   float32_t    absMech;
   float32_t    lastAbsMech;
   float32_t    frec;
} pos_t;

extern void       incPos          ( void           );
extern void       setPosDir       ( enum POSDIR d  );
extern float32_t  getPosRel       ( void           );
extern float32_t  getPosAbs       ( void           );
extern void       setPosStep      ( float32_t step );
extern float32_t  getPosStep      ( void           );
extern float32_t  getPosAbsMech   ( void           );
extern void       setAbsMech      ( float32_t mech );
float32_t         getPosAbs       ( void           );
void              sinPosGenerator ( void           );
void              setPosFrec    ( float32_t f    )  ;
float32_t         getPosFrec    ( void           )  ;


#endif


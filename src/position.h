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
} pos_t;

extern void       incPos     ( void           );
extern void       setPosDir  ( enum POSDIR d  );
extern float32_t  getPosRel  ( void           );
extern float32_t  getPosAbs  ( void           );
extern void       setPosStep ( float32_t step );
extern float32_t  getPosStep ( void           );


#endif


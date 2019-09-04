#ifndef POSITION
#define POSITION

enum POSDIR {
   CLOCK =0,
   ANTICLOCK
};
enum WAVE {
   SIN=0,
   STEP
};
typedef struct pos_struct {
   enum POSDIR  dir;
   enum WAVE    wave;
   float32_t    abs;
   float32_t    rel;
   float32_t    step;
   float32_t    absMech;
   float32_t    absOffset;
   float32_t    lastAbsMech;
   float32_t    frec;
   float32_t    sinOffset;
   float32_t    sinEnable;
   float32_t    sinAmpWished;
   float32_t    sinAmp;
   uint32_t     t;
} pos_t;

void        incPos             ( void           );
void        setPosDir          ( enum POSDIR d  );
float32_t   getPosRel          ( void           );
float32_t   getPosAbs          ( void           );
void        setPosAbs          ( float32_t abs  );
void        setPosStep         ( float32_t step );
float32_t   getPosStep         ( void           );
float32_t   getPosAbsMech      ( void           );
void        setPosAbsMech      ( float32_t mech );
void        addPosAbsMech      ( float32_t mech );
float32_t   getPosAbs          ( void           );
void        initSinOffset      ( void           );
void        sinPosGenerator    ( void           );
void        setPosFrec         ( float32_t f    );
float32_t   getPosFrec         ( void           );
void        setPosAbsOffset    ( float32_t mech );
float32_t   getPost            ( void           );
void        toggleSinGenerator ( void           );
void        setSinAmp          ( float32_t amp  );
float32_t   getSinAmp          ( void           );
void        setWave            ( enum WAVE w    );


#endif


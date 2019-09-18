#ifndef SWEPT
#define SWEPT


typedef struct swept_struct {
   bool                 enabled ;
   bool                 incDec ;
   float32_t            step;
   uint32_t             per;
   float32_t            init;
   float32_t            last;
} swept_t;

void        sweptGenerator  ( void        );
void        setSweptEnable  ( void        );
void        setSweptDisable ( void        );
void        setSweptInit    ( float32_t f );
void        setSweptLast    ( float32_t f );
float32_t   getSweptInit    ( void        );
float32_t   getSweptLast    ( void        );
float32_t   getSweptStep    ( void        );
void        setSweptStep    ( float32_t f );
uint32_t    getSweptPer     ( void        );
void        setSweptPer     ( uint32_t p  );

#endif


#ifndef POSITION
#define POSITION

extern uint16_t  posDir;
extern float32_t absPos;
extern float32_t relPos;
extern void stepPos(void);

float32_t refPosGen(float32_t out);
extern float32_t   posArray[]  ;
extern float32_t   posCntr     ;
extern float32_t   posSlewRate ;
extern int16_t     posPtrMax   ;
extern int16_t     posPtr      ;

#endif


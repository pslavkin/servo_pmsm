#ifndef CLARKEPARK
#define CLARKEPARK

#include "clarke.h"
#include "park.h"
#include "ipark.h"

extern CLARKE clarkeData;
extern PARK   parkData  ;
extern IPARK  iparkData ;
extern SVGEN  svgenData ;

void lems2Iqd ( float angle );
void iqd2Pwm(float iq, float id);
#endif


#ifndef EQEP_
#define EQEP_
#include "F2837xD_device.h"
#include "qep_defs.h"

// Variables for Position Sensor Suite
extern float32_t posEncElecTheta[6];
extern float32_t posEncMechTheta[6];
extern float32_t alignCntr         ;
extern float32_t alignCnt          ;
extern float32_t IdRef_start       ;
extern float32_t IdRef_run         ;
extern QEP             qep1;

void     initQep       ( void );
float32  qep1ElecTheta ( void );
float32  qep1MechTheta ( void );

#endif

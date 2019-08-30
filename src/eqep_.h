#ifndef EQEP_
#define EQEP_
#include "F2837xD_device.h"
#include "qep_defs.h"

extern QEP             qep1;

void     initQep       ( void );
float32  qep1ElecTheta ( void );
float32  qep1MechTheta ( void );

#endif

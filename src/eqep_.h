#ifndef EQEP_
#define EQEP_
#include "F2837xD_device.h"
#include "qep_defs.h"
#include "speed_fr.h"

// Variables for Position Sensor Suite
extern QEP             qep1;
extern SPEED_MEAS_QEP  speed1;

void     initQep         ( void   );
float32  qep1ElecTheta   ( void   );
float32  qep1MechTheta   ( void   );
void     setQepSimEnable ( bool e );
bool     getQepSimEnable ( void   );

#endif

#ifndef EQEP_
#define EQEP_

#include "F2837xD_device.h"
#include "qep_defs.h"
#include "speed_fr.h"

// Variables for Position Sensor Suite
extern QEP             qep1;
extern SPEED_MEAS_QEP  speed1;

void               initQep         ( void   );

static inline float32     qep1ElecTheta  ( void ) { return qep1.ElecTheta;}
static inline float32     qep1MechTheta  ( void ) { return qep1.MechTheta;}
static inline float32_t   getSpeed1Speed ( void ) { return speed1.Speed  ;}

#endif

#ifndef PID
#define PID

#include "clarke.h"
#include "park.h"
#include "ipark.h"
//extern PIDREG3         pid_pos;
extern PID_CONTROLLER      pid_pos ;
extern PID_CONTROLLER      pid_spd;
extern PID_CONTROLLER      pid_iq;
extern FCL_PIController_t  pi_id, pi_iq;

extern CLARKE clarkeData;
extern PARK   parkData  ;
extern IPARK  iparkData ;
extern SVGEN  svgenData ;

void      initPid        ( void                    );
void      printPid       ( PID_CONTROLLER*     pid );
void      printFclPi     ( FCL_PIController_t* pi  );
void      printPi        ( PI_CONTROLLER*      pi  );
float32_t getPidIqFbk    ( void                    );
float32_t getPidIqRef    ( void                    );
float32_t getPidPosFbk   ( void                    );
float32_t getPidSpeedRef ( void                    );
void lems2Iqd ( float angle );
void iqd2Pwm(float iq, float id);
void Cmd_writePid(uint16_t argc, char *argv[],PID_CONTROLLER* p);
#endif


#ifndef PID
#define PID

extern PIDREG3         pid_pos;
extern PI_CONTROLLER   pi_pos ;
extern PID_CONTROLLER  pid_spd;
extern FCL_PIController_t   pi_id, pi_iq;

void     initPid          ( void );

#endif


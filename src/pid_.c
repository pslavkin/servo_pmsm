#include "driverlib.h"
#include "fcl.h"
#include "device.h"
#include "scia.h"
#include "adc.h"
#include "pid_.h"

// Instance PI(D) regulators to regulate the d and q  axis currents, speed and position
PIDREG3         pid_pos = PIDREG3_DEFAULTS;// (optional - for eval)
PI_CONTROLLER   pi_pos  = PI_CONTROLLER_DEFAULTS;
PID_CONTROLLER  pid_spd = {PID_TERM_DEFAULTS, PID_PARAM_DEFAULTS, PID_DATA_DEFAULTS};

#pragma DATA_SECTION(pi_iq,   "ClaData")
FCL_PIController_t   pi_id, pi_iq;

// PI Controller Configuration
void initPid(void)/*{{{*/
{
    // Initialize the PI module for position
    pi_pos.Kp   = 1.0;   // 10.0;
    pi_pos.Ki   = 0.001; // T*speedLoopPrescaler/0.3;
    pi_pos.Umax = 1.0;
    pi_pos.Umin = -1.0;

    // Initialize the PID module for position (alternative option for eval)
    pid_pos.Ref       = 0;
    pid_pos.Fdb       = 0;
    pid_pos.OutMin    = -0.5;
    pid_pos.OutMax    = 0.5;
    pid_pos.Out       = 0;

    pid_pos.Kp        = 1.0;
    pid_pos.Ki        = 0;
    pid_pos.Kd        = 0;
    pid_pos.Kc        = 0.9;

    pid_pos.Up1       = 0;
    pid_pos.Up        = 0;
    pid_pos.Ui        = 0;
    pid_pos.Ud        = 0;
    pid_pos.SatErr    = 0;
    pid_pos.OutPreSat = 0;

    // Initialize the PID module for speed
    pid_spd.param.Kp   = 1.0;
    pid_spd.param.Ki   = 0.001;
    pid_spd.param.Kd   = 0.0;
    pid_spd.param.Kr   = 1.0;
    pid_spd.param.Umax = 0.95;
    pid_spd.param.Umin = -0.95;

    // Init PI module for ID loop
    pi_id.Kp      = 1.0;//LS * CUR_LOOP_BW;
    pi_id.Ki      = T/0.04;   //(RS * T) * CUR_LOOP_BW;
    pi_id.Kerr    = (pi_id.Ki*0.5) + pi_id.Kp,
    pi_id.KerrOld = (pi_id.Ki*0.5) - pi_id.Kp;
    pi_id.Umax    = 0.5 * maxModIndex;
    pi_id.Umin    = -0.5 * maxModIndex;
    pi_id.ref     = 0;
    pi_id.err     = 0;
    pi_id.out     = 0;

    // Init PI module for IQ loop
    pi_iq.Kp      = pi_id.Kp;
    pi_iq.Ki      = pi_id.Ki;
    pi_iq.Kerr    = (pi_iq.Ki*0.5) + pi_iq.Kp,
    pi_iq.KerrOld = (pi_iq.Ki*0.5) - pi_iq.Kp;
    pi_iq.Umax    = 0.8 * maxModIndex;
    pi_iq.Umin    = -0.8 * maxModIndex;
    pi_iq.ref     = 0;
    pi_iq.err     = 0;
    pi_iq.out     = 0;
}/*}}}*/


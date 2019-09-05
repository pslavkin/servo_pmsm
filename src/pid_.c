#include "driverlib.h"
#include "fcl.h"
#include "device.h"
#include "scia.h"
#include "adc.h"
#include "fcl_pi.h"
#include "pid_.h"

// Instance PI(D) regulators to regulate the d and q  axis currents, speed and position
//PIDREG3         pid_pos = PIDREG3_DEFAULTS;// (optional - for eval)
PI_CONTROLLER   pi_pos,pi_pos_def    = PI_CONTROLLER_DEFAULTS;
PID_CONTROLLER  pid_spd, pid_spd_def = {PID_TERM_DEFAULTS, PID_PARAM_DEFAULTS, PID_DATA_DEFAULTS};

#pragma DATA_SECTION(pi_iq,   "ClaData")
FCL_PIController_t   pi_id, pi_iq;

// PI Controller Configuration
void initPid(void)/*{{{*/
{
    pi_pos = pi_pos_def;
    // Initialize the PI module for position
    pi_pos.Kp   = 3;      // 1.0;   // 10.0;
    pi_pos.Ki   = 0.0015; // T*speedLoopPrescaler/0.3;
    pi_pos.Umax = 0.5;
    pi_pos.Umin = -0.5;

//    // Initialize the PID module for position (alternative option for eval)
//    pid_pos.Ref       = 0;
//    pid_pos.Fdb       = 0;
//    pid_pos.OutMin    = -0.5;
//    pid_pos.OutMax    = 0.5;
//    pid_pos.Out       = 0;
//
//    pid_pos.Kp        = 1.0;
//    pid_pos.Ki        = 0;
//    pid_pos.Kd        = 0;
//    pid_pos.Kc        = 0.9;
//
//    pid_pos.Up1       = 0;
//    pid_pos.Up        = 0;
//    pid_pos.Ui        = 0;
//    pid_pos.Ud        = 0;
//    pid_pos.SatErr    = 0;
//    pid_pos.OutPreSat = 0;
//
    // Initialize the PID module for speed
    pid_spd = pid_spd_def;
    pid_spd.param.Kp   = 3.0;
    pid_spd.param.Ki   = 0.0015;
    pid_spd.param.Kd   = 0.0015;
    pid_spd.param.Umax = 0.5;//0.95;
    pid_spd.param.Umin = -0.5;//-0.95;
    pid_spd.term.c1    = 1.0;
    pid_spd.term.c2    = 1.0;

    // Init PI module for ID loop
    pi_id.Kp      = 1.0;//LS * CUR_LOOP_BW;
    pi_id.Ki      = T/0.04;   //(RS * T) * CUR_LOOP_BW;
    pi_id.Kerr    = (pi_id.Ki*0.5) + pi_id.Kp,
    pi_id.KerrOld = (pi_id.Ki*0.5) - pi_id.Kp;
    pi_id.Umax    = 0.5 * maxModIndex;  //0.5
    pi_id.Umin    = -0.5 * maxModIndex; //0.5
    pi_id.ref     = 0;
    pi_id.err     = 0;
    pi_id.out     = 0;

    // Init PI module for IQ loop
    pi_iq.Kp      = 1.0;    // LS * CUR_LOOP_BW;
    pi_iq.Ki      = T/0.04; // (RS * T) * CUR_LOOP_BW;
    pi_iq.Kerr    = (pi_iq.Ki*0.5) + pi_iq.Kp,
    pi_iq.KerrOld = (pi_iq.Ki*0.5) - pi_iq.Kp;
    pi_iq.Umax    = 0.8 * maxModIndex;
    pi_iq.Umin    = -0.8 * maxModIndex;
    pi_iq.ref     = 0;
    pi_iq.err     = 0;
    pi_iq.out     = 0;
}/*}}}*/
void printFclPi(FCL_PIController_t* pi)/*{{{*/
{
   sciPrintf (
         "ref       =%f\r\n"  // Input: reference set-point
         "fbk       =%f\r\n"  // Input: feedback
         "err       =%f\r\n"  // Output : error
         "out       =%f\r\n"  // Output: controller output
         "carryOver =%f\r\n"  // Output : carry over for next iteration
         "Kp        =%f\r\n"  // Parameter: proportional loop gain
         "Ki        =%f\r\n"  // Parameter: integral gain
         "Kerr      =%f\r\n"  // Parameter: gain for latest error
         "KerrOld   =%f\r\n"  // Parameter: gain for prev error
         "Umax      =%f\r\n"  // Parameter: upper saturation limit
         "Umin      =%f\r\n", // Parameter: lower saturation limit
         pi->ref       ,
         pi->fbk       ,
         pi->err       ,
         pi->out       ,
         pi->carryOver ,
         pi->Kp        ,
         pi->Ki        ,
         pi->Kerr      ,
         pi->KerrOld   ,
         pi->Umax      ,
         pi->Umin
         );
}/*}}}*/
void printPi(PI_CONTROLLER* pi)/*{{{*/
{
   sciPrintf (
         "Ref   =%f\r\n" // Input: reference set-point
         "Fbk   =%f\r\n" // Input: feedback
         "Out   =%f\r\n" // Output: controller output
         "Kp    =%f\r\n" // Parameter: proportional loop gain
         "Ki    =%f\r\n" // Parameter: integral gain
         "Umax  =%f\r\n" // Parameter: upper saturation limit
         "Umin  =%f\r\n" // Parameter: lower saturation limit
         "up    =%f\r\n" // Data: proportional term
         "ui    =%f\r\n" // Data: integral term
         "v1    =%f\r\n" // Data: pre-saturated controller output
         "i1    =%f\r\n" // Data: integrator storage: ui(k-1)
         "w1    =%f\r\n", // Data: saturation record: [u(k-1) - v(k-1)]
         pi->Ref,
         pi->Fbk,
         pi->Out,
         pi->Kp,
         pi->Ki,
         pi->Umax,
         pi->Umin,
         pi->up,
         pi->ui,
         pi->v1,
         pi->i1,
         pi->w1
            );
}/*}}}*/
void printPid(PID_CONTROLLER* pid)/*{{{*/
{
   sciPrintf (
         "PID terminals\r\n"
         "Ref   =%f\r\n"            // Input: reference set-point
         "Fbk   =%f\r\n"            // Input: feedback
         "Out   =%f\r\n"            // Output: controller output
         "c1    =%f\r\n"            // Internal: derivative filter coefficient 1
         "c2    =%f\r\n",           // Internal: derivative filter coefficient 2
         pid->term.Ref,
         pid->term.Fbk,
         pid->term.Out,
         pid->term.c1,
         pid->term.c2
         );

   sciPrintf (
         "PID parameters\r\n"
         "Kr          =%f\r\n"  // Parameter: reference set-point weighting
         "Kp          =%f\r\n"  // Parameter: proportional loop gain
         "Ki          =%f\r\n"  // Parameter: integral gain
         "Kd          =%f\r\n"  // Parameter: derivative gain
         "Km          =%f\r\n"  // Parameter: derivative weighting
         "Umax        =%f\r\n"  // Parameter: upper saturation limit
         "Umin        =%f\r\n", // Parameter: lower saturation limit
         pid->param.Kr,
         pid->param.Kp,
         pid->param.Ki,
         pid->param.Kd,
         pid->param.Km,
         pid->param.Umax,
         pid->param.Umin
         );

   sciPrintf (
         "PID data\r\n"
         "up =%f\r\n"            // Data: proportional term
         "ui =%f\r\n"            // Data: integral term
         "ud =%f\r\n"            // Data: derivative term
         "v1 =%f\r\n"            // Data: pre-saturated controller output
         "i1 =%f\r\n"            // Data: integrator storage: ui(k-1)
         "d1 =%f\r\n"            // Data: differentiator storage: ud(k-1)
         "d2 =%f\r\n"            // Data: differentiator storage: d2(k-1)
         "w1 =%f\r\n",           // Data: saturation record: [u(k-1) - v(k-1)]
         pid->data.up,
         pid->data.ui,
         pid->data.ud,
         pid->data.v1,
         pid->data.i1,
         pid->data.d1,
         pid->data.d2,
         pid->data.w1
         );
}/*}}}*/

float32_t getPiIqFbk  ( void ) { return pi_iq.fbk  ;}
float32_t getPiPosFbk ( void ) { return pi_pos.Fbk ;}

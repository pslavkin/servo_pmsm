#include "driverlib.h"
#include "fcl.h"
#include "device.h"
#include "scia.h"
#include "adc.h"
#include "fcl_pi.h"
#include "ipark.h"
#include "clarke.h"
#include "park.h"
#include "eqep_.h"
#include "pid_.h"
#include "adc_.h"
#include "clarkepark.h"

PID_CONTROLLER       pid_pos;
PID_CONTROLLER       pid_spd;
PID_CONTROLLER       pid_iq; //pablo's iq implementation
//
//no se usan estos..estoy esperando deshacerme de fcl y vuelan
#pragma DATA_SECTION(pi_iq,   "ClaData")
FCL_PIController_t   pi_id, pi_iq;

void initPid(void)/*{{{*/
{
    // Initialize the PID module for position (alternative option for eval)
    pid_pos = (PID_CONTROLLER){PID_TERM_DEFAULTS, PID_PARAM_DEFAULTS, PID_DATA_DEFAULTS};
    pid_pos.param.Kp   = 18;
    pid_pos.param.Ki   = 0.0015;
    pid_pos.param.Kd   = 0.300;
    pid_pos.param.Kr   = 1.1000;
    pid_pos.param.Km   = 0.8000;
    pid_pos.param.Umax = 1;//0.95;
    pid_pos.param.Umin = -1;//-0.95;
    pid_pos.term.c1    = 1.0;
    pid_pos.term.c2    = 1.0;

    // Initialize the PID module for speed
    pid_spd = (PID_CONTROLLER){PID_TERM_DEFAULTS, PID_PARAM_DEFAULTS, PID_DATA_DEFAULTS};
    pid_spd.param.Kp   = 10;
    pid_spd.param.Ki   = 0.0006;
    pid_spd.param.Kd   = 1.0;
    pid_spd.param.Kr   = 1.1000;
    pid_spd.param.Km   = 0.6000;
    pid_spd.param.Umax = 0.95;//0.95;
    pid_spd.param.Umin = -0.95;//-0.95;
    pid_spd.term.c1    = 1.0;
    pid_spd.term.c2    = 1.0;

    // Initialize the PID module for IQ
    pid_iq            = (PID_CONTROLLER){PID_TERM_DEFAULTS, PID_PARAM_DEFAULTS, PID_DATA_DEFAULTS};
    pid_iq.param.Kp   = 2.2;
    pid_iq.param.Ki   = 0.5 ;
    pid_iq.param.Kd   = 0.5 ;
    pid_iq.param.Kr   = 1.0000;
    pid_iq.param.Km   = 0.5000;
    pid_iq.param.Umax = 0.9*maxModIndex;
    pid_iq.param.Umin = -0.9*maxModIndex;
    pid_iq.term.c1    = 1.0;
    pid_iq.term.c2    = 1.0;
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
         "Kp          =%f\r\n"  // Parameter: proportional loop gain
         "Ki          =%f\r\n"  // Parameter: integral gain
         "Kd          =%f\r\n"  // Parameter: derivative gain
         "Kr          =%f\r\n"  // Parameter: reference set-point weighting
         "Km          =%f\r\n"  // Parameter: derivative weighting
         "Umax        =%f\r\n"  // Parameter: upper saturation limit
         "Umin        =%f\r\n", // Parameter: lower saturation limit
         pid->param.Kp,
         pid->param.Ki,
         pid->param.Kd,
         pid->param.Kr,
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

float32_t getPidIqFbk    ( void ) { return pid_iq.term.Fbk ;}
float32_t getPidIqRef    ( void ) { return pid_iq.term.Ref ;}
float32_t getPidPosFbk   ( void ) { return pid_pos.term.Fbk;}
float32_t getPidSpeedRef ( void ) { return pid_spd.term.Ref;}
//--------------------------------------------------------
void Cmd_writePid(uint16_t argc, char *argv[],PID_CONTROLLER* p)
{
   if(argc>1 && (argv[1][0] != ',')) p->param.Kp   = atof(argv[1]);
   if(argc>2 && (argv[2][0] != ',')) p->param.Ki   = atof(argv[2]);
   if(argc>3 && (argv[3][0] != ',')) p->param.Kd   = atof(argv[3]);
   if(argc>4 && (argv[4][0] != ',')) p->param.Kr   = atof(argv[4]);
   if(argc>5 && (argv[5][0] != ',')) p->param.Km   = atof(argv[5]);
   if(argc>6 && (argv[6][0] != ',')) p->param.Umax = atof(argv[6]);
   if(argc>7 && (argv[7][0] != ',')) p->param.Umin = atof(argv[7]);
}

#include "driverlib.h"
#include "fcl.h"
#include "device.h"
#include "scia.h"
#include "adc.h"
#include "fcl_pi.h"
#include "pid_.h"
#include "adc_.h"

// Instance PI(D) regulators to regulate the d and q  axis currents, speed and position
//PIDREG3         pid_pos = PIDREG3_DEFAULTS;// (optional - for eval)
PID_CONTROLLER  pid_pos;
PID_CONTROLLER  pid_spd;
PID_CONTROLLER  pid_iq; //pablo's iq implementation

#pragma DATA_SECTION(pi_iq,   "ClaData")
FCL_PIController_t   pi_id, pi_iq;

// PI Controller Configuration
void initPid(void)/*{{{*/
{
    // Initialize the PI module for position
//    pi_pos      = (PI_CONTROLLER)PI_CONTROLLER_DEFAULTS;
//    pi_pos.Kp   = 2.1;      // 1.0;   // 10.0;
//    pi_pos.Ki   = 0.0001  ; // T*speedLoopPrescaler/0.3;
//    pi_pos.Umax = 1;//1;
//    pi_pos.Umin = -1;//-1;

//    // Initialize the PID module for position (alternative option for eval)
    pid_pos = (PID_CONTROLLER){PID_TERM_DEFAULTS, PID_PARAM_DEFAULTS, PID_DATA_DEFAULTS};
    pid_pos.param.Kp   = 4.5;
    pid_pos.param.Ki   = 0.007;
    pid_pos.param.Kd   = 1.500;
    pid_pos.param.Kr   = 1.1000;
    pid_pos.param.Km   = 1.0000;
    pid_pos.param.Umax = 1;//0.95;
    pid_pos.param.Umin = -1;//-0.95;
    pid_pos.term.c1    = 1.0;
    pid_pos.term.c2    = 1.0;

//
    // Initialize the PID module for speed
    pid_spd = (PID_CONTROLLER){PID_TERM_DEFAULTS, PID_PARAM_DEFAULTS, PID_DATA_DEFAULTS};
    pid_spd.param.Kp   = 3.5;
    pid_spd.param.Ki   = 0.015;
    pid_spd.param.Kd   = 4.0000;
    pid_spd.param.Kr   = 1.1000;
    pid_spd.param.Km   = 1.0000;
    pid_spd.param.Umax = 0.95;//0.95;
    pid_spd.param.Umin = -0.95;//-0.95;
    pid_spd.term.c1    = 1.0;
    pid_spd.term.c2    = 1.0;

    // Init PI module for ID loop
    pi_id = (FCL_PIController_t)FCL_PICONTROLLER_DEFAULTS;
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
    pi_iq = (FCL_PIController_t)FCL_PICONTROLLER_DEFAULTS;
    pi_iq.Kp      = 1.0;    // LS * CUR_LOOP_BW;
    pi_iq.Ki      = T/0.04; // (RS * T) * CUR_LOOP_BW;
    pi_iq.Kerr    = (pi_iq.Ki*0.5) + pi_iq.Kp,
    pi_iq.KerrOld = (pi_iq.Ki*0.5) - pi_iq.Kp;
    pi_iq.Umax    = 0.9 * maxModIndex;
    pi_iq.Umin    = -0.9 * maxModIndex;
    pi_iq.ref     = 0;
    pi_iq.err     = 0;
    pi_iq.out     = 0;
    //
    // Pablo IQ PID
    // Initialize the PID module for speed
    pid_iq            = (PID_CONTROLLER){PID_TERM_DEFAULTS, PID_PARAM_DEFAULTS, PID_DATA_DEFAULTS};
    pid_iq.param.Kp   = 1.0;
    pid_iq.param.Ki   = 0.1;
    pid_iq.param.Kd   = 0;
    pid_iq.param.Kr   = 1.0000;
    pid_iq.param.Km   = 1.0000;
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

float32_t getPiIqFbk     ( void ) { return pi_iq.fbk       ;}
float32_t getPiIqRef     ( void ) { return pi_iq.ref       ;}
float32_t getPidPosFbk   ( void ) { return pid_pos.term.Fbk ;}
float32_t getPidSpeedRef ( void ) { return pid_spd.term.Ref;}

//--------------------------------------------------------
#include "clarke.h"
#include "park.h"
#include "eqep_.h"

CLARKE clarkeData = CLARKE_DEFAULTS;
PARK   parkData   = PARK_DEFAULTS;
IPARK  iparkData  = IPARK_DEFAULTS;
SVGEN  svgenData  = SVGEN_DEFAULTS;

void Lems2Iq(void)
{
   clarkeData.As = readLemV();
   clarkeData.Bs = readLemW();
   runClarke(&clarkeData); //calculo con 2 corrientes, Cs queda implicita
   parkData.Alpha = clarkeData.Alpha;
   parkData.Beta  = clarkeData.Beta;
   parkData.Angle = qep1ElecTheta();
   parkData.Sine     = __sinpuf32(parkData.Angle);
   parkData.Cosine   = __cospuf32(parkData.Angle);
   runPark(&parkData);
   pid_iq.term.Ref=pi_iq.ref;
   pid_iq.term.Fbk=parkData.Qs;
}

void iq2Pwm(void)
{
   iparkData.Qs     = pid_iq.term.Out;
   iparkData.Ds     = 0;
   iparkData.Angle  = parkData.Angle;
   iparkData.Sine   = __sinpuf32(parkData.Angle);
   iparkData.Cosine = __cospuf32(parkData.Angle);
   runIPark(&iparkData);

   svgenData.Ualpha = iparkData.Alpha;
   svgenData.Ubeta  = iparkData.Beta;
   runSVGenDQ(&svgenData);

   EPWM_setCounterCompareValue(EPWM1_BASE, EPWM_COUNTER_COMPARE_A, (uint16_t)((INV_PWM_TICKS*svgenData.Tc) + INV_PWM_TICKS/2));
   EPWM_setCounterCompareValue(EPWM2_BASE, EPWM_COUNTER_COMPARE_A, (uint16_t)((INV_PWM_TICKS*svgenData.Ta) + INV_PWM_TICKS/2));
   EPWM_setCounterCompareValue(EPWM3_BASE, EPWM_COUNTER_COMPARE_A, (uint16_t)((INV_PWM_TICKS*svgenData.Tb) + INV_PWM_TICKS/2));
}
void printIq(void)
{
//   Lems2Iq();
   sciPrintf("angle=%f Iq=%f Id=%f\r\n",parkData.Angle,parkData.Qs,parkData.Ds);
}





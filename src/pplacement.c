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
#include "pplacement.h"

void initPplace(void)
{
   pid_iq.param.Kp = -5;
   pid_iq.param.Ki = 4.5 ;
}
void runPplacement(PID_CONTROLLER * in)
{
  //  uso la estructura del pid porque ya tengo la data de referencia y feedback,
  // pero aplico pplacement
  //in->term.Ref; //esta es la corriente de referencia
  //in->term.Fbk; //este el feedbak
  //in->term.Out; //saco la salida en out
  in->data.v1  = (in->param.Kp * in->term.Ref) - (in->param.Ki * -in->term.Fbk);
  in->term.Out = -__fmax(__fmin(in->data.v1, in->param.Umax), in->param.Umin);
}

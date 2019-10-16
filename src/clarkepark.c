#include "driverlib.h"
#include "fcl.h"
#include "device.h"
#include "scia.h"
#include "ipark.h"
#include "clarke.h"
#include "park.h"
#include "eqep_.h"
#include "adc_.h"

CLARKE               clarkeData = CLARKE_DEFAULTS;
PARK                 parkData   = PARK_DEFAULTS;
IPARK                iparkData  = IPARK_DEFAULTS;
SVGEN                svgenData  = SVGEN_DEFAULTS;

void lems2Iqd(float angle)
{
   clarkeData.As = readLemV();
   clarkeData.Bs = readLemW();
   runClarke(&clarkeData); //calculo con 2 corrientes, Cs queda implicita
   parkData.Alpha  = clarkeData.Alpha;
   parkData.Beta   = clarkeData.Beta;
   parkData.Angle  = angle;
   parkData.Sine   = __sinpuf32(parkData.Angle);
   parkData.Cosine = __cospuf32(parkData.Angle);
   runPark(&parkData);
}

void iqd2Pwm(float iq, float id)
{
   iparkData.Qs     = iq;
   iparkData.Ds     = id;
   iparkData.Sine   = parkData.Sine   ;
   iparkData.Cosine = parkData.Cosine ;
   runIPark(&iparkData);

   svgenData.Ualpha = iparkData.Alpha;
   svgenData.Ubeta  = iparkData.Beta;
   runSVGenDQ(&svgenData);

   EPWM_setCounterCompareValue(EPWM1_BASE ,EPWM_COUNTER_COMPARE_A ,INV_PWM_HALF_TBPRD*svgenData.Tc + INV_PWM_HALF_TBPRD);
   EPWM_setCounterCompareValue(EPWM2_BASE ,EPWM_COUNTER_COMPARE_A ,INV_PWM_HALF_TBPRD*svgenData.Ta + INV_PWM_HALF_TBPRD);
   EPWM_setCounterCompareValue(EPWM3_BASE ,EPWM_COUNTER_COMPARE_A ,INV_PWM_HALF_TBPRD*svgenData.Tb + INV_PWM_HALF_TBPRD);
}

#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
#include "F2837xD_device.h"
#include "scia.h"
#include "events.h"
#include "sm.h"
#include "gpio.h"
#include "device.h"
#include "leds.h"
#include "everythings.h"
#include "cmdline.h"
#include "wdog.h"
#include "adc_.h"
#include "pwm.h"
#include "parser.h"
#include "eqep_.h"
#include "schedule.h"
#include "overcurrent.h"
#include "sigmadelta.h"
//--------------------------------------------------------------------------------
const State
   idle1[],
   idle2[],
   idle3[],
   idle4[],
   idle5[],
   idle6[],
   idle7[],
   idle8[],
   idle9[],
   idle10[];

const State*   everythingsSm=idle1;
const State**  everythings    ( void )
{
   return &everythingsSm;
}
void Init_everythings(void)
{
   initLeds      ( );
   initParser    ( );
//   initEqep      ( );
   Init_Schedule   ( );
   initOvercurrent ( ); // overcurren protection
   initPwm         ( ); // PWM Configuration
   initAdc         ( );
   initSigmaDelta  ( ); // SDFM configuration
}
//--------------------------------------------------------------------------------
const State idle1 [ ] =
{
    ANY_Event ,ledEffectsFunc ,idle2  ,
};
const State idle2 [ ] =
{
    ANY_Event , Rien ,idle3  ,
};
const State idle3 [ ] =
{
    ANY_Event ,wdogTask       ,idle4  ,
};
const State idle4 [ ] =
{
    ANY_Event ,Rien           ,idle5  ,
};
const State idle5 [ ] =
{
    ANY_Event ,Rien  ,idle6  ,
//    ANY_Event ,speedFastCalc  ,idle6  ,
};
const State idle6 [ ] =
{
    ANY_Event ,Schedule       ,idle7  ,
};
const State idle7 [ ] =
{
    ANY_Event ,Rien           ,idle8  ,
};
const State idle8 [ ] =
{
    ANY_Event ,Rien           ,idle9  ,
};
const State idle9 [ ] =
{
    ANY_Event ,Rien           ,idle10 ,
};
const State idle10[ ] =
{
    ANY_Event ,Rien           ,idle1  ,
};

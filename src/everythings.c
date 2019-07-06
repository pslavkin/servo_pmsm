#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
#include "scia.h"
#include "events.h"
#include "sm.h"
#include "gpio.h"
#include "device.h"
#include "leds.h"
#include "everythings.h"
//--------------------------------------------------------------------------------
State
   idle1[],
   idle2[],
   idle3[];

State*   everythingsSm;
State**  everythings    ( void )
{
   return &everythingsSm;
}
void Init_everythings(void)
{
   everythingsSm=idle1;
   initLeds();
}

void func1(void)
{
   sciaBufferWrite((uint16_t*)"funcion1\r\n",10);
}
void func2(void)
{
   sciaBufferWrite((uint16_t*)"funcion2\r\n",10);
}
void func3(void)
{
   sciaBufferWrite((uint16_t*)"funcion3\r\n",10);
   ledEffectsFunc();
}

State idle1  [ ] =
{
    Rti_Event ,func1 ,idle2 ,
    ANY_Event ,Rien  ,idle1 ,
};
State idle2  [ ] =
{
    Rti_Event ,func2 ,idle3 ,
    ANY_Event ,Rien  ,idle2 ,
};
State idle3  [ ] =
{
    Rti_Event ,func3 ,idle1 ,
    ANY_Event ,Rien  ,idle3 ,
};

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
#include "cmdline.h"
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

const State*   everythingsSm;
const State**  everythings    ( void )
{
   return &everythingsSm;
}
void Init_everythings(void)
{
   everythingsSm=idle1;
   initLeds           ( );
   Clear_Parser_Index ( );
}
void func1(void)
{
//   sciaBufferWrite("blablan1\r\n",10);
}
void func2(void)
{
   static uint32_t t=0;
   t++;
//   sciPrintf("time= %d\r\n",t);
}
void func3(void)
{
 //  sciaBufferWrite("funcion3\r\n",10);
//   ledEffectsFunc();
}
void func4(void)
{
   Parser_Process();
}

//--------------------------------------------------------------------------------
const State idle1 [ ]=
{
    ANY_Event ,func1 ,idle2  ,
};
const State idle2 [ ]=
{
    ANY_Event ,func2 ,idle3  ,
};
const State idle3 [ ]=
{
    ANY_Event ,func3 ,idle4  ,
};
const State idle4 [ ]=
{
    ANY_Event ,func4  ,idle5  ,
};
const State idle5 [ ]=
{
    ANY_Event ,Rien  ,idle6  ,
};
const State idle6 [ ]=
{
    ANY_Event ,Rien  ,idle7  ,
};
const State idle7 [ ]=
{
    ANY_Event ,Rien  ,idle8  ,
};
const State idle8 [ ]=
{
    ANY_Event ,Rien  ,idle9  ,
};
const State idle9 [ ]=
{
    ANY_Event ,Rien  ,idle10 ,
};
const State idle10[ ]=
{
    ANY_Event ,Rien  ,idle1  ,
};

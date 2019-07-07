#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
#include "scia.h"
#include "events.h"
#include "sm.h"
#include "gpio.h"
#include "device.h"
#include "leds.h"
//-----------------------------------------------------------------------------------
void led1On   ( void ) { GPIO_writePin(DEVICE_GPIO_PIN_LED1, 0); }
void led1Off  ( void ) { GPIO_writePin(DEVICE_GPIO_PIN_LED1, 1); }
void led2On   ( void ) { GPIO_writePin(DEVICE_GPIO_PIN_LED2, 0); }
void led2Off  ( void ) { GPIO_writePin(DEVICE_GPIO_PIN_LED2, 1); }
void led1Toogle  ( void )
{ 
   static uint16_t a=0;
   if(a==0) {
      a=1;
      led1On();
   }
   else {
      a=0;
      led1Off();
   }
}
void led2Toogle  ( void )
{ 
   if(GPIO_readPin(DEVICE_GPIO_PIN_LED2)!=0)
      led2On();
   else
      led2Off();
}
//-------------------------------------------------------------------------------------
struct ledEffect_struct ledEffects[]=
{
// { 0x0002 ,0x0002 ,led1On ,led1Off },
 { 0x0000 ,0xaaaa ,led2On ,led2Off },
};
//-------------------------------------------------------------------------------------
void initLeds ( void )
{
   GPIO_setPadConfig     ( DEVICE_GPIO_PIN_LED1, GPIO_PIN_TYPE_STD );
   GPIO_setDirectionMode ( DEVICE_GPIO_PIN_LED1, GPIO_DIR_MODE_OUT );
   GPIO_setPadConfig     ( DEVICE_GPIO_PIN_LED2, GPIO_PIN_TYPE_STD );
   GPIO_setDirectionMode ( DEVICE_GPIO_PIN_LED2, GPIO_DIR_MODE_OUT );
}
void setLedEffect      ( uint16_t led,uint16_t effect ) { ledEffects[led].effect=ledEffects[led].temp=effect;}
void setTempLedEffect  ( uint16_t led,uint16_t effect ) { ledEffects[led].temp=effect                       ;}
void setFixedLedEffect ( uint16_t led,uint16_t effect ) { ledEffects[led].effect=effect                     ;}
void ledEffectsFunc    ( void                         )
{
   uint16_t i;
   for ( i=0;i<(sizeof(ledEffects )/sizeof(ledEffects[0]));i++) {
      if(ledEffects[i].temp&0x0001==0x0001)
         ledEffects[i].on();
      else
         ledEffects[i].off();
      if((ledEffects[i].temp>>=1)==0x0000)
         ledEffects[i].temp=ledEffects[i].effect;
   }
}



#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
#include "scia.h"
#include "events.h"
#include "sm.h"
#include "gpio.h"
#include "device.h"
#include "leds.h"
// -----------------------------------------------------------------------------------
void     led1On     ( void ) { GPIO_writePin(DEVICE_GPIO_PIN_LED1  ,0)                   ;}
void     led1Off    ( void ) { GPIO_writePin(DEVICE_GPIO_PIN_LED1  ,1)                   ;}
void     led2On     ( void ) { GPIO_writePin(DEVICE_GPIO_PIN_LED2  ,0)                   ;}
void     led2Off    ( void ) { GPIO_writePin(DEVICE_GPIO_PIN_LED2  ,1)                   ;}
void     led45On    ( void ) { GPIO_writePin(DEVICE_GPIO_PIN_LED45 ,1)                   ;}
void     led45Off   ( void ) { GPIO_writePin(DEVICE_GPIO_PIN_LED45 ,0)                   ;}
void     led39On    ( void ) { GPIO_writePin(DEVICE_GPIO_PIN_LED39 ,1)                   ;}
void     led39Off   ( void ) { GPIO_writePin(DEVICE_GPIO_PIN_LED39 ,0)                   ;}
uint32_t getGpio39  ( void ) { return GPIO_readPin(DEVICE_GPIO_PIN_LED39)                ;}
uint32_t getGpio45  ( void ) { return GPIO_readPin(DEVICE_GPIO_PIN_LED45)                ;}
void     led1Toogle ( void ) { (GPIO_readPin(DEVICE_GPIO_PIN_LED1)!=0)?led1On():led1Off();}
void     led2Toogle ( void ) { (GPIO_readPin(DEVICE_GPIO_PIN_LED2)!=0)?led2On():led2Off();}
//-------------------------------------------------------------------------------------
struct ledEffect_struct ledEffects[]=
{
 { 0x8080 ,0x8080 ,led1On ,led1Off },
 { 0xAAAA ,0XAAAA ,led2On ,led2Off },
// { 0xAFAA ,0XAAAA ,led39On ,led39Off },
// { 0xAAAA ,0XAAAA ,led45On ,led45Off },
};
//-------------------------------------------------------------------------------------
void initLeds ( void )
{
   GPIO_setPinConfig     ( DEVICE_GPIO_CFG_LED1                    );
   GPIO_setPadConfig     ( DEVICE_GPIO_PIN_LED1 ,GPIO_PIN_TYPE_STD );
   GPIO_setDirectionMode ( DEVICE_GPIO_PIN_LED1 ,GPIO_DIR_MODE_OUT );

   GPIO_setPinConfig     ( DEVICE_GPIO_CFG_LED2                    );
   GPIO_setPadConfig     ( DEVICE_GPIO_PIN_LED2 ,GPIO_PIN_TYPE_STD );
   GPIO_setDirectionMode ( DEVICE_GPIO_PIN_LED2 ,GPIO_DIR_MODE_OUT );

   // GPIO45 is used as PushPull output to indicate the end of computation when
   // compared against the SOC signal
   GPIO_setMasterCore    ( DEVICE_GPIO_PIN_LED45 ,GPIO_CORE_CPU1    );
   GPIO_setPinConfig     ( DEVICE_GPIO_CFG_LED45                    );
   GPIO_setPadConfig     ( DEVICE_GPIO_PIN_LED45 ,GPIO_PIN_TYPE_PULLUP );
   GPIO_setDirectionMode ( DEVICE_GPIO_PIN_LED45 ,GPIO_DIR_MODE_IN );

   GPIO_setMasterCore    ( DEVICE_GPIO_PIN_LED39 ,GPIO_CORE_CPU1       );
   GPIO_setPinConfig     ( DEVICE_GPIO_CFG_LED39                       );
   GPIO_setPadConfig     ( DEVICE_GPIO_PIN_LED39 ,GPIO_PIN_TYPE_PULLUP );
   GPIO_setDirectionMode ( DEVICE_GPIO_PIN_LED39 ,GPIO_DIR_MODE_IN     );
}
void setLedEffect      ( uint16_t led,uint16_t effect ) { ledEffects[led].effect=ledEffects[led].temp=effect;}
void setTempLedEffect  ( uint16_t led,uint16_t effect ) { ledEffects[led].temp=effect                       ;}
void setFixedLedEffect ( uint16_t led,uint16_t effect ) { ledEffects[led].effect=effect                     ;}
void ledEffectsFunc    ( void                         )
{
   uint16_t i;
   for ( i=0;i<(sizeof(ledEffects )/sizeof(ledEffects[0]));i++) {
      (ledEffects[i].temp&0x0001)?ledEffects[i].on():ledEffects[i].off();
      if(!(ledEffects[i].temp>>=1))
         ledEffects[i].temp=ledEffects[i].effect;
   }
}

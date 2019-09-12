#include <stdio.h>/*{{{*/
#include <stdint.h>
#include <stdbool.h>
#include "gpio.h"
#include "device.h"
#include "scia.h"
#include "position.h"
#include "stepdir.h"/*}}}*/

stepdir_t sd={
   .step       = 0.01,
   .actualStep = 0.01,
};
// -----------------------------------------------------------------------------------
void initStepdir ( void )/*{{{*/
{
   GPIO_setMasterCore    ( DEVICE_GPIO_PIN_LED39 ,GPIO_CORE_CPU1       ); //pulse
   GPIO_setPinConfig     ( DEVICE_GPIO_CFG_LED39                       );
   GPIO_setPadConfig     ( DEVICE_GPIO_PIN_LED39 ,GPIO_PIN_TYPE_PULLUP );
   GPIO_setDirectionMode ( DEVICE_GPIO_PIN_LED39 ,GPIO_DIR_MODE_IN     );

   GPIO_setMasterCore    ( DEVICE_GPIO_PIN_LED45 ,GPIO_CORE_CPU1       ); //dir
   GPIO_setPinConfig     ( DEVICE_GPIO_CFG_LED45                       );
   GPIO_setPadConfig     ( DEVICE_GPIO_PIN_LED45 ,GPIO_PIN_TYPE_PULLUP );
   GPIO_setDirectionMode ( DEVICE_GPIO_PIN_LED45 ,GPIO_DIR_MODE_IN     );

   //pulse
   Interrupt_register        ( INT_XINT1             ,&pulseIsr                  ); // map function with xint
   Interrupt_enable          ( INT_XINT1                                         ); // Enable XINT1 and XINT2 in the PIE:
   GPIO_setQualificationMode ( DEVICE_GPIO_PIN_LED39 ,GPIO_QUAL_SYNC             ); // qualificacion sincronica... analizar otras opciones todo
   GPIO_setInterruptPin      ( DEVICE_GPIO_PIN_LED39 ,GPIO_INT_XINT1             ); // asocio pin con xint
   GPIO_setInterruptType     ( GPIO_INT_XINT1        ,GPIO_INT_TYPE_FALLING_EDGE ); // falling para pulse
   GPIO_enableInterrupt      ( GPIO_INT_XINT1                                    ); // Enable XINT1

   //dir
   Interrupt_register        ( INT_XINT2             ,&dirIsr                    ); // map function with xint
   Interrupt_enable          ( INT_XINT2                                         ); // Group 1 interrupt 4 & 5
   GPIO_setQualificationMode ( DEVICE_GPIO_PIN_LED45 ,GPIO_QUAL_SYNC             ); // qualificacion sincronica... analizar otras opciones todo
   GPIO_setInterruptPin      ( DEVICE_GPIO_PIN_LED45 ,GPIO_INT_XINT2             ); // asocio pin con xint
   GPIO_setInterruptType     ( GPIO_INT_XINT2        ,GPIO_INT_TYPE_BOTH_EDGES   ); // both para direccion
   GPIO_enableInterrupt      ( GPIO_INT_XINT2                                    ); // Enable XINT2
}/*}}}*/
uint32_t getGpio39 ( void ) { return GPIO_readPin(DEVICE_GPIO_PIN_LED39);}
uint32_t getGpio45 ( void ) { return GPIO_readPin(DEVICE_GPIO_PIN_LED45);}
float32_t   getStepdirStep ( void           ) { return sd.step;}
void        setStepdirStep ( float32_t step )/*{{{*/
{
   sd.step=step;
   if(sd.actualStep>0)
      sd.actualStep = sd.step;
   else 
      sd.actualStep = -sd.step;
}/*}}}*/
void        setStepdirDir ( bool dir )/*{{{*/
{
   if(dir==false)
      sd.actualStep = sd.step;
   else 
      sd.actualStep = -sd.step;
}/*}}}*/
bool   getStepdirDir   ( void ) { return sd.actualStep<0 ;}
void   incStepdirPulse ( void ) { incPosAbs(sd.actualStep);}

interrupt void pulseIsr(void)/*{{{*/
{
   incStepdirPulse();
   // Acknowledge this interrupt to get more from group 1
   Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP1);
}/*}}}*/
interrupt void dirIsr(void)/*{{{*/
{
   if(getGpio45()==0)
      sd.actualStep = sd.step;
   else
      sd.actualStep = -sd.step;

    // Acknowledge this interrupt to get more from group 1
   Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP1);
}/*}}}*/

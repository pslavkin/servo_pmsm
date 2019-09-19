#include <stdio.h>/*{{{*/
#include <stdint.h>
#include <stdbool.h>
#include "gpio.h"
#include "device.h"
#include "scia.h"
#include "position.h"
#include "schedule.h"
#include "stepdir.h"/*}}}*/

stepdir_t sd={
   .step       = 0.0001,
   .actualStep = 0.0001,
};
// -----------------------------------------------------------------------------------

static inline void updateStepdirDir   ( void )
{
   if(getGpio24()==0)   //TODO I have to read the irq state to decide if it was fall or rise not like these
      sd.actualStep = sd.step;
   else
      sd.actualStep = -sd.step;
}
void initStepdir ( void )/*{{{*/
{
//   GPIO_setPinConfig     ( DEVICE_GPIO_CFG_LED32                    );  //encoder 5v enable just to test
//   GPIO_setPadConfig     ( DEVICE_GPIO_PIN_LED32 ,GPIO_PIN_TYPE_STD );
//   GPIO_setDirectionMode ( DEVICE_GPIO_PIN_LED32 ,GPIO_DIR_MODE_OUT );
//   GPIO_writePin         ( DEVICE_GPIO_PIN_LED32  ,1                );

   GPIO_setMasterCore    ( DEVICE_GPIO_PIN_LED31 ,GPIO_CORE_CPU1       ); //pulse diff from can transceiver
   GPIO_setPinConfig     ( DEVICE_GPIO_CFG_LED31                       );
   GPIO_setPadConfig     ( DEVICE_GPIO_PIN_LED31 ,GPIO_PIN_TYPE_PULLUP );
   GPIO_setDirectionMode ( DEVICE_GPIO_PIN_LED31 ,GPIO_DIR_MODE_IN     );

   GPIO_setMasterCore    ( DEVICE_GPIO_PIN_LED39 ,GPIO_CORE_CPU1       ); //pulse
   GPIO_setPinConfig     ( DEVICE_GPIO_CFG_LED39                       );
   GPIO_setPadConfig     ( DEVICE_GPIO_PIN_LED39 ,GPIO_PIN_TYPE_PULLUP );
   GPIO_setDirectionMode ( DEVICE_GPIO_PIN_LED39 ,GPIO_DIR_MODE_IN     );

   GPIO_setMasterCore    ( DEVICE_GPIO_PIN_LED24 ,GPIO_CORE_CPU1       ); //dir differential transeiver from encoder front end
   GPIO_setPinConfig     ( DEVICE_GPIO_CFG_LED24                       );
   GPIO_setPadConfig     ( DEVICE_GPIO_PIN_LED24 ,GPIO_PIN_TYPE_STD );
   GPIO_setDirectionMode ( DEVICE_GPIO_PIN_LED24 ,GPIO_DIR_MODE_IN     );

   GPIO_setMasterCore    ( DEVICE_GPIO_PIN_LED45 ,GPIO_CORE_CPU1       ); //dir
   GPIO_setPinConfig     ( DEVICE_GPIO_CFG_LED45                       );
   GPIO_setPadConfig     ( DEVICE_GPIO_PIN_LED45 ,GPIO_PIN_TYPE_PULLUP );
   GPIO_setDirectionMode ( DEVICE_GPIO_PIN_LED45 ,GPIO_DIR_MODE_IN     );

   //pulse
   Interrupt_register        ( INT_XINT1             ,&pulseIsr                  ); // map function with xint
   Interrupt_enable          ( INT_XINT1                                         ); // Enable XINT1 and XINT2 in the PIE:
   //pulse differntial
   GPIO_setInterruptPin      ( DEVICE_GPIO_PIN_LED31 ,GPIO_INT_XINT1             ); // asocio pin con xint
   GPIO_setQualificationMode ( DEVICE_GPIO_PIN_LED31 ,GPIO_QUAL_6SAMPLE          ); // qualificacion sincronica... analizar otras opciones todo
   //pulse common gnd
//   GPIO_setQualificationMode ( DEVICE_GPIO_PIN_LED39 ,GPIO_QUAL_SYNC             ); // qualificacion sincronica... analizar otras opciones todo
//   GPIO_setInterruptPin      ( DEVICE_GPIO_PIN_LED39 ,GPIO_INT_XINT1             ); // asocio pin con xint

   GPIO_setInterruptType     ( GPIO_INT_XINT1        ,GPIO_INT_TYPE_FALLING_EDGE ); // falling para pulse
   GPIO_enableInterrupt      ( GPIO_INT_XINT1                                    ); // Enable XINT1

   //dir
   Interrupt_register        ( INT_XINT2             ,&dirIsr                    ); // map function with xint
   Interrupt_enable          ( INT_XINT2                                         ); // Group 1 interrupt 4 & 5
   //dir differntial
   GPIO_setQualificationMode ( DEVICE_GPIO_PIN_LED24 ,GPIO_QUAL_6SAMPLE          ); // qualificacion sincronica... analizar otras opciones TODO
   GPIO_setInterruptPin      ( DEVICE_GPIO_PIN_LED24 ,GPIO_INT_XINT2             ); // asocio pin con xint
//   //dir common gnd
//   GPIO_setQualificationMode ( DEVICE_GPIO_PIN_LED45 ,GPIO_QUAL_SYNC             ); // qualificacion sincronica... analizar otras opciones todo
//   GPIO_setInterruptPin      ( DEVICE_GPIO_PIN_LED45 ,GPIO_INT_XINT2             ); // asocio pin con xint

   GPIO_setInterruptType     ( GPIO_INT_XINT2        ,GPIO_INT_TYPE_BOTH_EDGES   ); // both para direccion
   GPIO_enableInterrupt      ( GPIO_INT_XINT2                                    ); // Enable XINT2

   New_Periodic_Func_Schedule(10,updateStepdirDir); //cada 1 segundo control la direccion porque podria ser que hayan reseteado el controlador o algo

}/*}}}*/
uint32_t getGpio39 ( void ) { return GPIO_readPin(DEVICE_GPIO_PIN_LED39);}
uint32_t getGpio45 ( void ) { return GPIO_readPin(DEVICE_GPIO_PIN_LED45);}
uint32_t getGpio24 ( void ) { return GPIO_readPin(DEVICE_GPIO_PIN_LED24);}
uint32_t getGpio31 ( void ) { return GPIO_readPin(DEVICE_GPIO_PIN_LED31);}
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
   incPosAbs(sd.actualStep);
   //incStepdirPulse();
   // Acknowledge this interrupt to get more from group 1
   Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP1);
}/*}}}*/
interrupt void dirIsr(void)/*{{{*/
{
   updateStepdirDir();
    // Acknowledge this interrupt to get more from group 1
   Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP1);
}/*}}}*/

#include "driverlib.h"
#include "device.h"
#include "scia.h"
#include "sm.h"
#include "events.h"
#include "everythings.h"
#include "adc.h"
#include "sysctl.h"
#include "opt.h"

void initADCs    ( void );
void initADCSOCs ( void );

uint16_t adc2Temperature(uint16_t sensorSample)
{
   return ADC_getTemperatureC(sensorSample, 3.0f);
}

uint16_t readAdc(ADC_Channel ch)
{
   ADC_setupSOC             ( ADCA_BASE ,ADC_SOC_NUMBER0 ,ADC_TRIGGER_SW_ONLY ,ch ,140 );
   ADC_setInterruptSource   ( ADCA_BASE ,ADC_INT_NUMBER1 ,ADC_SOC_NUMBER0              );
   ADC_enableInterrupt      ( ADCA_BASE ,ADC_INT_NUMBER1                               );
   ADC_clearInterruptStatus ( ADCA_BASE ,ADC_INT_NUMBER1                               );
   ADC_forceSOC(ADCA_BASE, ADC_SOC_NUMBER0);
   while(ADC_getInterruptStatus(ADCA_BASE, ADC_INT_NUMBER1) == false) {
   }
   ADC_clearInterruptStatus(ADCA_BASE, ADC_INT_NUMBER1);
   return  ADC_readResult(ADCARESULT_BASE, ADC_SOC_NUMBER0);
}

void initAdc(void)
{
    ADC_setPrescaler                ( ADCA_BASE, ADC_CLK_DIV_4_0                             ); // Set ADCCLK divider to /4
    ADC_setMode                     ( ADCA_BASE, ADC_RESOLUTION_12BIT, ADC_MODE_SINGLE_ENDED );
    ADC_setInterruptPulseMode       ( ADCA_BASE, ADC_PULSE_END_OF_CONV                       ); // Set pulse positions to late
    ADC_enableConverter             ( ADCA_BASE                                              ); // Power up the ADCs and then delay for 1 ms
    DEVICE_DELAY_US                 ( 1000                                                   );
    ASysCtl_enableTemperatureSensor (                                                        );
    DEVICE_DELAY_US                 ( 500                                                    );
}


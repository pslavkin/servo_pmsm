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

uint16_t readAdc(uint16_t base,uint16_t ch)
{
   uint32_t adcList[]={ADCA_BASE,ADCB_BASE,ADCC_BASE,ADCD_BASE};
   uint32_t adcResultList[]={ADCARESULT_BASE,ADCBRESULT_BASE,ADCCRESULT_BASE,ADCDRESULT_BASE};
   uint32_t adcBase=adcList[base];

   ADC_setupSOC             ( adcBase ,ADC_SOC_NUMBER0 ,ADC_TRIGGER_SW_ONLY ,(ADC_Channel)ch ,140 );
   ADC_setInterruptSource   ( adcBase ,ADC_INT_NUMBER1 ,ADC_SOC_NUMBER0              );
   ADC_enableInterrupt      ( adcBase ,ADC_INT_NUMBER1                               );
   ADC_clearInterruptStatus ( adcBase ,ADC_INT_NUMBER1                               );
   ADC_forceSOC(adcBase, ADC_SOC_NUMBER0);
   while(ADC_getInterruptStatus(adcBase, ADC_INT_NUMBER1) == false) {
   }
   ADC_clearInterruptStatus(adcBase, ADC_INT_NUMBER1);
   return  ADC_readResult(adcResultList[base], ADC_SOC_NUMBER0);
}

void initAdc(void)
{
    ADC_setPrescaler                ( ADCA_BASE, ADC_CLK_DIV_4_0                             ); // Set ADCCLK divider to /4
    ADC_setMode                     ( ADCA_BASE, ADC_RESOLUTION_12BIT, ADC_MODE_SINGLE_ENDED );
    ADC_setInterruptPulseMode       ( ADCA_BASE, ADC_PULSE_END_OF_CONV                       ); // Set pulse positions to late
    ADC_enableConverter             ( ADCA_BASE                                              ); // Power up the ADCs and then delay for 1 ms
    DEVICE_DELAY_US                 ( 1000                                                   );
    ADC_setPrescaler                ( ADCB_BASE, ADC_CLK_DIV_4_0                             ); // Set ADCCLK divider to /4
    ADC_setMode                     ( ADCB_BASE, ADC_RESOLUTION_12BIT, ADC_MODE_SINGLE_ENDED );
    ADC_setInterruptPulseMode       ( ADCB_BASE, ADC_PULSE_END_OF_CONV                       ); // Set pulse positions to late
    ADC_enableConverter             ( ADCB_BASE                                              ); // Power up the ADCs and then delay for 1 ms
    DEVICE_DELAY_US                 ( 1000                                                   );
    ASysCtl_enableTemperatureSensor (                                                        );
    DEVICE_DELAY_US                 ( 500                                                    );
    initSigmaDelta                  (                                                        );
}


float readLemV(void)
{
   float i=readAdc(0,2);
   i=i-2271;   //resto el offset que mido con el lem apagado
   i=i/2048;   //estoy en 12 bits, 2048 valores para cada lado reprentan 1 y -1a
   return i;
}
float readLemW(void)
{
   float i=readAdc(1,2);
   i=i-2227;   //resto el offset que mido con el lem apagado
   i=i/2048;   //estoy en 12 bits, 2048 valores para cada lado reprentan 1 y -1a
   return i;
}

void initSigmaDelta(void)
{
    // Configure GPIO8 as ePWM5A for SD1, Ch1/2 clock
    // Configure GPIO9 as ePWM5B for SD1, Ch3 clock
    GPIO_setPadConfig ( 8, GPIO_PIN_TYPE_STD );
    GPIO_setPinConfig ( GPIO_8_EPWM5A        );
    GPIO_setPadConfig ( 9, GPIO_PIN_TYPE_STD );
    GPIO_setPinConfig ( GPIO_9_EPWM5B        );

    // SDFM GPIO configurations
    int pin;
    for(pin = 48; pin <= 53; pin++) {
        GPIO_setMasterCore        ( pin, GPIO_CORE_CPU1    );
        GPIO_setDirectionMode     ( pin, GPIO_DIR_MODE_IN  );
        GPIO_setPadConfig         ( pin, GPIO_PIN_TYPE_STD );
        GPIO_setQualificationMode ( pin, GPIO_QUAL_ASYNC   );
    }

    // SD1 Ch1 - Ishunt - V
    GPIO_setPinConfig(GPIO_48_SD1_D1);
    GPIO_setPinConfig(GPIO_49_SD1_C1);
    // SD1 Ch2 - Ishunt - W
    GPIO_setPinConfig(GPIO_50_SD1_D2);
    GPIO_setPinConfig(GPIO_51_SD1_C2);
    // SD1 Ch3 - DC Bus
    GPIO_setPinConfig(GPIO_52_SD1_D3);
    GPIO_setPinConfig(GPIO_53_SD1_C3);

    // **********************************************
    // Sigma Delta clock set up - pwm5
    // **********************************************
    // Configure PWM5A for SD Clock i.e. 20Mhz
    // 20 Mhz => 50ns => 50ns/10
    // PWM5B - clock SDFM for DCBUS voltage sensing
    // PWM5A - clock SDFM for Phase current sensing (not used)
    EPWM_setPeriodLoadMode      ( EPWM5_BASE, EPWM_PERIOD_DIRECT_LOAD                      ); // set Immediate load
    EPWM_setTimeBasePeriod      ( EPWM5_BASE, SDFM_TICKS-1                                 ); // PWM frequency = 1 / period
    EPWM_setPhaseShift          ( EPWM5_BASE, 0                                            );
    EPWM_setTimeBaseCounter     ( EPWM5_BASE, 0                                            );
    EPWM_setTimeBaseCounterMode ( EPWM5_BASE, EPWM_COUNTER_MODE_UP                         );
    EPWM_setClockPrescaler      ( EPWM5_BASE, EPWM_CLOCK_DIVIDER_1, EPWM_HSCLOCK_DIVIDER_1 );
    EPWM_disablePhaseShiftLoad  ( EPWM5_BASE                                               );
    EPWM_setSyncOutPulseMode    ( EPWM5_BASE, EPWM_SYNC_OUT_PULSE_ON_COUNTER_ZERO          ); // sync "down-stream"
    // Counter Compare Submodule Registers
    EPWM_setCounterCompareValue           ( EPWM5_BASE ,EPWM_COUNTER_COMPARE_A ,0                                )                                                        ; // set duty 0% initiall
    EPWM_setCounterCompareShadowLoadMode  ( EPWM5_BASE ,EPWM_COUNTER_COMPARE_A ,EPWM_COMP_LOAD_ON_CNTR_ZERO      )                                                        ;
    EPWM_setActionQualifierActionComplete ( EPWM5_BASE ,EPWM_AQ_OUTPUT_A       ,(EPWM_ActionQualifierEventAction )(EPWM_AQ_OUTPUT_LOW_UP_CMPA | EPWM_AQ_OUTPUT_HIGH_ZERO)); // Action Qualifier SubModule Registers
    EPWM_setActionQualifierActionComplete ( EPWM5_BASE ,EPWM_AQ_OUTPUT_B       ,(EPWM_ActionQualifierEventAction )(EPWM_AQ_OUTPUT_LOW_UP_CMPA | EPWM_AQ_OUTPUT_HIGH_ZERO));
    EPWM_setCounterCompareValue           ( EPWM5_BASE ,EPWM_COUNTER_COMPARE_A ,(uint16_t                        )(EPWM_getTimeBasePeriod(EPWM5_BASE) >> 1))              ;
    EPWM_setSyncOutPulseMode              ( EPWM5_BASE ,EPWM_SYNC_OUT_PULSE_ON_EPWMxSYNCIN                       )                                                        ;
}

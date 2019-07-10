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



void initAdc(void)
{
    initADCs    ( );
    initADCSOCs ( );
}

uint16_t readAdc(uint16_t ch)
{
   ADC_forceSOC(ADCA_BASE, ADC_SOC_NUMBER0);
   while(ADC_getInterruptStatus(ADCA_BASE, ADC_INT_NUMBER1) == false) {
   }
   ADC_clearInterruptStatus(ADCA_BASE, ADC_INT_NUMBER1);

   // Store results
   return  ADC_readResult(ADCARESULT_BASE, ADC_SOC_NUMBER0);
}

// Function to configure and power up ADCs A and B.
void initADCs(void)
{
    // Set ADCCLK divider to /4
    ADC_setPrescaler(ADCA_BASE, ADC_CLK_DIV_4_0);
    //
    // Set resolution and signal mode (see #defines above) and load
    // corresponding trims.
#if(EX_ADC_RESOLUTION == 12)
    ADC_setMode(ADCA_BASE, ADC_RESOLUTION_12BIT, ADC_MODE_SINGLE_ENDED);
#elif(EX_ADC_RESOLUTION == 16)
    ADC_setMode(ADCA_BASE, ADC_RESOLUTION_16BIT, ADC_MODE_DIFFERENTIAL);
#endif

    // Set pulse positions to late
    ADC_setInterruptPulseMode(ADCA_BASE, ADC_PULSE_END_OF_CONV);

    // Power up the ADCs and then delay for 1 ms
    ADC_enableConverter(ADCA_BASE);

    DEVICE_DELAY_US(1000);
}

// Function to configure SOCs 0 and 1 of ADCs A and B.
void initADCSOCs(void)
{
    //
    // Configure SOCs of ADCA
    // - SOC0 will convert pin A0.
    // - SOC1 will convert pin A1.
    // - Both will be triggered by software only.
    // - For 12-bit resolution, a sampling window of 15 (75 ns at a 200MHz
    //   SYSCLK rate) will be used.  For 16-bit resolution, a sampling window
    //   of 64 (320 ns at a 200MHz SYSCLK rate) will be used.
    //
#if(EX_ADC_RESOLUTION == 12)
    ADC_setupSOC(ADCA_BASE, ADC_SOC_NUMBER0, ADC_TRIGGER_SW_ONLY,
                 ADC_CH_ADCIN0, 15);
#elif(EX_ADC_RESOLUTION == 16)
    ADC_setupSOC(ADCA_BASE, ADC_SOC_NUMBER0, ADC_TRIGGER_SW_ONLY,
                 ADC_CH_ADCIN0, 64);
#endif

    // Set SOC1 to set the interrupt 1 flag. Enable the interrupt and make
    // sure its flag is cleared.
    ADC_setInterruptSource   ( ADCA_BASE, ADC_INT_NUMBER1, ADC_SOC_NUMBER0 );
    ADC_enableInterrupt      ( ADCA_BASE, ADC_INT_NUMBER1                  );
    ADC_clearInterruptStatus ( ADCA_BASE, ADC_INT_NUMBER1                  );
}


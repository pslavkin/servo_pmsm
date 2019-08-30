#include "driverlib.h"
#include "fcl.h"
#include "device.h"
#include "scia.h"
#include "adc.h"
#include "adc_.h"


uint32_t adcHandle[4] = {ADCA_BASE, ADCB_BASE, ADCC_BASE, ADCD_BASE };

// Configure ADC
void initAdc()/*{{{*/
{
   // Analog signals that are sampled
   // LEM V   ADC A2/C+
   // LEM W   ADC B2/C+
   // Vfb-U   ADC C3
   // Vfb-V   ADC A3
   // Vfb-W   ADC B3
   // Vfb-Bus ADC B0

   // Analog Signals brought in but not sampled
   // SC-A2   ADC C0/C+
   // SC-B2   ADC D0/C+
   // SC-R    ADC D2/C+
   // R_SIN   ADC D1
   // R_COS   ADC C1
   // Ifb-SU  ADC C2/C+ (& A5 not used)
   // Ifb-SV  ADC A4/C+
   // Ifb-SW  ADC B4/C+

   // Configure the SOC0 on ADC a-d

   uint16_t base;

   for(base = 0; base < 3; base++) {
      // Set 12-bit single ended conversion mode
      ADC_setMode(adcHandle[base], ADC_RESOLUTION_12BIT, ADC_MODE_SINGLE_ENDED);

      // Set main clock scaling factor (100MHz max clock for the ADC module)
      ADC_setPrescaler(adcHandle[base], ADC_CLK_DIV_4_0);

      // set the ADC interrupt pulse generation to end of conversion
      ADC_setInterruptPulseMode(adcHandle[base], ADC_PULSE_END_OF_CONV);

      // enable the ADC
      ADC_enableConverter(adcHandle[base]);

      // set priority of SOCs
      ADC_setSOCPriority(adcHandle[base], ADC_PRI_ALL_HIPRI);
   }

   // delay to allow ADCs to power up
   DEVICE_DELAY_US(1500U);

   // ********************************
   // LEM motor current LEM-V @ at A2
   // ********************************
   // SOC0 will convert pin A2, sample window in SYSCLK cycles,
   // trigger on ePWM1 SOCA/C
   ADC_setupSOC(ADCA_BASE, ADC_SOC_NUMBER0, ADC_TRIGGER_EPWM1_SOCA, ADC_CH_ADCIN2, 25);

   // Configure the post processing block (PPB) to eliminate subtraction
   // related calculation
   // PPB is associated with SOC0
   ADC_setupPPB(ADCA_BASE, ADC_PPB_NUMBER1, ADC_SOC_NUMBER0);
   // Write zero to this for now till offset ISR is run
   ADC_setPPBCalibrationOffset(ADCA_BASE, ADC_PPB_NUMBER1, 0);

   // ********************************
   // LEM motor current LEM-W @ at B2
   // ********************************
   // SOC0 will convert pin B2, sample window in SYSCLK cycles,
   // trigger on ePWM1 SOCA/C
   ADC_setupSOC(ADCB_BASE, ADC_SOC_NUMBER0, ADC_TRIGGER_EPWM1_SOCA, ADC_CH_ADCIN2, 25);

   // Configure PPB to eliminate subtraction related calculation
   // PPB is associated with SOC0
   ADC_setupPPB(ADCB_BASE, ADC_PPB_NUMBER1, ADC_SOC_NUMBER0);

   // Write zero to this for now till offset ISR is run
   ADC_setPPBCalibrationOffset(ADCB_BASE, ADC_PPB_NUMBER1, 0);

   // Enable AdcA-ADCINT1- to help verify EoC before result data read
   ADC_setInterruptSource   ( ADCA_BASE, ADC_INT_NUMBER1, ADC_SOC_NUMBER0 );
   ADC_enableContinuousMode ( ADCA_BASE, ADC_INT_NUMBER1                  );
   ADC_enableInterrupt      ( ADCA_BASE, ADC_INT_NUMBER1                  );

   currentCalibrate();
   return;
}/*}}}*/


void currentCalibrate(void)/*{{{*/
{
   // Variables for current measurement
   // Offset calibration routine is run to calibrate for any offsets on the opamps
   float32_t            offset_lemV      = 0;        // offset in LEM current V fbk channel @ 0A
   float32_t            offset_lemW      = 0;        // offset in LEM current W fbk channel @ 0A
   float32_t            K1               = 0.998;    // Offset filter coefficient K1: 0.05/(T+0.05);
   float32_t            K2               = 0.001999; // Offset filter coefficient K2: T/(T+0.05);
   uint16_t             offsetCalCounter = 0;
   // Feedbacks OFFSET Calibration Routine
   offset_lemW  = 0;
   offset_lemV  = 0;

   for(offsetCalCounter=0; offsetCalCounter < 20000; ) {
      EPWM_clearEventTriggerInterruptFlag(EPWM11_BASE);
      while(EPWM_getEventTriggerInterruptStatus(EPWM11_BASE) == false)
         ;
      if(offsetCalCounter > 1000) {
         offset_lemV  = K1*offset_lemV + K2*(IFB_LEMV)*ADC_PU_SCALE_FACTOR;
         offset_lemW  = K1*offset_lemW + K2*(IFB_LEMW)*ADC_PU_SCALE_FACTOR;
      }
      offsetCalCounter++;
   }
   // Init OFFSET regs with identified values
   // setting LEM Iv offset
   ADC_setPPBReferenceOffset(ADCA_BASE, ADC_PPB_NUMBER1, (uint16_t)(offset_lemV*4096.0));
   // setting LEM Iw offset
   ADC_setPPBReferenceOffset(ADCB_BASE, ADC_PPB_NUMBER1, (uint16_t)(offset_lemW*4096.0));
}/*}}}*/



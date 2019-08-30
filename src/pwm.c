#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
#include "fcl_qep_f2837x_tmdxiddk_settings.h"
#include "driverlib.h"
#include "pwm.h"
#include "F2837xD_device.h"
#include "scia.h"

extern __interrupt void motorControlISR(void);

// EPWM1 - Phase U
// EPWM2 - Phase V
// EPWM3 - Phase W
uint32_t pwmHandle[3]     = {EPWM1_BASE, EPWM2_BASE, EPWM3_BASE };

// PWM Configuration
void initPwm(void)/*{{{*/
{
   uint16_t base;
   // main inverter PWM GPIO init
   // PWM1 - U
   // PWM2 - V
   // PWM3 - W
   //
   GPIO_setMasterCore ( 0, GPIO_CORE_CPU1    );
   GPIO_setPinConfig  ( GPIO_0_EPWM1A        );
   GPIO_setPadConfig  ( 0, GPIO_PIN_TYPE_STD );

   // EPWM1B->UL
   GPIO_setMasterCore ( 1, GPIO_CORE_CPU1    );
   GPIO_setPinConfig  ( GPIO_1_EPWM1B        );
   GPIO_setPadConfig  ( 1, GPIO_PIN_TYPE_STD );

   // EPWM2A->VH
   GPIO_setMasterCore ( 2, GPIO_CORE_CPU1    );
   GPIO_setPinConfig  ( GPIO_2_EPWM2A        );
   GPIO_setPadConfig  ( 2, GPIO_PIN_TYPE_STD );

   // EPWM2B->VL
   GPIO_setMasterCore ( 3, GPIO_CORE_CPU1    );
   GPIO_setPinConfig  ( GPIO_3_EPWM2B        );
   GPIO_setPadConfig  ( 3, GPIO_PIN_TYPE_STD );

   // EPWM3A->WH
   GPIO_setMasterCore ( 4, GPIO_CORE_CPU1    );
   GPIO_setPinConfig  ( GPIO_4_EPWM3A        );
   GPIO_setPadConfig  ( 4, GPIO_PIN_TYPE_STD );

   // EPWM3B->WL
   GPIO_setMasterCore ( 5, GPIO_CORE_CPU1    );
   GPIO_setPinConfig  ( GPIO_5_EPWM3B        );
   GPIO_setPadConfig  ( 5, GPIO_PIN_TYPE_STD );

   //
   // Configure GPIO8 as ePWM5A for SD1, Ch1/2 clock
   // Configure GPIO9 as ePWM5B for SD1, Ch3 clock
   //
   GPIO_setPadConfig ( 8, GPIO_PIN_TYPE_STD );
   GPIO_setPinConfig ( GPIO_8_EPWM5A        );
   GPIO_setPadConfig ( 9, GPIO_PIN_TYPE_STD );
   GPIO_setPinConfig ( GPIO_9_EPWM5B        );

   SysCtl_disablePeripheral(SYSCTL_PERIPH_CLK_TBCLKSYNC);

   // *****************************************
   // Inverter PWM configuration - PWM 1, 2, 3
   // *****************************************
   for(base = 0; base < 3; base++) {
      // Time Base SubModule Registers
      // set Immediate load
      EPWM_setPeriodLoadMode      ( pwmHandle[base], EPWM_PERIOD_DIRECT_LOAD                      );
      EPWM_setTimeBasePeriod      ( pwmHandle[base], INV_PWM_TICKS / 2                            );
      EPWM_setPhaseShift          ( pwmHandle[base], 0                                            );
      EPWM_setTimeBaseCounter     ( pwmHandle[base], 0                                            );
      EPWM_setTimeBaseCounterMode ( pwmHandle[base], EPWM_COUNTER_MODE_UP_DOWN                    );
      EPWM_setClockPrescaler      ( pwmHandle[base], EPWM_CLOCK_DIVIDER_1, EPWM_HSCLOCK_DIVIDER_1 );

      EPWM_disablePhaseShiftLoad ( pwmHandle[base]                                      );

      // sync "down-stream"
      EPWM_setSyncOutPulseMode   ( pwmHandle[base], EPWM_SYNC_OUT_PULSE_ON_COUNTER_ZERO );

      // Counter Compare Submodule Registers
      // set duty 0% initially
      EPWM_setCounterCompareValue          ( pwmHandle[base], EPWM_COUNTER_COMPARE_A, 0                           );
      EPWM_setCounterCompareShadowLoadMode ( pwmHandle[base], EPWM_COUNTER_COMPARE_A, EPWM_COMP_LOAD_ON_CNTR_ZERO );

      // Action Qualifier SubModule Registers
      EPWM_setActionQualifierActionComplete(pwmHandle[base], EPWM_AQ_OUTPUT_A, (EPWM_ActionQualifierEventAction)(EPWM_AQ_OUTPUT_LOW_UP_CMPA | EPWM_AQ_OUTPUT_HIGH_DOWN_CMPA));

      // Active high complementary PWMs - Set up the deadband
      EPWM_setRisingEdgeDeadBandDelayInput  ( pwmHandle[base], EPWM_DB_INPUT_EPWMA );
      EPWM_setFallingEdgeDeadBandDelayInput ( pwmHandle[base], EPWM_DB_INPUT_EPWMA );

      EPWM_setDeadBandDelayMode     ( pwmHandle[base], EPWM_DB_RED, true                         );
      EPWM_setDeadBandDelayMode     ( pwmHandle[base], EPWM_DB_FED, true                         );
      EPWM_setDeadBandDelayPolarity ( pwmHandle[base], EPWM_DB_RED, EPWM_DB_POLARITY_ACTIVE_HIGH );
      EPWM_setDeadBandDelayPolarity ( pwmHandle[base], EPWM_DB_FED, EPWM_DB_POLARITY_ACTIVE_LOW  );
      EPWM_setRisingEdgeDelayCount  ( pwmHandle[base], 200                                       );
      EPWM_setFallingEdgeDelayCount ( pwmHandle[base], 200                                       );
   }

   // configure 2 and 3 as slaves
   EPWM_setSyncOutPulseMode   ( EPWM2_BASE, EPWM_SYNC_OUT_PULSE_ON_EPWMxSYNCIN );
   EPWM_enablePhaseShiftLoad  ( EPWM2_BASE                                     );
   EPWM_setPhaseShift         ( EPWM2_BASE, 2                                  );
   EPWM_setCountModeAfterSync ( EPWM2_BASE, EPWM_COUNT_MODE_UP_AFTER_SYNC      );

   EPWM_setSyncOutPulseMode   ( EPWM3_BASE, EPWM_SYNC_OUT_PULSE_ON_EPWMxSYNCIN );
   EPWM_enablePhaseShiftLoad  ( EPWM3_BASE                                     );
   EPWM_setPhaseShift         ( EPWM3_BASE, 2                                  );
   EPWM_setCountModeAfterSync ( EPWM3_BASE, EPWM_COUNT_MODE_UP_AFTER_SYNC      );

   // **********************************************
   // Sigma Delta clock set up - pwm5
   // **********************************************
   // Configure PWM5A for SD Clock i.e. 20Mhz
   // 20 Mhz => 50ns => 50ns/10
   // PWM5B - clock SDFM for DCBUS voltage sensing
   // PWM5A - clock SDFM for Phase current sensing (not used)
   // set Immediate load
   EPWM_setPeriodLoadMode(EPWM5_BASE, EPWM_PERIOD_DIRECT_LOAD);
   // PWM frequency = 1 / period
   EPWM_setTimeBasePeriod      ( EPWM5_BASE, SDFM_TICKS-1                                 );
   EPWM_setPhaseShift          ( EPWM5_BASE, 0                                            );
   EPWM_setTimeBaseCounter     ( EPWM5_BASE, 0                                            );
   EPWM_setTimeBaseCounterMode ( EPWM5_BASE, EPWM_COUNTER_MODE_UP                         );
   EPWM_setClockPrescaler      ( EPWM5_BASE, EPWM_CLOCK_DIVIDER_1, EPWM_HSCLOCK_DIVIDER_1 );

   EPWM_disablePhaseShiftLoad(EPWM5_BASE);

   // sync "down-stream"
   EPWM_setSyncOutPulseMode(EPWM5_BASE, EPWM_SYNC_OUT_PULSE_ON_COUNTER_ZERO);

   // Counter Compare Submodule Registers
   // set duty 0% initially
   EPWM_setCounterCompareValue          ( EPWM5_BASE, EPWM_COUNTER_COMPARE_A, 0                           );
   EPWM_setCounterCompareShadowLoadMode ( EPWM5_BASE, EPWM_COUNTER_COMPARE_A, EPWM_COMP_LOAD_ON_CNTR_ZERO );

   // Action Qualifier SubModule Registers
   EPWM_setActionQualifierActionComplete ( EPWM5_BASE ,EPWM_AQ_OUTPUT_A       ,(EPWM_ActionQualifierEventAction )(EPWM_AQ_OUTPUT_LOW_UP_CMPA | EPWM_AQ_OUTPUT_HIGH_ZERO));
   EPWM_setActionQualifierActionComplete ( EPWM5_BASE ,EPWM_AQ_OUTPUT_B       ,(EPWM_ActionQualifierEventAction )(EPWM_AQ_OUTPUT_LOW_UP_CMPA | EPWM_AQ_OUTPUT_HIGH_ZERO));
   EPWM_setCounterCompareValue           ( EPWM5_BASE ,EPWM_COUNTER_COMPARE_A ,(uint16_t                  )(EPWM_getTimeBasePeriod(EPWM5_BASE) >> 1))              ;
   EPWM_setSyncOutPulseMode              ( EPWM5_BASE ,EPWM_SYNC_OUT_PULSE_ON_EPWMxSYNCIN                 )                                                        ;

   // ****************************************************************
   // pwm10 is used to passover pwm1 sync to pwm11 for SDFM sync
   // ****************************************************************
   SysCtl_setSyncInputConfig ( SYSCTL_SYNC_IN_EPWM10, SYSCTL_SYNC_IN_SRC_EPWM1SYNCOUT );
   EPWM_setSyncOutPulseMode  ( EPWM10_BASE, EPWM_SYNC_OUT_PULSE_ON_EPWMxSYNCIN        );

   // ****************************************************************
   // sync SDFM filter windows with motor control PWMs - pwm11
   // ****************************************************************
#if (SAMPLING_METHOD == SINGLE_SAMPLING)
   configurePWM_1chUpCnt(EPWM11_BASE, INV_PWM_TICKS);
#elif (SAMPLING_METHOD == DOUBLE_SAMPLING)
   configurePWM_1chUpCnt(EPWM11_BASE, INV_PWM_TICKS / 2);
#endif

   EPWM_enablePhaseShiftLoad  ( EPWM11_BASE                                );
   EPWM_setPhaseShift         ( EPWM11_BASE, 2                             );
   EPWM_setCountModeAfterSync ( EPWM11_BASE, EPWM_COUNT_MODE_UP_AFTER_SYNC );

   //for current sensing (not used)
   EPWM_setCounterCompareValue ( EPWM11_BASE, EPWM_COUNTER_COMPARE_C, (uint16_t )(EPWM_getTimeBasePeriod(EPWM11_BASE) - SDFM_TICKS*(OSR_RATE+1)*3/2));
   // for voltage sensing
   EPWM_setCounterCompareValue ( EPWM11_BASE, EPWM_COUNTER_COMPARE_D, (uint16_t )(EPWM_getTimeBasePeriod(EPWM11_BASE) - SDFM_TICKS*(OSR_RATE+1)*3/2));

   // 500 is arbitrary - to call motorISR (not used)
   EPWM_setCounterCompareValue ( EPWM11_BASE, EPWM_COUNTER_COMPARE_A, (uint16_t )((SDFM_TICKS*(OSR_RATE+1)*3/2) + 500))                              ;
   SysCtl_disablePeripheral    ( SYSCTL_PERIPH_CLK_TBCLKSYNC                    )                                                                    ;

   // Setting up link from EPWM to ADC
   //    - EPWM1 - Inverter currents at sampling frequency (@ PRD or @ (PRD&ZRO) )
#if (SAMPLING_METHOD == SINGLE_SAMPLING)
   // Select SOC from counter at ctr = prd
   EPWM_setADCTriggerSource(EPWM1_BASE, EPWM_SOC_A, EPWM_SOC_TBCTR_PERIOD);
#elif (SAMPLING_METHOD == DOUBLE_SAMPLING)
   // Select SOC from counter at ctr = 0 or ctr = prd
   EPWM_setADCTriggerSource(EPWM1_BASE, EPWM_SOC_A, EPWM_SOC_TBCTR_ZERO_OR_PERIOD);
#endif
   // Generate pulse on 1st event
   EPWM_setADCTriggerEventPrescale(EPWM1_BASE, EPWM_SOC_A, 1);

   // Enable SOC on A group
   EPWM_enableADCTrigger(EPWM1_BASE, EPWM_SOC_A);

   // Configure INTerrupts

   // Enable EPWM11 INT to reset SDFM in sync with control PWMs
   // Select INT @ ctr = CMPA up
   EPWM_setInterruptSource             ( EPWM11_BASE, EPWM_INT_TBCTR_U_CMPA );
   // Enable INT
   EPWM_enableInterrupt                ( EPWM11_BASE                        );
   // Generate INT on every event
   EPWM_setInterruptEventCount         ( EPWM11_BASE, 1                     );
   EPWM_clearEventTriggerInterruptFlag ( EPWM11_BASE                        );

   // Enable EPWM1 INT to generate MotorControlISR
#if (SAMPLING_METHOD == SINGLE_SAMPLING)
   // Select INT @ ctr = 0
   EPWM_setInterruptSource(EPWM1_BASE, EPWM_INT_TBCTR_PERIOD);
#elif (SAMPLING_METHOD == DOUBLE_SAMPLING)
   // Select INT @ ctr = 0 or ctr = prd
   EPWM_setInterruptSource(EPWM1_BASE, EPWM_INT_TBCTR_ZERO_OR_PERIOD);
#endif
   // Enable Interrupt Generation from the PWM module
   EPWM_enableInterrupt                ( EPWM1_BASE                  );
   // This needs to be 1 for the INTFRC to work
   EPWM_setInterruptEventCount         ( EPWM1_BASE, 1               );
   // Clear ePWM Interrupt flag
   EPWM_clearEventTriggerInterruptFlag ( EPWM1_BASE                  );
   Interrupt_register                  ( INT_EPWM1, &motorControlISR );

   // PWM Clocks Enable
   SysCtl_enablePeripheral ( SYSCTL_PERIPH_CLK_TBCLKSYNC );
   return;
}/*}}}*/
// Specific PWM configuration - 1 channel, up count
void configurePWM_1chUpCnt(uint32_t base, uint16_t period)/*{{{*/
{
                                                                                                                                                                 // Time Base SubModule Registers
    EPWM_setPeriodLoadMode                ( base, EPWM_PERIOD_DIRECT_LOAD                             )                                                        ; // set Immediate load
    EPWM_setTimeBasePeriod                ( base, period-1                                            )                                                        ; // PWM frequency = 1 / period
    EPWM_setPhaseShift                    ( base, 0                                                   )                                                        ;
    EPWM_setTimeBaseCounter               ( base, 0                                                   )                                                        ;
    EPWM_setTimeBaseCounterMode           ( base, EPWM_COUNTER_MODE_UP                                )                                                        ;
    EPWM_setClockPrescaler                ( base, EPWM_CLOCK_DIVIDER_1, EPWM_HSCLOCK_DIVIDER_1        )                                                        ;
    EPWM_disablePhaseShiftLoad            ( base                                                      )                                                        ;
                                                                                                                                                                 // sync "down-stream"
    EPWM_setSyncOutPulseMode              ( base, EPWM_SYNC_OUT_PULSE_ON_COUNTER_ZERO                 )                                                        ;

                                                                                                                                                                 // Counter Compare Submodule Registers
                                                                                                                                                                 // set duty 0% initially
    EPWM_setCounterCompareValue           ( base, EPWM_COUNTER_COMPARE_A, 0                           )                                                        ;
    EPWM_setCounterCompareShadowLoadMode  ( base, EPWM_COUNTER_COMPARE_A, EPWM_COMP_LOAD_ON_CNTR_ZERO )                                                        ;

                                                                                                                                                                 // Action Qualifier SubModule Registers
    EPWM_setActionQualifierActionComplete ( base, EPWM_AQ_OUTPUT_A,
                                          ( EPWM_ActionQualifierEventAction                           )(EPWM_AQ_OUTPUT_LOW_UP_CMPA | EPWM_AQ_OUTPUT_HIGH_ZERO));

                                                                                                                                                                 // Active high complementary PWMs - Set up the deadband
    EPWM_setRisingEdgeDeadBandDelayInput  ( base, EPWM_DB_INPUT_EPWMA                                 )                                                        ;
    EPWM_setFallingEdgeDeadBandDelayInput ( base, EPWM_DB_INPUT_EPWMA                                 )                                                        ;
    EPWM_setDeadBandDelayMode             ( base, EPWM_DB_RED, true                                   )                                                        ;
    EPWM_setDeadBandDelayMode             ( base, EPWM_DB_FED, true                                   )                                                        ;
    EPWM_setDeadBandDelayPolarity         ( base, EPWM_DB_RED, EPWM_DB_POLARITY_ACTIVE_HIGH           )                                                        ;
    EPWM_setDeadBandDelayPolarity         ( base, EPWM_DB_FED, EPWM_DB_POLARITY_ACTIVE_LOW            )                                                        ;
    EPWM_setRisingEdgeDelayCount          ( base, 0                                                   )                                                        ;
    EPWM_setFallingEdgeDelayCount         ( base, 0                                                   )                                                        ;

    return;
}/*}}}*/
// Specific PWM configuration - 1 channel, up-down count
void configurePWM_1chUpDwnCnt(uint32_t base, uint16_t period, int16_t db)/*{{{*/
{
    // Time Base SubModule Registers
    // set Immediate load
    EPWM_setPeriodLoadMode               ( base, EPWM_PERIOD_DIRECT_LOAD                             );
    EPWM_setTimeBasePeriod               ( base, period / 2                                          );
    EPWM_setPhaseShift                   ( base, 0                                                   );
    EPWM_setTimeBaseCounter              ( base, 0                                                   );
    EPWM_setTimeBaseCounterMode          ( base, EPWM_COUNTER_MODE_UP_DOWN                           );
    EPWM_setClockPrescaler               ( base, EPWM_CLOCK_DIVIDER_1, EPWM_HSCLOCK_DIVIDER_1        );

    EPWM_disablePhaseShiftLoad           ( base                                                      );
    // sync "down-stream"
    EPWM_setSyncOutPulseMode             ( base, EPWM_SYNC_OUT_PULSE_ON_COUNTER_ZERO                 );

    // Counter Compare Submodule Registers
    // set duty 0% initially
    EPWM_setCounterCompareValue          ( base, EPWM_COUNTER_COMPARE_A, 0                           );
    EPWM_setCounterCompareShadowLoadMode ( base, EPWM_COUNTER_COMPARE_A, EPWM_COMP_LOAD_ON_CNTR_ZERO );

    // Action Qualifier SubModule Registers
    EPWM_setActionQualifierActionComplete(base, EPWM_AQ_OUTPUT_A, (EPWM_ActionQualifierEventAction)(EPWM_AQ_OUTPUT_LOW_UP_CMPA | EPWM_AQ_OUTPUT_HIGH_DOWN_CMPA));

    // Active high complementary PWMs - Set up the deadband
    EPWM_setRisingEdgeDeadBandDelayInput  ( base, EPWM_DB_INPUT_EPWMA                       );
    EPWM_setFallingEdgeDeadBandDelayInput ( base, EPWM_DB_INPUT_EPWMA                       );
    EPWM_setDeadBandDelayMode             ( base, EPWM_DB_RED, true                         );
    EPWM_setDeadBandDelayMode             ( base, EPWM_DB_FED, true                         );
    EPWM_setDeadBandDelayPolarity         ( base, EPWM_DB_RED, EPWM_DB_POLARITY_ACTIVE_HIGH );
    EPWM_setDeadBandDelayPolarity         ( base, EPWM_DB_FED, EPWM_DB_POLARITY_ACTIVE_LOW  );
    EPWM_setRisingEdgeDelayCount          ( base, db                                        );
    EPWM_setFallingEdgeDelayCount         ( base, db                                        );

    return;
}/*}}}*/

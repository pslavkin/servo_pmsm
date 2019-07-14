#include "driverlib.h"
#include "device.h"
#include "scia.h"
#include "sm.h"
#include "events.h"
#include "everythings.h"
#include "adc.h"
#include "sysctl.h"
#include "opt.h"
#include "eqep_.h"

void initEPWM(uint32_t base);
__interrupt void epwm1ISR(void);

void initPwm(void)
{
   // Assign the interrupt service routines to ePWM interrupts
   Interrupt_register(INT_EPWM1, &epwm1ISR);

   // Configure GPIO0/1 ePWM1A/1B
   GPIO_setPadConfig ( 0 ,GPIO_PIN_TYPE_STD );
   GPIO_setPadConfig ( 1 ,GPIO_PIN_TYPE_STD );
   GPIO_setPinConfig ( GPIO_0_EPWM1A        );
   GPIO_setPinConfig ( GPIO_1_EPWM1B        );


   // Disable sync(Freeze clock to PWM as well)
   SysCtl_disablePeripheral(SYSCTL_PERIPH_CLK_GTBCLKSYNC);
   SysCtl_disablePeripheral(SYSCTL_PERIPH_CLK_TBCLKSYNC);

   // Initialize PWM1 without phase shift as master
   initEPWM(EPWM1_BASE);

   // Enable sync and clock to PWM
   SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_TBCLKSYNC);

   // Enable ePWM interrupts
   Interrupt_enable(INT_EPWM1);
}

// epwm1ISR - ePWM 1 ISR
__interrupt void epwm1ISR(void)
{
   PosSpeed_calculate(&posSpeed);
   // Clear INT flag for this timer
   EPWM_clearEventTriggerInterruptFlag(EPWM1_BASE);
   // Acknowledge interrupt group
   Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP3);
}

#define TB_CLK                DEVICE_SYSCLK_FREQ / 2   // 100Mhz, Time base clock is SYSCLK / 2 (sysclk = 200Mhz)
#define PWM_CLK               5000                     // or 300 rpm (= 4 * 5000 cnts/sec * 60 sec/min) / 4000 cnts/rev)
#define EPWM_TIMER_PERIOD     (TB_CLK / (PWM_CLK * 2)) // Calculate value period value for an up/down pwm counter mode
#define ENCODER_RESOLUTION    4000                     // 4000 edges per revolution

void initEPWM(uint32_t base)
{
    // Set-up TBCLK
    EPWM_setTimeBasePeriod  ( base, EPWM_TIMER_PERIOD );
    EPWM_setPhaseShift      ( base, 0U               );
    EPWM_setTimeBaseCounter ( base, 0U               );

    // Set Compare values
    EPWM_setCounterCompareValue(base, EPWM_COUNTER_COMPARE_A, EPWM_TIMER_PERIOD/2);
    EPWM_setCounterCompareValue(base, EPWM_COUNTER_COMPARE_B, EPWM_TIMER_PERIOD/2);

    // Set up counter mode
    EPWM_setTimeBaseCounterMode ( base, EPWM_COUNTER_MODE_UP_DOWN                    );
    EPWM_disablePhaseShiftLoad  ( base                                               );
    EPWM_setClockPrescaler      ( base, EPWM_CLOCK_DIVIDER_1, EPWM_HSCLOCK_DIVIDER_1 );

    // Set up shadowing
    EPWM_setCounterCompareShadowLoadMode(base, EPWM_COUNTER_COMPARE_A, EPWM_COMP_LOAD_ON_CNTR_ZERO);
    EPWM_setCounterCompareShadowLoadMode(base, EPWM_COUNTER_COMPARE_B, EPWM_COMP_LOAD_ON_CNTR_ZERO);

    // Set action qualifier behavior on compare A events
    // - EPWM1A --> 1 when CTR = CMPA and increasing
    // - EPWM1A --> 0 when CTR = CMPA and decreasing
    EPWM_setActionQualifierAction ( base ,EPWM_AQ_OUTPUT_A ,EPWM_AQ_OUTPUT_HIGH ,EPWM_AQ_OUTPUT_ON_TIMEBASE_UP_CMPA   );
    EPWM_setActionQualifierAction ( base ,EPWM_AQ_OUTPUT_A ,EPWM_AQ_OUTPUT_LOW  ,EPWM_AQ_OUTPUT_ON_TIMEBASE_DOWN_CMPA );

    // Set action qualifier behavior on compare B events
    // - EPWM1B --> 1 when CTR = PRD and increasing
    // - EPWM1B --> 0 when CTR = 0 and decreasing
    EPWM_setActionQualifierAction ( base ,EPWM_AQ_OUTPUT_B ,EPWM_AQ_OUTPUT_HIGH ,EPWM_AQ_OUTPUT_ON_TIMEBASE_PERIOD );
    EPWM_setActionQualifierAction ( base ,EPWM_AQ_OUTPUT_B ,EPWM_AQ_OUTPUT_LOW  ,EPWM_AQ_OUTPUT_ON_TIMEBASE_ZERO   );

    // Interrupt where we will change the Compare Values
    // Select INT on Time base counter zero event,
    // Enable INT, generate INT on 1rd event
    EPWM_setInterruptSource     ( base, EPWM_INT_TBCTR_ZERO );
    EPWM_enableInterrupt        ( base                      );
    EPWM_setInterruptEventCount ( base, 1U                  );
}

#include "driverlib.h"
#include "device.h"
#include "events.h"
#include "everythings.h"
#include "leds.h"

bool systickFlag=false;

__interrupt void  cpuTimer2ISR   ( void                                              );
void              initCPUTimers  ( void                                              );
void              configCPUTimer ( uint32_t cpuTimer, uint32_t freq, uint32_t period );

void initTimer2(void)
{
    // ISRs for each CPU Timer interrupt
    Interrupt_register(INT_TIMER2, &cpuTimer2ISR);

    // Initializes the Device Peripheral. For this example, only initialize the Cpu Timers.
    initCPUTimers();

    // Configure CPU-Timer 0, 1, and 2 to interrupt every second:
    // 1 second Period (in uSeconds)
    configCPUTimer(CPUTIMER2_BASE, DEVICE_SYSCLK_FREQ, 100000);

    // To ensure precise timing, use write-only instructions to write to the
    // entire register. Therefore, if any of the configuration bits are changed
    // in configCPUTimer and initCPUTimers, the below settings must also
    // be updated.
    CPUTimer_enableInterrupt(CPUTIMER2_BASE);
    //
    // Enables CPU int1, int13, and int14 which are connected to CPU-Timer 0,
    // CPU-Timer 1, and CPU-Timer 2 respectively.
    // Enable TINT0 in the PIE: Group 1 interrupt 7
    Interrupt_enable(INT_TIMER2);

    // Starts CPU-Timer 0, CPU-Timer 1, and CPU-Timer 2.
    CPUTimer_startTimer(CPUTIMER2_BASE);
}

// initCPUTimers - This function initializes all three CPU timers
// to a known state.
void initCPUTimers(void)
{
    // Initialize timer period to maximum
    CPUTimer_setPeriod(CPUTIMER2_BASE, 0xFFFFFFFF);

    // Initialize pre-scale counter to divide by 1 (SYSCLKOUT)
    CPUTimer_setPreScaler(CPUTIMER2_BASE, 0);

    // Make sure timer is stopped
    CPUTimer_stopTimer(CPUTIMER2_BASE);

    // Reload all counter register with period value
    CPUTimer_reloadTimerCounter(CPUTIMER2_BASE);
}

//
// configCPUTimer - This function initializes the selected timer to the
// period specified by the "freq" and "period" parameters. The "freq" is
// entered as Hz and the period in uSeconds. The timer is held in the stopped
// state after configuration.
//void configCPUTimer(uint32_t cpuTimer, float freq, float period)
void configCPUTimer(uint32_t cpuTimer, uint32_t freq, uint32_t period)
{
    // Initialize timer period:
    CPUTimer_setPeriod(cpuTimer ,(freq / 1000000) * period );

    // Set pre-scale counter to divide by 1 (SYSCLKOUT):
    CPUTimer_setPreScaler(cpuTimer, 0);

    // Initializes timer control register. The timer is stopped, reloaded,
    // free run disabled, and interrupt enabled.
    // Additionally, the free and soft bits are set
    CPUTimer_stopTimer          ( cpuTimer                                                );
    CPUTimer_reloadTimerCounter ( cpuTimer                                                );
    CPUTimer_setEmulationMode   ( cpuTimer, CPUTIMER_EMULATIONMODE_STOPAFTERNEXTDECREMENT );
    CPUTimer_enableInterrupt    ( cpuTimer                                                );
}


void disableTimer2Interrupt(void)
{
   CPUTimer_disableInterrupt ( CPUTIMER2_BASE );
}
void enableTimer2Interrupt(void)
{
   CPUTimer_enableInterrupt ( CPUTIMER2_BASE );
}

__interrupt void cpuTimer2ISR(void)
{
    // The CPU acknowledges the interrupt.
    systickFlag=true;
}

void systickFunc(void)
{
   if(systickFlag==true) {
      systickFlag=false;
      led1Toogle();
      Send_Event(ANY_Event,everythings());
   }
}




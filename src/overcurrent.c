#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
#include "schedule.h"
#include "scia.h"
#include "overcurrent.h"
#include "opt.h"
#include "fcl.h"

uint16_t                 tripFlagDMC      = 0         ; // PWM trip status
uint16_t                 clearTripFlagDMC = 0         ;

// CMPSS parameters for Over Current Protection
uint16_t clkPrescale = 20;
uint16_t sampWin     = 30;
uint16_t thresh      = 18;

uint16_t    LEM_curHi;//   = LEM(8.0);
uint16_t    LEM_curLo;//   = LEM(8.0);
float32_t   curLimit = 4;

// Setup OCP limits and digital filter parameters of CMPSS
void configureCMPSSFilter(uint32_t base, uint16_t curHi, uint16_t curLo)/*{{{*/
{
    // comparator references
    CMPSS_setDACValueHigh ( base, curHi );
    CMPSS_setDACValueLow  ( base, curLo );

    // digital filter settings - HIGH side
    CMPSS_configFilterHigh(base, clkPrescale, sampWin, thresh);

    // digital filter settings - LOW side
    CMPSS_configFilterLow(base, clkPrescale, sampWin, thresh);

    return;
}/*}}}*/
// CMPSS Configuration
void configureCMPSS(uint32_t base, int16_t Hi, int16_t Lo)/*{{{*/
{
    // Set up COMPCTL register
    // NEG signal from DAC for COMP-H
    CMPSS_configHighComparator(base, CMPSS_INSRC_DAC);

    // NEG signal from DAC for COMP-L, COMP-L output is inverted
    CMPSS_configLowComparator(base, CMPSS_INSRC_DAC | CMPSS_INV_INVERTED);

    // Dig filter output ==> CTRIPH, Dig filter output ==> CTRIPOUTH
    CMPSS_configOutputsHigh(base, CMPSS_TRIP_FILTER | CMPSS_TRIPOUT_FILTER);

    // Dig filter output ==> CTRIPL, Dig filter output ==> CTRIPOUTL
    CMPSS_configOutputsLow(base, CMPSS_TRIP_FILTER | CMPSS_TRIPOUT_FILTER);

    // Set up COMPHYSCTL register
    CMPSS_setHysteresis(base, 2); // COMP hysteresis set to 2x typical value

    // set up COMPDACCTL register
    // VDDA is REF for CMPSS DACs, DAC updated on sysclock, Ramp bypassed
    CMPSS_configDAC(base, CMPSS_DACREF_VDDA | CMPSS_DACVAL_SYSCLK | CMPSS_DACSRC_SHDW);

    // Load DACs - High and Low
    CMPSS_setDACValueHigh ( base, Hi ); // Set DAC-H to allowed MAX +ve current
    CMPSS_setDACValueLow  ( base, Lo ); // Set DAC-L to allowed MAX -ve current

    // digital filter settings - HIGH side
    // set time between samples, max : 1023, # of samples in window,
    // max : 31, recommended : thresh > sampWin/2
    CMPSS_configFilterHigh ( base, clkPrescale, sampWin, thresh );
    CMPSS_initFilterHigh   ( base                               ); // Init samples to filter input value

    // digital filter settings - LOW side
    // set time between samples, max : 1023, # of samples in window,
    // max : 31, recommended : thresh > sampWin/2
    CMPSS_configFilterLow ( base, clkPrescale, sampWin, thresh );
    CMPSS_initFilterLow   ( base                               ); // Init samples to filter input value

    // Clear the status register for latched comparator events
    CMPSS_clearFilterLatchHigh ( base );
    CMPSS_clearFilterLatchLow  ( base );

    // Enable CMPSS
    CMPSS_enableModule(base);

    DEVICE_DELAY_US(500);
    return;
}/*}}}*/
// Configure HVDMC Protection Against Over Current
void initOvercurrent(void)/*{{{*/
{
    uint16_t base;

    // GPIO40 - input, used to read status of the LEM overcurrent macro block
    // GPIO41 - output, used to clear the LEM overcurrent fault
    // GPIO58 - output, used to force IPM shutdown on TRIP
    // Configure GPIO used for Trip Mechanism

    // GPIO input for reading the status of the LEM-overcurrent macro block
    // (active low), GPIO40 could trip PWM based on this, if desired
    // Configure as Input
    GPIO_setPinConfig     ( GPIO_40_GPIO40           ); // choose GPIO for mux option
    GPIO_setDirectionMode ( 40, GPIO_DIR_MODE_IN     ); // set as input
    GPIO_setPadConfig     ( 40, GPIO_PIN_TYPE_INVERT ); // invert the input

    //Select GPIO40 as INPUTXBAR2
    XBAR_setInputPin(XBAR_INPUT2, 40);

    // Clearing the Fault(active low), GPIO41
    // Configure as Output
    GPIO_setPinConfig     ( GPIO_41_GPIO41        ); // choose GPIO for mux option
    GPIO_setDirectionMode ( 41, GPIO_DIR_MODE_OUT ); // set as output
    GPIO_writePin         ( 41, 1                 );

    // Forcing IPM Shutdown (Trip) using GPIO58 (Active high)
    // Configure as Output
    GPIO_setPinConfig     ( GPIO_58_GPIO58        ); // choose GPIO for mux option
    GPIO_setDirectionMode ( 58, GPIO_DIR_MODE_OUT ); // set as output
    GPIO_writePin         ( 58, 0                 );

    // LEM Current phase V(ADC A2, COMP1) and W(ADC B2, COMP3),
    // High Low Compare event trips
    LEM_curHi = 2048 + LEM(curLimit);
    LEM_curLo = 2048 - LEM(curLimit);

    configureCMPSS(CMPSS1_BASE, LEM_curHi, LEM_curLo);  //Enable CMPSS1 - LEM V
    configureCMPSS(CMPSS3_BASE, LEM_curHi, LEM_curLo);  //Enable CMPSS3 - LEM W

    // Configure TRIP 4 to OR the High and Low trips from both comparator 1 & 3
    // Clear everything first
    EALLOW;
    HWREG(XBAR_EPWM_CFG_REG_BASE + XBAR_O_TRIP4MUX0TO15CFG)  = 0;
    HWREG(XBAR_EPWM_CFG_REG_BASE + XBAR_O_TRIP4MUX16TO31CFG) = 0;
    EDIS;

    // Enable Muxes for ored input of CMPSS1H and 1L, i.e. .1 mux for Mux0
    //cmpss1 - tripH or tripL
    XBAR_setEPWMMuxConfig(XBAR_TRIP4, XBAR_EPWM_MUX00_CMPSS1_CTRIPH_OR_L);

    //cmpss3 - tripH or tripL
    XBAR_setEPWMMuxConfig(XBAR_TRIP4, XBAR_EPWM_MUX04_CMPSS3_CTRIPH_OR_L);

    //cmpss2 - tripH or tripL
    XBAR_setEPWMMuxConfig(XBAR_TRIP4, XBAR_EPWM_MUX02_CMPSS2_CTRIPH_OR_L);

    //cmpss6 - tripH or tripL
    XBAR_setEPWMMuxConfig(XBAR_TRIP4, XBAR_EPWM_MUX10_CMPSS6_CTRIPH_OR_L);

    //inputxbar2 trip
    XBAR_setEPWMMuxConfig(XBAR_TRIP4, XBAR_EPWM_MUX03_INPUTXBAR2);

    // Disable all the muxes first
    XBAR_disableEPWMMux(XBAR_TRIP4, 0xFFFF);

    // Enable Mux 0  OR Mux 4 to generate TRIP4
    XBAR_enableEPWMMux(XBAR_TRIP4, XBAR_MUX00 | XBAR_MUX04 | XBAR_MUX02 | XBAR_MUX10 | XBAR_MUX03);

    // Configure TRIP for motor inverter phases
    uint32_t pwmHandle[3]     = {EPWM1_BASE, EPWM2_BASE, EPWM3_BASE };
    for(base = 0; base < 3; base++) {
        //Trip 4 is the input to the DCAHCOMPSEL
        EPWM_selectDigitalCompareTripInput           ( pwmHandle[base] ,EPWM_DC_TRIP_TRIPIN4 ,EPWM_DC_TYPE_DCAH                             );
        EPWM_setTripZoneDigitalCompareEventCondition ( pwmHandle[base] ,EPWM_TZ_DC_OUTPUT_A1 ,EPWM_TZ_EVENT_DCXH_HIGH                       );
        EPWM_setDigitalCompareEventSource            ( pwmHandle[base] ,EPWM_DC_MODULE_A     ,EPWM_DC_EVENT_1 ,EPWM_DC_EVENT_SOURCE_ORIG_SIGNAL );
        EPWM_setDigitalCompareEventSyncMode          ( pwmHandle[base] ,EPWM_DC_MODULE_A     ,EPWM_DC_EVENT_1 ,EPWM_DC_EVENT_INPUT_NOT_SYNCED   );
        EPWM_enableTripZoneSignals                   ( pwmHandle[base] ,EPWM_TZ_SIGNAL_DCAEVT1                                              );

        // Emulator Stop
        EPWM_enableTripZoneSignals(pwmHandle[base], EPWM_TZ_SIGNAL_CBC6);

        // What do we want the OST/CBC events to do?
        // TZA events can force EPWMxA
        // TZB events can force EPWMxB

        // EPWMxA will go low
        // EPWMxB will go low
        EPWM_setTripZoneAction ( pwmHandle[base], EPWM_TZ_ACTION_EVENT_TZA, EPWM_TZ_ACTION_LOW );
        EPWM_setTripZoneAction ( pwmHandle[base], EPWM_TZ_ACTION_EVENT_TZB, EPWM_TZ_ACTION_LOW );

        // Clear any spurious OV trip
        EPWM_clearTripZoneFlag ( pwmHandle[base], EPWM_TZ_FLAG_DCAEVT1 );
        EPWM_clearTripZoneFlag ( pwmHandle[base], EPWM_TZ_FLAG_OST     );
        EPWM_clearTripZoneFlag ( pwmHandle[base], EPWM_TZ_FLAG_CBC     );
    }
    New_Periodic_Func_Schedule(10,testOvercurrent);
    return;
}/*}}}*/
// test overcurrent periodically
void testOvercurrent(void)/*{{{*/
{
//    // Current limit setting / tuning in Debug environment
//    LEM_curHi = 2048 + LEM(curLimit);
//    LEM_curLo = 2048 - LEM(curLimit);
//
//    configureCMPSSFilter(CMPSS1_BASE, LEM_curHi, LEM_curLo);      // LEM - V
//    configureCMPSSFilter(CMPSS3_BASE, LEM_curHi, LEM_curLo);      // LEM - W

    // Check for PWM trip due to over current
    if((EPWM_getTripZoneFlagStatus(EPWM1_BASE) & EPWM_TZ_FLAG_OST) ||
       (EPWM_getTripZoneFlagStatus(EPWM2_BASE) & EPWM_TZ_FLAG_OST) ||
       (EPWM_getTripZoneFlagStatus(EPWM3_BASE) & EPWM_TZ_FLAG_OST))
    {
        // if any EPwm's OST is set, force OST on all three to DISABLE inverter
        EPWM_forceTripZoneEvent(EPWM1_BASE, EPWM_TZ_FORCE_EVENT_OST);
        EPWM_forceTripZoneEvent(EPWM2_BASE, EPWM_TZ_FORCE_EVENT_OST);
        EPWM_forceTripZoneEvent(EPWM3_BASE, EPWM_TZ_FORCE_EVENT_OST);
        tripFlagDMC = 1;      // Trip on DMC (halt and IPM fault trip )
        sciPrintf("overcurrent protection!\r\n");
    }

    // If clear cmd received, reset PWM trip
    if(clearTripFlagDMC)
    {
        // clear the ocp latch in macro M6
        GPIO_writePin(41, 0);
        tripFlagDMC      = 0;
        clearTripFlagDMC = 0;
        GPIO_writePin(41, 1);

        // clear EPWM trip flags
        DEVICE_DELAY_US(1L);

        // clear OST & DCAEVT1 flags
        EPWM_clearTripZoneFlag(EPWM1_BASE, (EPWM_TZ_FLAG_OST | EPWM_TZ_FLAG_DCAEVT1));
        EPWM_clearTripZoneFlag(EPWM2_BASE, (EPWM_TZ_FLAG_OST | EPWM_TZ_FLAG_DCAEVT1));
        EPWM_clearTripZoneFlag(EPWM3_BASE, (EPWM_TZ_FLAG_OST | EPWM_TZ_FLAG_DCAEVT1));

        // clear HLATCH - (not in TRIP gen path)
        CMPSS_clearFilterLatchHigh(CMPSS1_BASE);
        CMPSS_clearFilterLatchHigh(CMPSS3_BASE);
        CMPSS_clearFilterLatchHigh(CMPSS2_BASE);
        CMPSS_clearFilterLatchHigh(CMPSS6_BASE);

        // clear LLATCH - (not in TRIP gen path)
        CMPSS_clearFilterLatchLow(CMPSS1_BASE);
        CMPSS_clearFilterLatchLow(CMPSS3_BASE);
        CMPSS_clearFilterLatchLow(CMPSS2_BASE);
        CMPSS_clearFilterLatchLow(CMPSS6_BASE);
    }
}/*}}}*/

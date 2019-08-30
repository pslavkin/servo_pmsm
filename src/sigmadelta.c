#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
#include "fcl_qep_f2837x_tmdxiddk_settings.h"
#include "driverlib.h"
#include "sigmadelta.h"
#include "F2837xD_device.h"
#include "scia.h"

//SD Trip Level - scope for additional work
uint16_t   hlt       = 0x7FFF;
uint16_t   llt       = 0x0;

// SDFM Configuration for current shunts V/W and DC bus voltage
void initSigmaDelta(void)/*{{{*/
{
    uint16_t pin;
    // SDFM GPIO configurations
    for(pin = 48; pin <= 53; pin++)
    {
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

    uint16_t flt;

    for (flt = 0; flt <= 3; flt++) {
        // Configure Input Control Mode: Modulator Clock rate = Modulator data
        // rate
        SDFM_setupModulatorClock(SDFM1_BASE, (SDFM_FilterNumber)flt, SDFM_MODULATOR_CLK_EQUAL_DATA_RATE);

        // Comparator Module
        // ******************************************************
        // Comparator HLT and LLT
        // Configure Comparator module's comparator filter type and
        // comparator's OSR value, high level threshold, low level threshold
        SDFM_setComparatorFilterType        ( SDFM1_BASE, (SDFM_FilterNumber )flt, SDFM_FILTER_SINC_3);
        SDFM_setCompFilterOverSamplingRatio ( SDFM1_BASE, (SDFM_FilterNumber )flt, 31)                ;
        SDFM_setCompFilterHighThreshold     ( SDFM1_BASE, (SDFM_FilterNumber )flt, hlt)               ;
        SDFM_setCompFilterLowThreshold      ( SDFM1_BASE, (SDFM_FilterNumber )flt, llt)               ;

        // Sinc filter Module
        // ******************************************************
        // Configure Data filter module's filter type, OSR value and enable /
        // disable data filter.
        // 16 bit data representation is chosen for OSR 128 using Sinc3, from
        // the table in the TRM.
        // The max value represented for OSR 128 using sinc 3
        // is +/-2097152 i.e. 2^21.
        // To represent this in 16 bit format where the first bit is
        // sign shift by 6 bits.
        SDFM_enableFilter               ( SDFM1_BASE, (SDFM_FilterNumber )flt)                         ;
        SDFM_setFilterType              ( SDFM1_BASE, (SDFM_FilterNumber )flt, SDFM_FILTER_SINC_3)     ;
        SDFM_setFilterOverSamplingRatio ( SDFM1_BASE, (SDFM_FilterNumber )flt, 127)                    ;
        SDFM_setOutputDataFormat        ( SDFM1_BASE, (SDFM_FilterNumber )flt, SDFM_DATA_FORMAT_16_BIT);
        SDFM_setDataShiftValue          ( SDFM1_BASE, (SDFM_FilterNumber )flt, 6)                      ;
    }

    // PWM11.CMPC, PWM11.CMPD, PWM12.CMPC and PWM12.CMPD signals cannot
    // synchronize the filters. This option is not being used in this
    // example.
    SDFM_enableExternalReset(SDFM1_BASE, SDFM_FILTER_1);
    SDFM_enableExternalReset(SDFM1_BASE, SDFM_FILTER_2);
    SDFM_enableExternalReset(SDFM1_BASE, SDFM_FILTER_3);
    SDFM_enableExternalReset(SDFM1_BASE, SDFM_FILTER_4);

    //
    // Enable Master filter bit: Unless this bit is set none of the filter
    // modules can be enabled. All the filter modules are synchronized when
    // master filter bit is enabled after individual filter modules are enabled.
    //
    SDFM_enableMasterFilter(SDFM1_BASE);

    return;
}/*}}}*/

#include "driverlib.h"
#include "device.h"
#include "IQmathLib.h"
#include "F2837xD_device.h"
#include "opt.h"
#include "fcl_qep_f2837x_tmdxiddk_settings.h"
#include "qep_defs.h"
#include "speed_fr.h"
#include "eqep_.h"

uint32_t dacHandle[3]     = {DACA_BASE, DACB_BASE, DACC_BASE };
// DAC Configuration
void initDac(void)/*{{{*/
{
    // DAC-A  ---> Resolver carrier excitation
    // DAC-B  ---> General purpose display
    // DAC-C  ---> General purpose display

    uint16_t base;

    for(base = 0; base < 3; base++) {
        // Set DAC voltage reference to VRefHi
        DAC_setReferenceVoltage(dacHandle[base], DAC_REF_ADC_VREFHI);

        // Set DAC shadow value register
        DAC_setShadowValue(dacHandle[base], 1024);

        //Enable DAC output
        DAC_enableOutput(dacHandle[base]);
    }

    // Resolver carrier excitation signal additional initialization

    // enable value change only on sync signal
    DAC_setLoadMode(DACA_BASE, DAC_LOAD_PWMSYNC);

    // sync sel 5 means sync from pwm 6
    DAC_setPWMSyncSignal(DACA_BASE, 5);

    return;
}/*}}}*/

void updateDac(void)
{
   // Variable display on DACs B and C
   //DAC_setShadowValue(DACB_BASE, DAC_MACRO_PU(pi_pos.Ref));
   //DAC_setShadowValue(DACC_BASE, DAC_MACRO_PU(pi_pos.Fbk));
}


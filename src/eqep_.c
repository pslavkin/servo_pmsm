#include "driverlib.h"
#include "device.h"
#include "IQmathLib.h"
#include "F2837xD_device.h"
#include "opt.h"
#include "fcl.h"
#include "qep_defs.h"
#include "speed_fr.h"
#include "eqep_.h"

#pragma DATA_SECTION(qep1,    "ClaData");
QEP             qep1;
// Variables for Position Sensor Suite
float32_t posEncElecTheta[6] = {0};
float32_t posEncMechTheta[6] = {0};

// Instance a speed measurement calc
#ifdef FCL_LIB
extern
#endif
SPEED_MEAS_QEP  speed1;

// Position Sensing Configuration
void initQep(void)/*{{{*/
{
    // Setup GPIO for QEP operation
    // QEP1A
    GPIO_setMasterCore        ( 20, GPIO_CORE_CPU1    );
    GPIO_setPadConfig         ( 20, GPIO_PIN_TYPE_STD );
    GPIO_setDirectionMode     ( 20, GPIO_DIR_MODE_IN  );
    GPIO_setQualificationMode ( 20, GPIO_QUAL_3SAMPLE );
    GPIO_setPinConfig         ( GPIO_20_EQEP1A        );

    // QEP1B
    GPIO_setMasterCore        ( 21, GPIO_CORE_CPU1    );
    GPIO_setPadConfig         ( 21, GPIO_PIN_TYPE_STD );
    GPIO_setDirectionMode     ( 21, GPIO_DIR_MODE_IN  );
    GPIO_setQualificationMode ( 21, GPIO_QUAL_3SAMPLE );
    GPIO_setPinConfig         ( GPIO_21_EQEP1B        );

    // QEP1I
    GPIO_setMasterCore        ( 23, GPIO_CORE_CPU1    );
    GPIO_setPadConfig         ( 23, GPIO_PIN_TYPE_STD );
    GPIO_setDirectionMode     ( 23, GPIO_DIR_MODE_IN  );
    GPIO_setQualificationMode ( 23, GPIO_QUAL_3SAMPLE );
    GPIO_setPinConfig         ( GPIO_23_EQEP1I        );

   // Init QEP parameters
   qep1.LineEncoder     = 2500;// these are the number of slots in the encoder
   qep1.MechScaler      = 0.25/qep1.LineEncoder;
   qep1.PolePairs       = POLES/2;
   qep1.CalibratedAngle = 0;

   // Configure the decoder for quadrature count mode, counting both
   // rising and falling edges (that is, 2x resolution)
   EQEP_setDecoderConfig ( EQEP1_BASE, (EQEP_CONFIG_2X_RESOLUTION | EQEP_CONFIG_QUADRATURE | EQEP_CONFIG_NO_SWAP ));
   EQEP_setEmulationMode ( EQEP1_BASE, EQEP_EMULATIONMODE_RUNFREE                                                ) ;

   // Configure the position counter to be latched on a unit time out
   // and latch on rising edge of index pulse
   EQEP_setLatchMode(EQEP1_BASE, (EQEP_LATCH_RISING_INDEX | EQEP_LATCH_UNIT_TIME_OUT));

   // Configure the position counter to reset on a maximum position
   EQEP_setPositionCounterConfig(EQEP1_BASE, EQEP_POSITION_RESET_MAX_POS, (4 * qep1.LineEncoder) - 1);

   // Disables the eQEP module position-compare unit
   EQEP_disableCompare(EQEP1_BASE);

   // Enable the unit timer, setting the frequency to 10KHz
   EQEP_enableUnitTimer(EQEP1_BASE, QEP_UNIT_TIMER_TICKS - 1);

   // Configure and enable the edge-capture unit. The capture clock divider is
   // SYSCLKOUT/128. The unit-position event divider is QCLK/32.
   EQEP_setCaptureConfig(EQEP1_BASE, EQEP_CAPTURE_CLK_DIV_128, EQEP_UNIT_POS_EVNT_DIV_32);

   // Enable QEP edge-capture unit
   EQEP_enableCapture(EQEP1_BASE);

   // Initialize the Speed module for speed calculation from QEP/RESOLVER
   speed1.K1      = 1/(BASE_FREQ*T);
   speed1.K2      = 1/(1+2*PI*T*5);      // Low-pass cut-off frequency
   speed1.K3      = 1-speed1.K2;
   speed1.BaseRpm = 120*(BASE_FREQ/POLES);

   // Enable UTO on QEP
   EQEP_enableInterrupt ( EQEP1_BASE, EQEP_INT_UNIT_TIME_OUT );
   EQEP_enableModule    ( EQEP1_BASE                         );

   return;
}/*}}}*/

float32 qep1ElecTheta ( void ) { return qep1.ElecTheta;}
float32 qep1MechTheta ( void ) { return qep1.MechTheta;}

#include "driverlib.h"
#include "device.h"
#include "scia.h"
#include "sm.h"
#include "events.h"
#include "everythings.h"
#include "systick.h"

void main2(void)
{
    Device_init               ( ); // Initialize device clock and peripherals
    Device_initGPIO           ( ); // Setup GPIO by disabling pin locks and enabling pullups
    initSCIAGpio              ( );
    Interrupt_initModule      ( ); // Initialize PIE and clear PIE registers. Disables CPU interrupts.
    Interrupt_initVectorTable ( ); // Initialize the PIE vector table with pointers to the shell Interrupt // Service Routines (ISR).
    initSCIAFIFO              ( );
    Init_Events               ( );
    Init_everythings          ( );
    initTimer2                ( );
//    EINT; // Enable Global Interrupt (INTM) and realtime interrupt (DBGM)
//    ERTM; // Enable Global realtime interrupt DBGM
//    for(;;) {
//       State_Machine();
//    }
}




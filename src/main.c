#include "driverlib.h"
#include "device.h"
#include "sci.h"

void main(void)
{
    Device_init               ( ); // Initialize device clock and peripherals
    Device_initGPIO           ( ); // Setup GPIO by disabling pin locks and enabling pullups
    initSCIAGpio              ( );
    Interrupt_initModule      ( ); // Initialize PIE and clear PIE registers. Disables CPU interrupts.
    Interrupt_initVectorTable ( ); // Initialize the PIE vector table with pointers to the shell Interrupt // Service Routines (ISR).
    initSCIAFIFO              ( );
    EINT;                          // Enable Global Interrupt (INTM) and realtime interrupt (DBGM)
    ERTM;
    for(;;) {

       SysCtl_delay(10000);
    }

}


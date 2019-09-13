#include "driverlib.h"
#include "device.h"
#include "scia.h"
#include "sm.h"
#include "events.h"
#include "everythings.h"
#include "systick.h" 
#include "fcl.h"

void main(void)
{
    Device_init               (       ); // Initialize device clock and peripherals
    DEVICE_DELAY_US           ( 1500U ); //TODO It's not necesary, I;m testin a bad function board and it seems to help.. but not much
    Device_initGPIO           (       ); // Setup GPIO by disabling pin locks and enabling pullups
    initSCIAGpio              (       );
    Interrupt_initModule      (       ); // Initialize PIE and clear PIE registers. Disables CPU interrupts.
    Interrupt_initVectorTable (       ); // Initialize the PIE vector table with pointers to the shell Interrupt // Service Routines (ISR).
    initSCIAFIFO              (       );
    initEvents                (       );
    Init_everythings          (       );
    initTimer2                (       );
    initFcl                   (       );
    EINT;                                // Enable Global Interrupt (INTM) and realtime interrupt (DBGM)
    ERTM;                                // Enable Global realtime interrupt DBGM
    for(;;) {
       State_Machine();
    }
}




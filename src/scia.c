#include "driverlib.h"
#include "device.h"

uint16_t rDataA[2];

__interrupt void sciaTXFIFOISR(void)/*{{{*/
{
    SCI_writeCharArray       ( SCIA_BASE, rDataA, 2    );
    Interrupt_disable        ( SCIA_BASE               );
    SCI_clearInterruptStatus ( SCIA_BASE, SCI_INT_TXFF );
    Interrupt_clearACKGroup  ( INTERRUPT_ACK_GROUP9    );
}/*}}}*/
__interrupt void sciaRXFIFOISR(void)/*{{{*/
{
    SCI_readCharArray        ( SCIA_BASE ,rDataA ,2    );
    SCI_writeCharArray       ( SCIA_BASE ,rDataA ,2    );
    SCI_clearOverflowStatus  ( SCIA_BASE               );
    SCI_clearInterruptStatus ( SCIA_BASE, SCI_INT_RXFF );
    Interrupt_clearACKGroup  ( INTERRUPT_ACK_GROUP9    );
}/*}}}*/
void initSCIAGpio(void)/*{{{*/
{
   // GPIO43 is the SCI Rx pin.
   GPIO_setMasterCore        ( 43, GPIO_CORE_CPU1    );
   GPIO_setPinConfig         ( GPIO_43_SCIRXDA       );
   GPIO_setDirectionMode     ( 43, GPIO_DIR_MODE_IN  );
   GPIO_setPadConfig         ( 43, GPIO_PIN_TYPE_STD );
   GPIO_setQualificationMode ( 43, GPIO_QUAL_ASYNC   );

   // GPIO42 is the SCI Tx pin.
   GPIO_setMasterCore        ( 42 ,GPIO_CORE_CPU1    );
   GPIO_setPinConfig         ( GPIO_42_SCITXDA       );
   GPIO_setDirectionMode     ( 42 ,GPIO_DIR_MODE_OUT );
   GPIO_setPadConfig         ( 42 ,GPIO_PIN_TYPE_STD );
   GPIO_setQualificationMode ( 42 ,GPIO_QUAL_ASYNC   );
}/*}}}*/
void initSCIAFIFO()/*{{{*/
{
    SCI_setConfig(SCIA_BASE, DEVICE_LSPCLK_FREQ, 9600, (SCI_CONFIG_WLEN_8 |
                                                        SCI_CONFIG_STOP_ONE |
                                                        SCI_CONFIG_PAR_NONE));
    SCI_enableModule   ( SCIA_BASE );
    SCI_enableLoopback ( SCIA_BASE );
    SCI_resetChannels  ( SCIA_BASE );
    SCI_enableFIFO     ( SCIA_BASE );

    // RX and TX FIFO Interrupts Enabled
    //SCI_enableInterrupt(SCIA_BASE, (SCI_INT_RXFF | SCI_INT_TXFF));
    SCI_enableInterrupt       ( SCIA_BASE, SCI_INT_RXFF               );
    SCI_disableInterrupt      ( SCIA_BASE, SCI_INT_RXERR              );

    SCI_setFIFOInterruptLevel ( SCIA_BASE, SCI_FIFO_TX2, SCI_FIFO_RX2 );
    SCI_performSoftwareReset  ( SCIA_BASE                             );

    SCI_resetTxFIFO(SCIA_BASE);
    SCI_resetRxFIFO(SCIA_BASE);

    Interrupt_register(INT_SCIA_RX, sciaRXFIFOISR);
    Interrupt_register(INT_SCIA_TX, sciaTXFIFOISR);

    Interrupt_enable(INT_SCIA_RX);
    //Interrupt_enable(INT_SCIA_TX);

    Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP9);
}/*}}}*/

#include "driverlib.h"
#include "device.h"
#include "cbuffer.h"

__interrupt void sciaTXFIFOISR(void)/*{{{*/
{
   char data[SCI_FIFO_TX16];
   uint16_t fifoSpace= SCI_FIFO_TX16-SCI_getTxFIFOStatus(SCIA_BASE);
   uint16_t cBufferLen;
   cBufferLen=readCBufferArray(&wBuff,data,fifoSpace);
   SCI_writeCharArray( SCIA_BASE ,data , cBufferLen );
   if(cBufferLen<fifoSpace)
      SCI_disableTxInterrupt ( SCIA_BASE );
   SCI_clearInterruptStatus ( SCIA_BASE, SCI_INT_TXFF    );
   Interrupt_clearACKGroup  ( INTERRUPT_ACK_GROUP9       );
}/*}}}*/

__interrupt void sciaRXFIFOISR(void)/*{{{*/
{
   char data[SCI_FIFO_RX16];
   uint16_t len= SCI_getRxFIFOStatus ( SCIA_BASE               );
   SCI_readCharArray                 ( SCIA_BASE ,data ,len    );
   writeCBufferArray                 ( &rBuff    ,data ,len    );
   SCI_enableTxInterrupt             ( SCIA_BASE               );

   SCI_clearOverflowStatus           ( SCIA_BASE               );
   SCI_clearInterruptStatus          ( SCIA_BASE ,SCI_INT_RXFF );
   Interrupt_clearACKGroup           ( INTERRUPT_ACK_GROUP9    );
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

void initSCIAFIFO(void)/*{{{*/
{
    SCI_setConfig(SCIA_BASE, DEVICE_LSPCLK_FREQ, 9600, (SCI_CONFIG_WLEN_8 |
                                                        SCI_CONFIG_STOP_ONE |
                                                        SCI_CONFIG_PAR_NONE));
    SCI_enableModule          ( SCIA_BASE                               );
    SCI_resetChannels         ( SCIA_BASE                               );
    SCI_enableFIFO            ( SCIA_BASE                               );
    SCI_enableInterrupt       ( SCIA_BASE   ,SCI_INT_RXFF               );
    SCI_disableInterrupt      ( SCIA_BASE   ,SCI_INT_RXERR              );
    SCI_setFIFOInterruptLevel ( SCIA_BASE   ,SCI_FIFO_TX2 ,SCI_FIFO_RX2 );
    SCI_performSoftwareReset  ( SCIA_BASE                               );
    SCI_resetTxFIFO           ( SCIA_BASE                               );
    SCI_resetRxFIFO           ( SCIA_BASE                               );
    Interrupt_register        ( INT_SCIA_RX ,sciaRXFIFOISR              );
    Interrupt_register        ( INT_SCIA_TX ,sciaTXFIFOISR              );
    Interrupt_enable          ( INT_SCIA_RX                             );
    Interrupt_enable          ( INT_SCIA_TX                             );
    initCBuffer();
    Interrupt_clearACKGroup   ( INTERRUPT_ACK_GROUP9                    );
}/*}}}*/

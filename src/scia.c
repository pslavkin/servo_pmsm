#include "driverlib.h"
#include "device.h"
#include "cbuffer.h"
#include "scia.h"

uint16_t rBuffPool[MAX_RCBUFFER_POOL+1];
uint16_t wBuffPool[MAX_WCBUFFER_POOL+1];
cBuffer_t rBuff,wBuff;

uint16_t wData[SCI_FIFO_TX16];
__interrupt void sciaTXFIFOISR(void)
{
   uint16_t fifoSpace  = SCI_FIFO_TX16-SCI_getTxFIFOStatus(SCIA_BASE);
   uint16_t cBufferLen = readCBufferArray(&wBuff,wData,fifoSpace);
   SCI_writeCharArrayNoneBlocking( SCIA_BASE , wData , cBufferLen );
   if(cBufferLen<fifoSpace)
      SCI_disableTxInterrupt ( SCIA_BASE );
   SCI_clearInterruptStatus ( SCIA_BASE, SCI_INT_TXFF    );
   Interrupt_clearACKGroup  ( INTERRUPT_ACK_GROUP9       );
}

uint16_t rData[SCI_FIFO_RX16];
__interrupt void sciaRXFIFOISR(void)
{
   uint16_t len= SCI_getRxFIFOStatus ( SCIA_BASE               );
   SCI_readCharArrayNoneBlocking     ( SCIA_BASE ,rData ,len   );
   writeCBufferArray                 ( &rBuff    ,rData ,len   );
   SCI_clearOverflowStatus           ( SCIA_BASE               );
   SCI_clearInterruptStatus          ( SCIA_BASE ,SCI_INT_RXFF );
   Interrupt_clearACKGroup           ( INTERRUPT_ACK_GROUP9    );
}
void initSCIAGpio(void)
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
}

void initSCIAFIFO(void)
{
    SCI_setConfig(SCIA_BASE, DEVICE_LSPCLK_FREQ, 9600, (SCI_CONFIG_WLEN_8 |
                                                        SCI_CONFIG_STOP_ONE |
                                                        SCI_CONFIG_PAR_NONE));
    SCI_enableModule          ( SCIA_BASE                               );
    SCI_resetChannels         ( SCIA_BASE                               );
    SCI_enableFIFO            ( SCIA_BASE                               );
    SCI_enableInterrupt       ( SCIA_BASE   ,SCI_INT_RXFF               );
    SCI_disableInterrupt      ( SCIA_BASE   ,SCI_INT_RXERR | SCI_INT_FE | SCI_INT_OE | SCI_INT_PE );
    SCI_setFIFOInterruptLevel ( SCIA_BASE   ,SCI_FIFO_TX2 ,SCI_FIFO_RX1 );
    SCI_performSoftwareReset  ( SCIA_BASE                               );
    SCI_resetTxFIFO           ( SCIA_BASE                               );
    SCI_resetRxFIFO           ( SCIA_BASE                               );
    Interrupt_register        ( INT_SCIA_RX ,sciaRXFIFOISR              );
    Interrupt_register        ( INT_SCIA_TX ,sciaTXFIFOISR              );
    Interrupt_enable          ( INT_SCIA_RX                             );
    Interrupt_enable          ( INT_SCIA_TX                             );
    initSCIACBuffer           (                                         );
    Interrupt_clearACKGroup   ( INTERRUPT_ACK_GROUP9                    );
}


uint16_t sciaBufferWrite(uint16_t* data, uint16_t len)
{
   uint16_t ans;
   SCI_disableTxInterrupt ( SCIA_BASE        );
   ans=writeCBufferArray  ( &wBuff,data ,len );
   SCI_enableTxInterrupt  ( SCIA_BASE        );
   return ans;
}
uint16_t sciaBufferRead(uint16_t* data, uint16_t len)
{
   uint16_t ans;
   SCI_disableRxInterrupt ( SCIA_BASE        );
   ans=readCBufferArray   ( &rBuff,data ,len );
   SCI_enableRxInterrupt  ( SCIA_BASE        );
   return ans;
}

void initSCIACBuffer ( void )
{
   rBuff.pool     = rBuffPool;
   rBuff.dataSize = sizeof(rBuffPool[0]);
   rBuff.poolSize = MAX_RCBUFFER_POOL;
   rBuff.rIndex   = 0;
   rBuff.wIndex   = 0;

   wBuff.pool     = wBuffPool;
   wBuff.dataSize = sizeof(wBuffPool[0]);
   wBuff.poolSize = MAX_WCBUFFER_POOL;
   wBuff.rIndex   = 0;
   wBuff.wIndex   = 0;
}


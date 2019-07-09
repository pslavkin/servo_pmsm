#include "driverlib.h"
#include "device.h"
#include "cbuffer.h"
#include "scia.h"
#include "ustdlib.h"
#include "opt.h"
#include "events.h"
#include "cmdline.h"
#include "parser.h"

uint16_t wBuffPool[MAX_WCBUFFER_POOL+1];
cBuffer_t wBuff;

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
   uint16_t i;
   uint16_t len= SCI_getRxFIFOStatus ( SCIA_BASE               );
   SCI_readCharArrayNoneBlocking     ( SCIA_BASE ,rData ,len   );
   for ( i=0;i<len;i++ )
      Send_Event(rData[0],parser());
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
    SCI_enableModule          ( SCIA_BASE                                                         );
    SCI_resetChannels         ( SCIA_BASE                                                         );
    SCI_enableFIFO            ( SCIA_BASE                                                         );
    SCI_enableInterrupt       ( SCIA_BASE   ,SCI_INT_RXFF                                         );
    SCI_disableInterrupt      ( SCIA_BASE   ,SCI_INT_RXERR | SCI_INT_FE | SCI_INT_OE | SCI_INT_PE );
    SCI_setFIFOInterruptLevel ( SCIA_BASE   ,SCI_FIFO_TX2 ,SCI_FIFO_RX1                           );
    SCI_performSoftwareReset  ( SCIA_BASE                                                         );
    SCI_resetTxFIFO           ( SCIA_BASE                                                         );
    SCI_resetRxFIFO           ( SCIA_BASE                                                         );
    Interrupt_register        ( INT_SCIA_RX ,sciaRXFIFOISR                                        );
    Interrupt_register        ( INT_SCIA_TX ,sciaTXFIFOISR                                        );
    Interrupt_enable          ( INT_SCIA_RX                                                       );
    Interrupt_enable          ( INT_SCIA_TX                                                       );
    initSCIACBuffer           (                                                                   );
    Interrupt_clearACKGroup   ( INTERRUPT_ACK_GROUP9                                              );
    sciaBufferWrite           ( "servo init\r\n",12                                               );
}

uint16_t sciaBufferWrite(char* data, uint16_t len)
{
   uint16_t ans;
   SCI_disableTxInterrupt ( SCIA_BASE        );
   ans=writeCBufferArray  ( &wBuff,data ,len );
   SCI_enableTxInterrupt  ( SCIA_BASE        );
   return ans;
}
void initSCIACBuffer ( void )
{
   wBuff.pool     = wBuffPool;
   wBuff.dataSize = sizeof(wBuffPool[0]);
   wBuff.poolSize = MAX_WCBUFFER_POOL;
   wBuff.rIndex   = 0;
   wBuff.wIndex   = 0;
}
//*****************************************************************************
char Buff[APP_OUT_BUF_SIZE];
void sciPrintf(const char *pcString, ...)
{
   va_list vaArgP;
   int len;
   va_start(vaArgP, pcString);
   len=uvsnprintf(Buff,sizeof(Buff),pcString, vaArgP);
   sciaBufferWrite(Buff,len);
   va_end(vaArgP);
}
//*****************************************************************************

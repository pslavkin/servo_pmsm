#ifndef SCIA
#define SCIA

#define MAX_RCBUFFER_POOL 100
#define MAX_WCBUFFER_POOL 100

void     initSCIAFIFO    ( void                         );
void     initSCIAGpio    ( void                         );
void     initSCIACBuffer ( void                         );
uint16_t sciaBufferWrite ( uint16_t* data, uint16_t len );

#endif

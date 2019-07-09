#ifndef SCIA
#define SCIA

void     initSCIAFIFO         ( void                         );
void     initSCIAGpio         ( void                         );
void     initSCIACBuffer      ( void                         );
uint16_t sciaBufferWrite      ( char* data, uint16_t len     );
void     sciPrintf            ( const char *pcString, ...    );

#endif

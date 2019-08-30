#ifndef DAC
#define DAC

// display variable A (in pu) on DAC
#define  DAC_MACRO_PU(A)  ((1.0 + A)*2048)
void initDac   ( void );
void updateDac ( void );

#endif

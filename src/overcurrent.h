#ifndef OVERCURRENT
#define OVERCURRENT

void testOvercurrent          ( void                                          );
void configureHVDMCProtection ( void                                          );
void configureCMPSSFilter     ( uint32_t base, uint16_t curHi, uint16_t curLo );
void configureCMPSS           ( uint32_t base, int16_t Hi, int16_t Lo         );

#endif


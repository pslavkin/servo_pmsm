#ifndef OVERCURRENT
#define OVERCURRENT
#include "types.h"

void        testOvercurrent      ( void                                          );
void        initOvercurrent      ( void                                          );
void        configureCMPSSFilter ( uint32_t base, uint16_t curHi, uint16_t curLo );
void        configureCMPSS       ( uint32_t base, int16_t Hi, int16_t Lo         );
void        setOvercurrent       ( float32_t c                                   );
float32_t   getOvercurrent       ( void                                          );
void        resetOvercurrent     ( void                                          );

#endif


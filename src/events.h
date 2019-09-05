#ifndef EVENTS
#define EVENTS

#include "sm.h"

#define MAX_EVENTS      30

typedef struct Events_struct {
    uint16_t         Event;
    const State**    Machine;
}  Events;
//-----------------------------------------------------------
void     initEvents      ( void                                 );
bool     readEvent       ( Events* E                            );
bool     atomicSendEvent ( uint16_t Event,const State** Machine );
bool     sendEvent       ( uint16_t Event,const State** Machine );
bool     atomicReadEvent ( Events* E                            );
//-------------------------------------------------------------
#endif

#ifndef EVENTS
#define EVENTS

#include "sm.h"

#define MAX_EVENTS      30

typedef struct Events_struct {
    uint16_t         Event;
    const State**    Machine;
}  Events;
//-----------------------------------------------------------
void     Init_Events     ( void                                 );
bool     Read_Event      ( Events* E                            );
bool     Send_Event      ( uint16_t Event,const State** Machine );
bool     atomicReadEvent ( Events* E                            );
//-------------------------------------------------------------
#endif

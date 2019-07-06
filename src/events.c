#include "stdint.h"
#include "stdbool.h"
#include "events.h"
#include "cbuffer.h"

Events eventsBuffPool[MAX_EVENTS+1];
cBuffer_t eventsBuff;
 
//-----------------------------------------------------------------
void Init_Events(void)
{
   eventsBuff.pool     = (uint16_t*)eventsBuffPool;
   eventsBuff.dataSize = sizeof(eventsBuffPool[0]);
   eventsBuff.poolSize = MAX_EVENTS;
   eventsBuff.rIndex   = 0;
   eventsBuff.wIndex   = 0;
}
//-----------------------------------------------------------------
bool Send_Event(uint16_t Event,State** Machine)
{
   Events E={Event,Machine};
   return writeCBuffer(&eventsBuff,(uint16_t*)&E);
}
bool Read_Event(Events* E)
{
   return readCBuffer(&eventsBuff,(uint16_t*)E);
}
//-------------------------------------------------------------------------------------



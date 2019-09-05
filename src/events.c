#include "stdint.h"
#include "stdbool.h"
#include "events.h"
#include "cbuffer.h"
#include "systick.h"
#include "cpu.h"

Events      eventsBuffPool[MAX_EVENTS+1];
cBuffer_t   eventsBuff;

//-----------------------------------------------------------------
void initEvents(void)
{
   eventsBuff.pool     = (uint16_t*)eventsBuffPool;
   eventsBuff.dataSize = sizeof(eventsBuffPool[0]);
   eventsBuff.poolSize = MAX_EVENTS;
   eventsBuff.rIndex   = 0;
   eventsBuff.wIndex   = 0;
}
//-----------------------------------------------------------------
bool sendEvent(uint16_t Event,const State** Machine)
{
   Events E={Event,Machine};
   return writeCBuffer(&eventsBuff,(uint16_t*)&E);
}
bool atomicSendEvent(uint16_t Event,const State** Machine)
{
   Events E={Event,Machine};
   DINT;                          // Disable Global Interrupt (INTM) and realtime interrupt (DBGM)
      bool ans= writeCBuffer(&eventsBuff,(uint16_t*)&E);
   EINT;                          // Enable Global Interrupt (INTM) and realtime interrupt (DBGM)
   return ans;
}
bool readEvent(Events* E)
{
   return readCBuffer(&eventsBuff,(uint16_t*)E);
}
bool atomicReadEvent(Events* E)
{
   bool ans;
   DINT;                          // Disable Global Interrupt (INTM) and realtime interrupt (DBGM)
      ans = readCBuffer ( &eventsBuff,(uint16_t* )E);
   EINT;                          // Enable Global Interrupt (INTM) and realtime interrupt (DBGM)
   return ans;
}
//-------------------------------------------------------------------------------------



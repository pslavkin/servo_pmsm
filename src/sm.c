#include <stdbool.h>
#include <stdint.h>
#include "sm.h"
#include "events.h"
#include "everythings.h"
#include "systick.h"
#include "leds.h"

const State* ActualState;
Events Event;

//-----------------------------------------------------------------------
void           Set_State ( const State* New_State,const State** Machine ) { *Machine=New_State                       ;}
const State**  Empty_Sm  ( void                                         ) { return (const State**)Empty_State_Machine;}
void           Rien      ( void                                         ) { }
//-----------------------------------------------------------------------
uint16_t       Actual_Event ( void ) { return Event.Event  ;}
const State**  Actual_Sm    ( void ) { return Event.Machine;}


//-----------------------------------------------------------------------
void State_Machine(void)
{
   while(1) {
      if(atomicReadEvent(&Event)==true) {
         ActualState = *(Event.Machine);
         for(;ActualState->Event!=ANY_Event && ActualState->Event!=Event.Event;ActualState++)
            ;
         *Event.Machine=ActualState->Next_State;
         ActualState->Func();
      }
      systickFunc();
   }
}
//------------------------------------------------------------------------------------------

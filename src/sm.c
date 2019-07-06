#include <stdbool.h>
#include <stdint.h>
#include "sm.h"
#include "events.h"
#include "everythings.h"

State* ActualState;
Events Event;

//-----------------------------------------------------------------------
void     Set_State ( State* New_State,State** Machine ) { *Machine=New_State                 ;}
State**  Empty_Sm  ( void                             ) { return (State**)Empty_State_Machine;}
void     Rien      ( void                             ) { }
//-----------------------------------------------------------------------
uint16_t Actual_Event ( void ) { return Event.Event  ;}
State**  Actual_Sm    ( void ) { return Event.Machine;}
//-----------------------------------------------------------------------
void State_Machine(void)
{
   while(1) {
      SysCtl_delay(1000000);
      if(Read_Event(&Event)==true) {
         ActualState = *(Event.Machine);
         for(;ActualState->Event!=ANY_Event && ActualState->Event!=Event.Event;ActualState++)
            ;
         *Event.Machine=ActualState->Next_State;
         ActualState->Func();
      }
      else {
         Send_Event(Rti_Event,everythings());
      }

   }
}

//------------------------------------------------------------------------------------------

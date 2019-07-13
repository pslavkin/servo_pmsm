#ifndef SM
#define SM

#include "stdbool.h"
#include "stdint.h"

//------------------------------------------------------------------
typedef struct Efn      //Event-Function-Next
{
   uint16_t                Event;
   void                    (*Func) (void);
   const struct Efn* const Next_State;
} State;

//------------------------------------------------------------------
void           Rien          ( void                                         );
void           Set_State     ( const State* New_State,const State** Machine );
uint16_t       Actual_Event  ( void                                         );
const State**  Actual_Sm     ( void                                         );
void           State_Machine ( void                                         );
const State**  Empty_Sm      ( void                                         );
//------------------------------------------------------------------
#define  Empty_State_Machine     ((const State**)0x00000000)

enum Event_Code {
       Empty_Event   = 0x0000, // este evento se usa para saber cuando la cola de eventos esta vacia...
       Invalid_Event = 0xFFFD,
       Rti_Event     = 0xFFFE,
       ANY_Event     = 0xFFFF  // este eventos se usa como default en la comparacion. Es decir si el evento no coincide con ninguno de los posibles, entonces terminara la busqueda cuando encuentre ANY. Notar que es muy imporante que haya un ANY en cada estado para tener por donde salir en el caso de que las comparaciones fallen.
      };
//------------------------------------------------------------------
#endif


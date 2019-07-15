#include "schedule.h"
#include "sm.h"
#include "events.h"
#include "opt.h"

struct Schedule_Event_Machine // estructura que define los campos que se usaran para almacenar los tim_outs solicitados...
{
   uint32_t Fixed_Time_Out;   // este entero se acuerda de lo que le pidieron inicialmente para eventos repetitivos...
   uint32_t Time_Out;         // un entero para el time_out para poder tener tiempos largos...
   uint32_t Event;            // el evento que enviara cuando se acabe el tiempo...
   uint16_t Enable;           // es una manera de poder parar o continuar una schedule...me parecio practuco y lo uso puntualmente en una aplicacion...
   union 
   {
    const State **Machine;    // el solicitante...
    void (*Func) (void);
   } Sm_Func;
} Schedule_Event_Machine;

struct Schedule_Event_Machine Schedule_List[MAX_SCHEDULE_INDEX];
//----------------------------------------------------------------------
void     Init_Schedule           (void)            //iniicializa la lista de tiempos...
{
 uint16_t i;
 for(i=0;i<MAX_SCHEDULE_INDEX;i++)
    Schedule_List[i].Sm_Func.Machine=Empty_State_Machine;
}
//----------------------------------------------------------------------
void     Schedule          (void)  
{
   uint16_t i;
   for(i=0;i<MAX_SCHEDULE_INDEX;i++)                                                                                              // para toda la lista...
      if(Schedule_List[i].Sm_Func.Machine!=Empty_State_Machine && Schedule_List[i].Enable)                                        // si la entrada no es libre
         if(!Schedule_List[i].Time_Out)                                                                                           // si el decrementado time_out es cero....
         {  
            if(Schedule_List[i].Event!=Invalid_Event) 
               atomicSendEvent(Schedule_List[i].Event,Schedule_List[i].Sm_Func.Machine); // ei el evento es valido manda un mensaje a la maquina de estados que lo solicito...
            else Schedule_List[i].Sm_Func.Func();                                                                                 // si el evento es invalido, entonces es un schedule de funcion y se la ejecuta asi sin mas...
            Schedule_List[i].Time_Out=Schedule_List[i].Fixed_Time_Out;                                                            // se transfiere el fixed en time_out renovando el conteo. En caso de que sea cero se libera la entrada en la proxima linea y es equivalente a un evento unico...
            if(!Schedule_List[i].Time_Out) Schedule_List[i].Sm_Func.Machine=Empty_State_Machine;                                  // si el time_out es cero entonces se libera la entrada....
         }
         else 
            --Schedule_List[i].Time_Out;                                                                                          // si no es cero entonces decrementa (para evutar que si entra con cero pase a 0xFFFF!).
   return;
}
//----------------------------------------------------------------------
void     Add_Schedule            (uint16_t Index,uint32_t Fixed_Time_Out,uint32_t Time_Out,uint32_t Event,const State** Machine,void (*Func)(void),uint16_t Sm_Func)
{
   Schedule_List[Index].Fixed_Time_Out = Fixed_Time_Out?--Fixed_Time_Out:Fixed_Time_Out;
   Schedule_List[Index].Time_Out       = Time_Out?--Time_Out:Time_Out                  ;
   Schedule_List[Index].Event          = Event                                         ;
   Schedule_List[Index].Enable         = 1                                             ;
   if(!Sm_Func)
      Schedule_List[Index].Sm_Func.Machine=Machine;
   else
      Schedule_List[Index].Sm_Func.Func=Func;
}
uint16_t    Search_Schedule_Index         (void)
{
   uint16_t i;
   for(i=0;i<MAX_SCHEDULE_INDEX && Schedule_List[i].Sm_Func.Machine!=Empty_State_Machine;i++)
      ; //recorre todas las entradas fijas en busca de un lugar vacio...
   return i;                                //si no hubo lugar, lamento mucho devuelve MAX...
}
uint16_t    Find_Schedule_Index        (uint32_t Event,const State** Machine)
{
   uint16_t i;
   for(i=0;i<MAX_SCHEDULE_INDEX && !(Schedule_List[i].Sm_Func.Machine==Machine && Schedule_List[i].Event==Event);i++); //recorre todas las entradas fijas en busca de un lugar vacio...
   return i;                                         //si no hubo lugar, lamento mucho devuelve MAX...
}
uint16_t    Find_Func_Schedule_Index      (void (*Func)(void))
{
   uint16_t i;
   for(i=0;i<MAX_SCHEDULE_INDEX && Schedule_List[i].Sm_Func.Func!=Func;i++); //recorre todas las entradas fijas en busca de un lugar vacio...
   return i;                          //si no hubo lugar, lamento mucho devuelve MAX...
}
//----------------------------------------------------------------------
uint16_t    Update_Periodic_Schedule         (uint32_t Time_Out,uint32_t Event,const State** Machine)      //actualiza el timout de un evento conociendo su indexador otorgado en el momento de asignar el timeout
{
   uint16_t i=Find_Schedule_Index(Event,Machine);
   if(i<MAX_SCHEDULE_INDEX) Add_Schedule(i,Time_Out,Time_Out,Event,Machine,Rien,0);
   return i;
}
uint16_t    Update_None_Periodic_Schedule       (uint32_t Time_Out,uint32_t Event,const State** Machine)      //actualiza el timout de un evento conociendo su indexador otorgado en el momento de asignar el timeout
{
   uint16_t i=Find_Schedule_Index(Event,Machine);
   if(i<MAX_SCHEDULE_INDEX) Add_Schedule(i,0,Time_Out,Event,Machine,Rien,0);
   return i;
}
void     Free_Schedule           (uint32_t Event,const State** Machine)
{
   uint16_t i=Find_Schedule_Index(Event,Machine);
   if(i<MAX_SCHEDULE_INDEX)
     Add_Schedule(i,0,0,0,Empty_State_Machine,Rien,0);                  //actualiza la entada pero con una maquina VACIA!! que es equivelente eliminar la entrada...
}
void     Free_All_Schedule       (const State** Machine)
{
   uint16_t i;
   for(i=0;i<MAX_SCHEDULE_INDEX;i++)
      if(Schedule_List[i].Sm_Func.Machine==Machine)
         Add_Schedule(i,0,0,0,Empty_State_Machine,Rien,0);                 //actualiza la entada pero con una maquina VACIA!! que es equivelente eliminar la entrada...
}
void     Pause_Schedule          (uint32_t Event,const State** Machine)
{
   uint16_t i=Find_Schedule_Index(Event,Machine);
   if(i<MAX_SCHEDULE_INDEX) Schedule_List[i].Enable=0;                       //Si la encontro dentro de la tabla la pausa para que NO siga contando...
}
void     Resume_Schedule            (uint32_t Event,const State** Machine)
{
   uint16_t i=Find_Schedule_Index(Event,Machine);
   if(i<MAX_SCHEDULE_INDEX) Schedule_List[i].Enable=1;                       //si la encontro dentro de la table la reestablece para que siga contando...
}
uint32_t    Read_Schedule           (uint32_t Event,const State** Machine)
{
   uint16_t i=Find_Schedule_Index(Event,Machine);
   if(i<MAX_SCHEDULE_INDEX) return Schedule_List[i].Time_Out;
   return 0;
}
void     New_Periodic_Schedule         (uint32_t Time_Out,uint32_t Event,const State** Machine)
{
   uint16_t i=Search_Schedule_Index();
   if(i<MAX_SCHEDULE_INDEX)
      //TODO add random 
//      Add_Schedule(i,Time_Out,random(Time_Out/2,Time_Out),Event,Machine,Rien,0);     //el primer tiro lo hace rando porque sino resulta que al inicio el sistema esta oseoso hasta que TODOS los procesos se llaman al mismo tiuempo! es poque todos piden 1 seguindo por ejemplo.... y me trajo problemas que el sistema se quewda duro al segundo o over events...principalmente con el tema de la SD que es la mas lenteja
      Add_Schedule(i,Time_Out,Time_Out,Event,Machine,Rien,0);     //el primer tiro lo hace rando porque sino resulta que al inicio el sistema esta oseoso hasta que TODOS los procesos se llaman al mismo tiuempo! es poque todos piden 1 seguindo por ejemplo.... y me trajo problemas que el sistema se quewda duro al segundo o over events...principalmente con el tema de la SD que es la mas lenteja
}
void     Update_Or_New_Periodic_Schedule ( uint32_t Time_Out,uint32_t Event,const State** Machine ) { if(!(Update_Periodic_Schedule(Time_Out,Event,Machine)<MAX_SCHEDULE_INDEX)) New_Periodic_Schedule(Time_Out,Event,Machine);}
void     New_None_Periodic_Schedule      ( uint32_t Time_Out,uint32_t Event,const State** Machine ) // enlista una nueva entrada de tiempo ...
{
   uint16_t i=Search_Schedule_Index(); 
   if(i<MAX_SCHEDULE_INDEX) Add_Schedule(i,0,Time_Out,Event,Machine,Rien,0);
}
void     Update_Or_New_None_Periodic_Schedule   (uint32_t Time_Out,uint32_t Event,const State** Machine)   {if(!(Update_None_Periodic_Schedule(Time_Out,Event,Machine)<MAX_SCHEDULE_INDEX)) New_None_Periodic_Schedule(Time_Out,Event,Machine);}
//----------------------------------------------------------------------
void     New_None_Periodic_Func_Schedule        (uint32_t Time_Out,void (*Func)(void))    //enlista una nueva entrada de tiempo ...
{
   uint16_t i=Search_Schedule_Index();
   if(i<MAX_SCHEDULE_INDEX) Add_Schedule(i,0,Time_Out,Invalid_Event,Empty_Sm(),Func,1);
}
void     New_Offset_Periodic_Func_Schedule      (uint32_t First_Time_Out,uint32_t Next_Time_Out,void (*Func)(void))
{
   uint16_t i=Search_Schedule_Index();
   if(i<MAX_SCHEDULE_INDEX) Add_Schedule(i,Next_Time_Out,First_Time_Out,Invalid_Event,Empty_Sm(),Func,1);
}
void     New_Periodic_Func_Schedule                ( uint32_t Time_Out,void (*Func )(void)) { New_Offset_Periodic_Func_Schedule(Time_Out,Time_Out,Func)                                                   ;}
void     Update_Or_New_Periodic_Func_Schedule      ( uint32_t Time_Out,void (*Func )(void)) { if(!(Update_Func_Schedule(Time_Out,Func)<MAX_SCHEDULE_INDEX)) New_Periodic_Func_Schedule(Time_Out,Func)     ;}
void     Update_Or_New_None_Periodic_Func_Schedule ( uint32_t Time_Out,void (*Func )(void)) { if(!(Update_Func_Schedule(Time_Out,Func)<MAX_SCHEDULE_INDEX)) New_None_Periodic_Func_Schedule(Time_Out,Func);}
void     Free_Func_Schedule ( void (*Func )(void))
{
   uint16_t i=Find_Func_Schedule_Index(Func);
   if(i<MAX_SCHEDULE_INDEX)
     Add_Schedule(i,0,0,0,Empty_State_Machine,Rien,0);
}
uint16_t Update_Func_Schedule(uint32_t Time_Out,void (*Func)(void))  
{
   uint16_t i=Find_Func_Schedule_Index(Func);
   if(i<MAX_SCHEDULE_INDEX) Add_Schedule(i,Time_Out,Time_Out,Invalid_Event,Empty_Sm(),Func,1);
   return i;
}
uint32_t Read_Func_Schedule(void (*Func)(void)) 
{
   uint16_t i=Find_Func_Schedule_Index(Func);
   if(i<MAX_SCHEDULE_INDEX) return Schedule_List[i].Time_Out;
   return 0;
}
bool Func_Schedule_Running(void (*Func)(void))
{
   return (Find_Func_Schedule_Index(Func)<MAX_SCHEDULE_INDEX);
}
//----------------------------------------------------------------------

void Resume_Func_Schedule ( void (*Func )(void)) { Resume_Schedule(Invalid_Event ,(const State**)Func);}
//----------------------------------------------------------------------
void Periodic1Sec4Sm   ( const State** Machine ) { New_Periodic_Schedule(5*1,Timeout1Sec_Event,Machine)         ;}
void None_Periodic1Sec ( void                  ) { New_None_Periodic_Schedule(5*1,Timeout1Sec_Event,Actual_Sm());}
void Free_Wait1Sec     ( void                  ) { Free_Schedule(Timeout1Sec_Event,Actual_Sm())                 ;}
// ----------------------------------------------------------------------
void None_Periodic2Sec ( void            ) { New_None_Periodic_Schedule(2*5,Timeout2Sec_Event,Actual_Sm()) ;}
void Free_Wait2Sec     ( void            ) { Free_Schedule(Timeout2Sec_Event,Actual_Sm())                  ;}
// ----------------------------------------------------------------------
void None_Periodic1Min ( void            ) { New_None_Periodic_Schedule(60*5,Timeout1Min_Event,Actual_Sm());}
void Free_Wait1Min     ( void            ) { Free_Schedule(Timeout1Min_Event,Actual_Sm())                  ;}
//----------------------------------------------------------------------

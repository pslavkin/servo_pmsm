#ifndef SCHEDULE
#define SCHEDULE
#include "sm.h"
//------------------------------------------------------------------------

enum Schedule_Events {
    Timeout1Sec_Event  = 0x5000,
    Timeout2Sec_Event  = 0x5001,
    Timeout1Min_Event  = 0x5002,
    Timeout10Sec_Event = 0x5003
};
//------------------------------------------------------------------------
void              Init_Schedule                             ( void                                                                  )       ;
void              Schedule                                  ( void                                                                  )       ;
// ------------------------------------------------------------------------
void              New_Periodic_Schedule                     ( uint32_t Time_Out       ,uint32_t Event          ,const State** Machine )       ;
void              Update_Or_New_Periodic_Schedule           ( uint32_t Time_Out       ,uint32_t Event          ,const State** Machine )       ;
void              New_None_Periodic_Schedule                ( uint32_t Time_Out       ,uint32_t Event          ,const State** Machine )       ;
void              Update_Or_New_None_Periodic_Schedule      ( uint32_t Time_Out       ,uint32_t Event          ,const State** Machine )       ;
uint16_t          Update_Periodic_Schedule                  ( uint32_t Time_Out       ,uint32_t Event          ,const State** Machine )       ;
uint16_t          Update_None_Periodic_Schedule             ( uint32_t Time_Out       ,uint32_t Event          ,const State** Machine )       ;
void              Free_Schedule                             ( uint32_t Event           ,const State** Machine                         )       ;
void              Free_All_Schedule                         ( const State** Machine                                                   )       ;
void              Pause_Schedule                            ( uint32_t Event           ,const State** Machine                         )       ;
void              Resume_Schedule                           ( uint32_t Event           ,const State** Machine                         )       ;
uint32_t          Read_Schedule                             ( uint32_t Event           ,const State** Machine                         )       ;
// ------------------------------------------------------------------------
void              New_None_Periodic_Func_Schedule           ( uint32_t Time_Out       ,void (*Func                                    )(void));
void              New_Offset_Periodic_Func_Schedule         ( uint32_t First_Time_Out ,uint32_t Next_Time_Out ,void (*Func            )(void));
void              New_Periodic_Func_Schedule                ( uint32_t Time_Out       ,void (*Func                                    )(void));
uint16_t          Update_Func_Schedule                      ( uint32_t Time_Out       ,void (*Func                                    )(void));
void              Update_Or_New_Periodic_Func_Schedule      ( uint32_t Time_Out       ,void (*Func                                    )(void));
void              Update_Or_New_None_Periodic_Func_Schedule ( uint32_t Time_Out       ,void (*Func                                    )(void));
void              Pause_Func_Schedule                       ( void (*Func                                                             )(void));
void              Resume_Func_Schedule                      ( void (*Func                                                             )(void));
bool              Free_Func_Schedule                        ( void (*Func                                                             )(void));
uint32_t          Read_Func_Schedule                        ( void (*Func                                                             )(void));
// ------------------------------------------------------------------------
void              Periodic1Sec4Sm                           ( const State** Machine                                                   )       ;
void              None_Periodic1Sec                         ( void                                                                    )       ;
void              Free_Wait1Sec                             ( void                                                                    )       ;
// -----------------------------------------
void              None_Periodic2Sec                         ( void                                                                    )       ;
void              Free_Wait2Sec                             ( void                                                                    )       ;
// -----------------------------------------
void              None_Periodic1Min                         ( void                                                                    )       ;
void              Free_Wait1Min                             ( void                                                                    )       ;
// ------------------------------------------------------------------------
void              Send_Schedule_Place                       ( void                                                                    )       ;
bool              Func_Schedule_Running                     (void (*Func)(void));


#endif


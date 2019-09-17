#ifndef LOGGER
#define LOGGER

enum logEvents_enum {
    logEnableEvent  = 0x8000,
    logDisableEvent = 0x8001,
    logPauseEvent   = 0x8002,
    logUnpauseEvent = 0x8003,
    logPrintEvent   = 0x8004
};


typedef struct log_struct {
   uint32_t pauseTime ;
   uint32_t ticker    ;
   uint16_t prescaler ;
   uint16_t count     ;
   bool     bodeEnable;
} log_t;

const    State** logger      ( void       );
void     printLog            ( void       );
void     printBode           ( void       );
void     sendlogPrintEvent   ( void       );
void     createLogTimer      ( void       );
void     freeLogTimer        ( void       );
void     logUpdateTimer      ( void       );
void     sendLogEnableEvent  ( void       );
void     sendLogDisableEvent ( void       );
void     sendLogPauseEvent   ( void       );
void     setLogPrescaler     ( int32_t  p );
int32_t  getLogPrescaler     ( void       );
void     setLogPauseTime     ( uint32_t p );
uint32_t getLogPauseTime     ( void       );
void     logBodeEnable       (            );
void     logBodeDisable      (            );
bool     getLogBodeState     (            );

#endif


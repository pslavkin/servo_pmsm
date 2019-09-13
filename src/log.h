#ifndef LOGGER
#define LOGGER

enum logEvents_enum {
    printLogEvent           = 0x8000
};

typedef enum LOG_STATE_ENUM {
   DISABLED = 0,
   ENABLED,
   PAUSED
} log_state_e;

typedef struct log_struct {
   log_state_e state ;
   uint32_t    pauseTime;
   uint32_t    ticker   ;
   uint16_t    prescaler;
   uint16_t    count    ;
} log_t;

const State**     logger            ( void       );
void              printLog          ( void       );
void              printLogPrescaled ( void       );
void              sendPrintLogEvent ( void       );
void              pauseLog          ( void       );
void              setLogEnable      ( void       );
void              setLogDisable     ( void       );
void              setLogPrescaler   ( int32_t p  );
int32_t           getLogPrescaler   ( void       );
void              setLogPauseTime   ( uint32_t p );
uint32_t          getLogPauseTime   ( void       );

#endif


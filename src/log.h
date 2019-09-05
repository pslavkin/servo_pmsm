#ifndef LOGGER
#define LOGGER

enum logEvents_enum {
    printLogEvent           = 0x8000
};

const State**     logger            ( void      );
void              printLog          ( void      );
void              sendPrintLogEvent ( void      );
void              setLogEnable      ( void      );
void              setLogDisable     ( void      );
void              setLogPrescaler   ( int32_t p );
int32_t           getLogPrescaler   ( void      );

#endif


#ifndef PWM
#define PWM

void     initPwm      ( void         );
void     configurePWM2 ( void         );
void     setPwmPeriod ( uint32_t new );
uint32_t getPwmPeriod ( void         );
void     printRampGen ( void         );
void     printRampCtl ( void         );
void     printSvGen   ( void         );
void     printPark    ( void         );
void     printIPark   ( void         );
void     printClarke  ( void         );
void     motorISR     ( void         );
float    readDsRef    ( void         );
float    readQsRef    ( void         );
void     writeDsRef   ( float ref    );
void     writeQsRef   ( float ref    );
#endif


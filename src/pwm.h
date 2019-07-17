#ifndef PWM
#define PWM

void     initPwm      ( void         );
void     configurePWM ( void         );
void     setPwmPeriod ( uint32_t new );
uint32_t getPwmPeriod ( void         );
void     printRampGen ( void         );
void     printRampCtl ( void         );
void     printSvGen   ( void         );
void     printPark    ( void         );
void     motorISR     ( void         );
#endif


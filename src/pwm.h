#ifndef PWM
#define PWM

void initPwm                  ( void                                       );
void configurePWM_1chUpCnt    ( uint32_t base, uint16_t period             );
void configurePWM_1chUpDwnCnt ( uint32_t base, uint16_t period, int16_t db );

#endif


#ifndef ADC
#define ADC

void     initAdc         ( void                      );
uint16_t readAdc         ( uint16_t base,uint16_t ch );
uint16_t adc2Temperature ( uint16_t sensorSample     );
void     initSigmaDelta  ( void                      );
float    readLemV        ( void                      );
float    readLemW        ( void                      );
void     linkPwm2Adc     ( void                      );

#endif


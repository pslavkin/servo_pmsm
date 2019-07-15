#ifndef ADC
#define ADC

void     initAdc         ( void                  );
uint16_t readAdc         ( ADC_Channel ch        );
uint16_t adc2Temperature ( uint16_t sensorSample );
#endif


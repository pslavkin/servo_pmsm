#ifndef ADC
#define ADC

enum adcEvents_enum {
  calibEvent         = 0x2000,
  calibFinishedEvent = 0x2001,
  nextTryEvent       = 0x2002
};
void     initAdc                ( void );
void     currentCalibrate       ( void );
void     sendCalibEvent         ( void );
void     sendNextTryEvent       ( void );
void     sendCalibFinishedEvent ( void );

#endif


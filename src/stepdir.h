#ifndef STEPDIR
#define STEPDIR

#define DEVICE_GPIO_PIN_LED39       39U            // GPIO number for LD39
#define DEVICE_GPIO_PIN_LED45       45U            // GPIO number for LD45
#define DEVICE_GPIO_CFG_LED39       GPIO_39_GPIO39 // "pinConfig" for LD39
#define DEVICE_GPIO_CFG_LED45       GPIO_45_GPIO45 // "pinConfig" for LD45

typedef struct stepdir_struct {
   float32_t            step      ;
   float32_t            actualStep;
} stepdir_t;

float32_t            getStepdirStep  ( void           );
void                 setStepdirStep  ( float32_t step );
void                 setStepdirDir   ( bool dir       );
bool                 getStepdirDir   ( void           );
uint32_t             getGpio39       ( void           );
uint32_t             getGpio45       ( void           );
void                 initStepdir     ( void           );
void                 incStepdirPulse ( void           );
interrupt void       dirIsr          ( void           );
interrupt void       pulseIsr        ( void           );
// ---------------------------------------------------------
#endif


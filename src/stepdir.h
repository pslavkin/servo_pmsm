#ifndef STEPDIR
#define STEPDIR

#define DEVICE_GPIO_PIN_LED31       31U            // GPIO number for LD39
#define DEVICE_GPIO_PIN_LED39       39U            // GPIO number for LD39
#define DEVICE_GPIO_PIN_LED45       45U            // GPIO number for LD45
#define DEVICE_GPIO_PIN_LED24       24U            // GPIO number for LD45
#define DEVICE_GPIO_PIN_LED32       32U            // GPIO number for LD45
#define DEVICE_GPIO_CFG_LED31       GPIO_31_GPIO31 // "pinConfig" for LD31
#define DEVICE_GPIO_CFG_LED39       GPIO_39_GPIO39 // "pinConfig" for LD39
#define DEVICE_GPIO_CFG_LED45       GPIO_45_GPIO45 // "pinConfig" for LD45
#define DEVICE_GPIO_CFG_LED24       GPIO_24_GPIO24 // "pinConfig" for LD24
#define DEVICE_GPIO_CFG_LED32       GPIO_32_GPIO32 // "pinConfig" for LD32

typedef struct stepdir_struct {
   float32_t            step      ;
   float32_t            actualStep;
} stepdir_t;

float32_t            getStepdirStep  ( void           );
void                 setStepdirStep  ( float32_t step );
void                 setStepdirDir   ( bool dir       );
bool                 getStepdirDir   ( void           );
uint32_t             getGpio31       ( void           );
uint32_t             getGpio24       ( void           );
uint32_t             getGpio39       ( void           );
uint32_t             getGpio45       ( void           );
void                 initStepdir     ( void           );
void                 incStepdirPulse ( void           );
interrupt void       dirIsr          ( void           );
interrupt void       pulseIsr        ( void           );
// ---------------------------------------------------------
#endif


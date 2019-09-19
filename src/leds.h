#ifndef LEDS
#define LEDS

#define DEVICE_GPIO_PIN_LED1        31U            // GPIO number for LD2
#define DEVICE_GPIO_PIN_LED2        34U            // GPIO number for LD3
//pin 31 shadred with can rx from board
#define DEVICE_GPIO_CFG_LED1        GPIO_31_GPIO31 // "pinConfig" for LD2
#define DEVICE_GPIO_CFG_LED2        GPIO_34_GPIO34 // "pinConfig" for LD3
//---------------------------------------------------------
void     initLeds          ( void                         );
void     setLedEffect      ( uint16_t Led,uint16_t Effect );
void     setTempLedEffect  ( uint16_t Led,uint16_t Effect );
void     setFixedLedEffect ( uint16_t Led,uint16_t Effect );
void     ledEffectsFunc    ( void                         );
void     led1On            ( void                         );
void     led1Off           ( void                         );
void     led2On            ( void                         );
void     led2Off           ( void                         );
void     led2Toogle        ( void                         );
void     led1Toogle        ( void                         );
//---------------------------------------------------------
enum Leds_Position
{
   led1Index     =0,
   led2Index
};
struct ledEffect_struct
{
   uint16_t effect;
   uint16_t temp  ;
   void ( *on)(void);
   void ( *off)(void);
};
//---------------------------------------------------------
#endif


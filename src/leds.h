#ifndef LEDS
#define LEDS

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
void     led45On           ( void                         );
void     led45Off          ( void                         );
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


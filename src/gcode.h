#ifndef GCODE
#define GCODE

void        advanceGcode      ( void         );
void        setGcodeF         ( float32_t f  );
float32_t   getGcodeF         ( void         );
void        setGcodeAcc       ( float32_t a  );
float32_t   getGcodeAcc       ( void         );
void        setGcodeDec       ( float32_t d  );
float32_t   getGcodeDec       ( void         );
void        setGcodeG0        ( float32_t x1 );
float32_t   getGcodeX0        ( void         );
void        setGcodeX02PosAbs ( void         );
float32_t   getGcodeX1        ( void         );
void        rstGcode          ( void         );

#endif


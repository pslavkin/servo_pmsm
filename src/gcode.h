#ifndef GCODE
#define GCODE

void setgcodeG0   ( float32_t x1 );
void setgcodeF    ( float32_t f  );
void setgcodeAcc  ( float32_t a  );
void setgcodeDec  ( float32_t d  );
void advanceGcode ( void         );

#endif


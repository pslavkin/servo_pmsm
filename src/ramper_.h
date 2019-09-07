#ifndef RAMPER
#define RAMPER

enum ramp_enum {
   RISE=0,
   CONST,
   FALL,
   REVERSING,
   IDLE
};
enum rampDir_enum {
   CLK=0,
   ACLK,
};

typedef struct accel_struct {
   float32_t          x0     ;
   float32_t          x1     ;
   float32_t          v0     ;
   float32_t          v1     ;
   float32_t          acc    ;
   float32_t          dec    ;
   float32_t          actualX;
   float32_t          actualV;
   float32_t          deltaX ;
   float32_t          period ;
   enum rampDir_enum  dir    ;
   enum ramp_enum     state  ;
} accel_t;

float32_t ramper(float32_t in, float32_t out, float32_t rampDelta);
float32_t accel(accel_t* p);


#endif


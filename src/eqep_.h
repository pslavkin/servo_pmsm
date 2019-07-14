#ifndef EQEP_
#define EQEP_

#include "IQmathLib.h"
#include "driverlib.h"

typedef struct {
    int32_t   dir            ; // 1 clock -1 anticlock
    int32_t   pos            ; // number of qa/qb edges
    int32_t   dirActual      ; // is an instantaneus dir, nor the dir used in the speed calculation
    int32_t   posActual      ; // is an instantaneus pos, nor the pos used in the speed calculation
    int32_t   posLast        ; // number of qa/qb edges
    int32_t   posDiff        ; // delta pos between isr calls
    float     speedFastLinear; // is simply possDiff/T (T is the time between calcs)
    float     speedFastRps   ; // is speedFastLinear/ENCODER_RESOLUTION
    float     speedFastRpm   ; // is speedFastRpm*60

//    int32_t thetaElec;      // Output: Motor electrical angle (Q15)
 //   int32_t thetaMech;      // Output: Motor mechanical angle (Q15)
 //   int32_t directionQEP;   // Output: Motor rotation direction (Q0)
 //   int32_t thetaRaw;       // Variable: Raw angle from timer 2 (Q0)
 //   int32_t mechScaler;     // Parameter: 0.9999 / total count,
 //                           //            total count = 4000 (Q26)
 //   int32_t polePairs;      // Parameter: Number of pole pairs (Q0)
 //   int32_t calAngle;       // Parameter: Raw angular offset between encoder
 //                           //            and Phase A (Q0)

 //   uint32_t speedScaler;   // Parameter: Scaler converting 1/N cycles to a
 //                           //            GLOBAL_Q speed (Q0) - independently
 //                           //            with global Q
 //   _iq speedPR;            // Output: Speed in per-unit
 //   uint32_t baseRPM;       // Parameter: Scaler converting GLOBAL_Q speed to
 //                           //            rpm (Q0) speed - independently with
 //                           //            global Q
 //   int32_t speedRPMPR;     // Output: Speed in rpm (Q0) - independently with
 //                           //         global Q

 //   _iq oldPos;
 //   _iq speedFR;            // Output: Speed in per-unit
 //   int32_t speedRPMFR;     // Output: Speed in rpm (Q0) - independently with
                            //         global Q
} PosSpeed_Object;

typedef PosSpeed_Object *PosSpeed_Handle;
extern PosSpeed_Object posSpeed;

void initEqep  ( void );
void speedCalc ( void );
void posCalc   ( void );

#endif

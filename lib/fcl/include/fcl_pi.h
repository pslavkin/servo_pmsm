//#############################################################################
// FILE:   fcl_pi.h
// TITLE:  Header file to be shared between example and library for CPU data.
//
//  Group:          C2000
//
//#############################################################################
// $TI Release: MotorControl SDK v2.00.00.00 $
// $Release Date: Wed Jun 19 14:21:48 CDT 2019 $
// $Copyright:
// Copyright (C) 2017-2019 Texas Instruments Incorporated
//
//     http://www.ti.com/ ALL RIGHTS RESERVED
// $
//#############################################################################

#ifndef FCL_PI_H
#define FCL_PI_H

#include "inc/hw_types.h"

typedef struct {
    float32_t  ref;             // Input: reference set-point
    float32_t  fbk;             // Input: feedback
    float32_t  err;             // Output : error
    float32_t  out;             // Output: controller output
    float32_t  carryOver;       // Output : carry over for next iteration
    float32_t  Kp;              // Parameter: proportional loop gain
    float32_t  Ki;              // Parameter: integral gain
    float32_t  Kerr;            // Parameter: gain for latest error
    float32_t  KerrOld;         // Parameter: gain for prev error
    float32_t  Umax;            // Parameter: upper saturation limit
    float32_t  Umin;            // Parameter: lower saturation limit
} FCL_PIController_t;

#define FCL_PICONTROLLER_DEFAULTS { \
    0,\
    0,\
    0,\
    0,\
    0,\
    0,\
    0,\
    0,\
    0,\
    0,\
    0,\
}


#endif // FCL_PI_H

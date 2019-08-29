//#############################################################################
//
// FILE:   mtpa.c
//
// TITLE:  C28x Maximum Torque Per Ampere (MTPA)
//
//#############################################################################
// $TI Release: MotorControl SDK v2.00.00.00 $
// $Release Date: Wed Jun 19 14:21:48 CDT 2019 $
// $Copyright:
// Copyright (C) 2017-2019 Texas Instruments Incorporated - http://www.ti.com/
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions
// are met:
// 
//   Redistributions of source code must retain the above copyright
//   notice, this list of conditions and the following disclaimer.
// 
//   Redistributions in binary form must reproduce the above copyright
//   notice, this list of conditions and the following disclaimer in the
//   documentation and/or other materials provided with the
//   distribution.
// 
//   Neither the name of Texas Instruments Incorporated nor the names of
//   its contributors may be used to endorse or promote products derived
//   from this software without specific prior written permission.
// 
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
// "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
// A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
// OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
// LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
// DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
// THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
// $
//#############################################################################

#include "mtpa.h"
#include "user.h"

#define MOTOR_Ls_d_H    USER_MOTOR_Ls_d_H
#define MOTOR_Ls_q_H    USER_MOTOR_Ls_q_H

//! \Defines the Ld array
const float32_t MTPA_Ld_tableData_H[MTPA_LUT_INDEX_LD_MAX + 1] =               \
{                                                                              \
    MOTOR_Ls_d_H * 1.05,         /* index =  0, Is = 0.00(A) */                \
    MOTOR_Ls_d_H * 1.04,         /* index =  1, Is = 0.50(A) */                \
    MOTOR_Ls_d_H * 1.03,         /* index =  2, Is = 1.00(A) */                \
    MOTOR_Ls_d_H * 1.02,         /* index =  3, Is = 1.50(A) */                \
    MOTOR_Ls_d_H * 1.01,         /* index =  4, Is = 2.00(A) */                \
    MOTOR_Ls_d_H * 1.00,         /* index =  5, Is = 2.50(A) */                \
    MOTOR_Ls_d_H * 0.99,         /* index =  6, Is = 3.00(A) */                \
    MOTOR_Ls_d_H * 0.98,         /* index =  7, Is = 3.50(A) */                \
    MOTOR_Ls_d_H * 0.97,         /* index =  8, Is = 4.00(A) */                \
    MOTOR_Ls_d_H * 0.96,         /* index =  9, Is = 4.50(A) */                \
    MOTOR_Ls_d_H * 0.95,         /* index = 10, Is = 5.00(A) */                \
    MOTOR_Ls_d_H * 0.94,         /* index = 11, Is = 5.50(A) */                \
    MOTOR_Ls_d_H * 0.93,         /* index = 12, Is = 6.00(A) */                \
    MOTOR_Ls_d_H * 0.92,         /* index = 13, Is = 6.50(A) */                \
    MOTOR_Ls_d_H * 0.91,         /* index = 14, Is = 7.00(A) */                \
    MOTOR_Ls_d_H * 0.89,         /* index = 15, Is = 7.50(A) */                \
    MOTOR_Ls_d_H * 0.88,         /* index = 16, Is = 8.00(A) */                \
    MOTOR_Ls_d_H * 0.87,         /* index = 17, Is = 8.50(A) */                \
    MOTOR_Ls_d_H * 0.86,         /* index = 18, Is = 9.00(A) */                \
    MOTOR_Ls_d_H * 0.85,         /* index = 19, Is = 9.50(A) */                \
    MOTOR_Ls_d_H * 0.84,         /* index = 20, Is = 10.0(A) */                \
};

//! \Defines the Lq array
const float32_t MTPA_Lq_tableData_H[MTPA_LUT_INDEX_LQ_MAX + 1] =               \
{                                                                              \
    MOTOR_Ls_q_H * 1.10,         /* index =  0, Is = 0.00(A) */                \
    MOTOR_Ls_q_H * 1.08,         /* index =  1, Is = 0.50(A) */                \
    MOTOR_Ls_q_H * 1.06,         /* index =  2, Is = 1.00(A) */                \
    MOTOR_Ls_q_H * 1.04,         /* index =  3, Is = 1.50(A) */                \
    MOTOR_Ls_q_H * 1.00,         /* index =  4, Is = 2.00(A) */                \
    MOTOR_Ls_q_H * 0.98,         /* index =  5, Is = 2.50(A) */                \
    MOTOR_Ls_q_H * 0.96,         /* index =  6, Is = 3.00(A) */                \
    MOTOR_Ls_q_H * 0.94,         /* index =  7, Is = 3.50(A) */                \
    MOTOR_Ls_q_H * 0.92,         /* index =  8, Is = 4.00(A) */                \
    MOTOR_Ls_q_H * 0.90,         /* index =  9, Is = 4.50(A) */                \
    MOTOR_Ls_q_H * 0.88,         /* index = 10, Is = 5.00(A) */                \
    MOTOR_Ls_q_H * 0.86,         /* index = 11, Is = 5.50(A) */                \
    MOTOR_Ls_q_H * 0.84,         /* index = 12, Is = 6.00(A) */                \
    MOTOR_Ls_q_H * 0.82,         /* index = 13, Is = 6.50(A) */                \
    MOTOR_Ls_q_H * 0.80,         /* index = 14, Is = 7.00(A) */                \
    MOTOR_Ls_q_H * 0.78,         /* index = 15, Is = 7.50(A) */                \
    MOTOR_Ls_q_H * 0.76,         /* index = 16, Is = 8.00(A) */                \
    MOTOR_Ls_q_H * 0.74,         /* index = 17, Is = 8.50(A) */                \
    MOTOR_Ls_q_H * 0.72,         /* index = 18, Is = 9.00(A) */                \
    MOTOR_Ls_q_H * 0.70,         /* index = 19, Is = 9.50(A) */                \
    MOTOR_Ls_q_H * 0.68,         /* index = 20, Is = 10.0(A) */                \
};

// ****************************************************************************
//
// MTPA_init
//
// ****************************************************************************
MTPA_Handle MTPA_init(void *pMemory, const size_t numBytes)
{
    MTPA_Handle handle;

    if((int16_t)numBytes < (int16_t)sizeof(MTPA_Obj))
    {
        return((MTPA_Handle)NULL);
    }

    //
    // assign the handle
    //
    handle = (MTPA_Handle)pMemory;

    return(handle);
} // end of MTPA_init() function


// ****************************************************************************
//
// MTPA_computeParameters
//
// ****************************************************************************
void MTPA_computeParameters(MTPA_Handle handle,
                               const float32_t Ls_d_H,
                               const float32_t Ls_q_H,
                               const float32_t flux_Wb)
{
    MTPA_Obj *obj = (MTPA_Obj *)handle;

    // calculate the motor constant for mtpa
    if(Ls_q_H != Ls_d_H)
    {
        obj->kconst = 0.25 * (flux_Wb /
                (Ls_q_H - Ls_d_H));
    }
    else
    {
        obj->kconst = 0.0;
    }

    return;
} // end of MTPA_computeParameters() function

//
// end of file
//

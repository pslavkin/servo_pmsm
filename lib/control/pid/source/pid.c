//#############################################################################
//
// FILE:   pid.c
//
// TITLE:  C28x InstaSPIN Proportional-Integral-Derivative (PID) controller
//         library (floating point)
//
//#############################################################################
// $TI Release: MotorControl SDK v2.00.00.00 $
// $Release Date: Wed Jun 19 14:21:48 CDT 2019 $
// $Copyright:
// Copyright (C) 2017-2018 Texas Instruments Incorporated - http://www.ti.com/
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

#include "pid.h"

//*****************************************************************************
//
// PID_getDerFilterParams
//
//*****************************************************************************
void
PID_getDerFilterParams(PID_Handle handle, float32_t *b0, float32_t *b1,
                       float32_t *a1, float32_t *x1, float32_t *y1)
{
    PID_Obj *obj = (PID_Obj *)handle;

    *b0 = FILTER_FO_get_b0(obj->derFilterHandle);
    *b1 = FILTER_FO_get_b1(obj->derFilterHandle);
    *a1 = FILTER_FO_get_a1(obj->derFilterHandle);
    *x1 = FILTER_FO_get_x1(obj->derFilterHandle);
    *y1 = FILTER_FO_get_y1(obj->derFilterHandle);

    return;
} // end of PID_getDerFilterParams() function

//*****************************************************************************
//
// PID_init
//
//*****************************************************************************
PID_Handle
PID_init(void *pMemory, const size_t numBytes)
{
    PID_Handle handle;
    PID_Obj    *obj;

    //
    // Check to ensure memory allotted can accommodate object memory needs
    //
    if(numBytes < sizeof(PID_Obj))
    {
        return((PID_Handle)NULL);
    }

    //
    // Assign the handle
    //
    handle = (PID_Handle)pMemory;

    //
    // Assign a pointer
    //
    obj = (PID_Obj *)handle;

    //
    // Initialize the derivative filter object
    //
    obj->derFilterHandle = FILTER_FO_init(&(obj->derFilter),
                                          sizeof(obj->derFilter));

    return(handle);
} // end of PID_init() function

//*****************************************************************************
//
// PID_setDerFilterParams
//
//*****************************************************************************
void
PID_setDerFilterParams(PID_Handle handle, const float32_t b0, const float32_t b1,
                       const float32_t a1, const float32_t x1, const float32_t y1)
{
    PID_Obj *obj = (PID_Obj *)handle;

    FILTER_FO_setNumCoeffs(obj->derFilterHandle,b0,b1);
    FILTER_FO_setDenCoeffs(obj->derFilterHandle,a1);
    FILTER_FO_setInitialConditions(obj->derFilterHandle,x1,y1);

    return;
} // end of PID_setDerFilterParams() function

// end of file

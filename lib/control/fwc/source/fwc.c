//#############################################################################
//
// FILE:   fwc.c
//
// TITLE:  C28x Field Weakening Control (FWC) library (floating point)
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

#include "fwc.h"

// ****************************************************************************
//
// FWC_init
//
// ****************************************************************************
FWC_Handle FWC_init(void *pMemory, const size_t numBytes)
{
    FWC_Handle handle;
    FWC_Obj *obj;

    if((int16_t)numBytes < (int16_t)sizeof(FWC_Obj))
    {
        return((FWC_Handle)NULL);
    }

    //
    // assign the handle
    //
    handle = (FWC_Handle)pMemory;

    //
    // Assign the object
    //
    obj = (FWC_Obj *)handle;

    //
    // Initialize the PI controller module
    //
    obj->piHandle = PI_init(&obj->pi, sizeof(obj->pi));

    return(handle);
} // end of FWC_init() function


//*****************************************************************************
//
// FWC_setParams
//
//*****************************************************************************
void FWC_setParams(FWC_Handle handle, const float32_t Kp, const float32_t Ki,
                   const float32_t angleMin_rad, const float32_t angleMax_rad)
{
    FWC_setGains(handle, Kp, Ki);
    FWC_setUi(handle, 0.0);
    FWC_setAngleMinMax(handle, angleMin_rad, angleMax_rad);

    return;
}  // end of FWC_setParams() function

//
// end of file
//

//#############################################################################
// $TI Release: MotorControl SDK v2.00.00.00 $
// $Release Date: Wed Jun 19 14:21:49 CDT 2019 $
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

/* =================================================================================
File name:       IPARK.H   
===================================================================================*/

#ifndef __IPARK_H__
#define __IPARK_H__

typedef struct {  float32_t  Alpha;  // Output: stationary d-axis stator variable
              float32_t  Beta;    // Output: stationary q-axis stator variable
              float32_t  Angle;   // Input: rotating angle (pu)
              float32_t  Ds;   // Input: rotating d-axis stator variable
              float32_t  Qs;   // Input: rotating q-axis stator variable
              float32_t  Sine;    // Input: Sine term
              float32_t  Cosine; // Input: Cosine term
             } IPARK;               

/*-----------------------------------------------------------------------------
Default initalizer for the IPARK object.
-----------------------------------------------------------------------------*/                     
#define IPARK_DEFAULTS {  0, \
                          0, \
                          0, \
                          0, \
                          0, \
                    0, \
                          0  \
                     }

/*------------------------------------------------------------------------------
   Inverse PARK Transformation Macro Definition
------------------------------------------------------------------------------*/

static inline void runIPark(IPARK * in)
{
   in->Alpha = (in->Ds * in->Cosine) - (in->Qs * in->Sine);
   in->Beta  = (in->Qs * in->Cosine) + (in->Ds * in->Sine);
}


#define IPARK_MACRO(v)                             \
                                             \
v.Alpha = _IQmpy(v.Ds,v.Cosine) - _IQmpy(v.Qs,v.Sine);      \
v.Beta  = _IQmpy(v.Qs,v.Cosine) + _IQmpy(v.Ds,v.Sine);


#endif // __IPARK_H__


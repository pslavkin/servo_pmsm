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
File name:       ANGLE_MATH.H
===================================================================================*/


#ifndef __ANGLE_MATH_H__
#define __ANGLE_MATH_H__

// ***********************************************************************************
//  Angle wrap macro (wraps angle within _IQ(0.0) and _IQ(1.0)
// ***********************************************************************************
#define    ANGLE_WRAP(angle)              \
             if(angle > _IQ(1.0))         \
               angle -= _IQ(1.0);         \
             else if(angle < _IQ(0.0))    \
               angle += _IQ(1.0);

// ***********************************************************************************
//  Error Angle wrap macro (wraps error angle within _IQ(-0.5) & _IQ(0.5) (-pi to +pi)
// ***********************************************************************************
#define    ERROR_ANGLE_WRAP(angle)        \
             if(angle > _IQ(0.5))         \
               angle -= _IQ(1.0);         \
             else if(angle < _IQ(-0.5))   \
               angle += _IQ(1.0);

#endif // __ANGLE_MATH_H__


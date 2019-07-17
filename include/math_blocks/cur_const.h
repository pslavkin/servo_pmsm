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
File name:       CUR_CONST.H   
===================================================================================*/
#ifndef __CUR_CONST_H__
#define __CUR_CONST_H__

typedef struct 	{ float32  Rr;			// Input: Rotor resistance (ohm)	      			      
				  float32  Lr;			// Input: Rotor inductance (H)					  
				  float32  fb;          // Input: Base electrical frequency (Hz)
				  float32  Ts;			// Input: Sampling period (sec) 
			      float32  Kr;			// Output: constant using in magnetizing current calculation
			      float32  Kt;			// Output: constant using in slip calculation 
			      float32  K;	    	// Output: constant using in rotor flux angle calculation
			      float32  Tr;			// Variable: Rotor time constant (sec)
				} CURMOD_CONST;
																																																																																																																																																																																																								

/*-----------------------------------------------------------------------------
Default initalizer for the CURMOD_CONST object.
-----------------------------------------------------------------------------*/                     
#define CURMOD_CONST_DEFAULTS { 0,0,0,0, \
                                0,0,0,0  \
                               }

/*------------------------------------------------------------------------------
 CUR_CONST Macro Definition
------------------------------------------------------------------------------*/

#define PI 3.14159265358979


#define CUR_CONST_MACRO(v)		\
	v.Tr = v.Lr/v.Rr;			\
   								\
    v.Kr = v.Ts/v.Tr;			\
	v.Kt = 1/(v.Tr*2*PI*v.fb);	\
	v.K = v.Ts*v.fb;

#endif




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

#ifndef __PI_CLA_H__
#define __PI_CLA_H__

typedef struct {  float  Ref;   			// Input: reference set-point
				  float  Fbk;   			// Input: feedback
				  float  Out;   			// Output: controller output 
				  float  Kp;				// Parameter: proportional loop gain
				  float  Ki;			    // Parameter: integral gain
				  float  Umax;			// Parameter: upper saturation limit
				  float  Umin;			// Parameter: lower saturation limit
				  float  up;				// Data: proportional term
				  float  ui;				// Data: integral term
				  float  v1;				// Data: pre-saturated controller output
				  float  i1;				// Data: integrator storage: ui(k-1)
				  float  w1;				// Data: saturation record: [u(k-1) - v(k-1)]
				} PI_CLA;


/*------------------------------------------------------------------------------
 	PI_GRANDO Macro Definition
------------------------------------------------------------------------------*/

#define PI_CLA_MACRO(v)											\
																\
	/* proportional term */ 									\
	v.up = v.Ref - v.Fbk;										\
																\
	/* integral term */ 										\
	v.ui = (v.Out == v.v1)?((v.Ki* v.up)+ v.i1) : v.i1;			\
	v.i1 = v.ui;												\
																\
	/* control output */ 										\
	v.v1 = (v.Kp* (v.up + v.ui));								\
	v.Out=__mmaxf32(__mminf32(v.v1, v.Umax),v.Umin);	
	
#define PI_CLA_INIT(v)	\
	v.Fbk=0;				\
	v.Out=0;				\
	v.Ref=0;				\
	v.i1=0;					\
	v.ui=0;					\
	v.up=0;					\
	v.v1=0;					\
	v.Kp=0;					\
	v.Ki=0;					\
	v.Umax =0;				\
	v.Umin =0;
							
#endif // __PI_H__


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
File name:       SMOPOS_CONST.H                     
===================================================================================*/

typedef struct 	{ float  Rs; 				// Input: Stator resistance (ohm) 
			      float  Ls;				// Input: Stator inductance (H) 	  			      
				  float  Ib; 				// Input: Base phase current (amp) 
				  float  Vb;				// Input: Base phase voltage (volt) 
				  float  Ts;				// Input: Sampling period in sec 
			      float  Fsmopos;			// Output: constant using in observed current calculation 
			      float  Gsmopos;			// Output: constant using in observed current calculation 
				  
				} SMOPOS_CLA_CONST;
																																																																																																																																																																																																								
/*------------------------------------------------------------------------------
Prototypes for the functions in SMOPOS_CONST.C
------------------------------------------------------------------------------*/

#define SMOPOS_CLA_CONST_MACRO(v)						\
														\
	v.Fsmopos = CLAexp((-v.Rs/v.Ls)*(v.Ts));			\
	v.Gsmopos = (v.Vb/v.Ib)*(1/v.Rs)*(1-v.Fsmopos);








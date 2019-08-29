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

#ifndef SMO_CONST_CLA_H_
#define SMO_CONST_CLA_H_

typedef struct 	{ float32  Rs; 				// Input: Stator resistance (ohm) 
			      float32  Ls;				// Input: Stator inductance (H) 	  			      
				  float32  Ib; 				// Input: Base phase current (amp) 
				  float32  Vb;				// Input: Base phase voltage (volt) 
				  float32  Ts;				// Input: Sampling period in sec 
			      float32  Fsmopos;			// Output: constant using in observed current calculation 
			      float32  Gsmopos;			// Output: constant using in observed current calculation 
				} SMO_CONST_CLA;

#define SMO_CONST_CLA_MACRO(v)								\
														    \
	v.Fsmopos = CLAexp((-v.Rs/v.Ls)*(v.Ts));				\
	v.Gsmopos = (v.Vb/v.Ib)*(1/v.Rs)*(1-v.Fsmopos);

#define SMO_CONST_INIT(v)			\
    v.Rs=0; 						\
    v.Ls=0;					  		\
	v.Ib=0; 						\
	v.Vb=0;							\
	v.Ts=0;							\
	v.Fsmopos=0;			 		\
	v.Gsmopos=0;	
					
#endif /*SMP_CONST_H_*/

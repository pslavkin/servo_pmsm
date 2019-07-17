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
File name:       SVGEN_COMM.H  
===================================================================================*/

#ifndef __SVGEN_COMM_H__
#define __SVGEN_COMM_H__



typedef struct 	{ _iq  Ualpha; 			// Input: reference alpha-axis phase voltage 
				  _iq  Ubeta;			// Input: reference beta-axis phase voltage 
				  _iq  Ta;				// Output: reference phase-a switching function		
				  _iq  Tb;				// Output: reference phase-b switching function 
				  _iq  Tc;				// Output: reference phase-c switching function
				  _iq  Va;				// Variable: reference phase-a voltage 		
				  _iq  Vb;				// Variable: reference phase-b voltage
				  _iq  Vc;				// Variable: reference phase-c voltage
				  _iq  Vmax;			// Variable: max phase
				  _iq  Vmin;			// Variable: min phase
				  _iq  Vcomm;			// Variable: common mode voltage
				  _iq  tmp1;			// Variable: temp variable
				  _iq  tmp2;			// Variable: temp variable
				} SVGENCOMM;
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																				

/*-----------------------------------------------------------------------------
Default initalizer for the SVGENCOMM object.
-----------------------------------------------------------------------------*/                     
#define SVGENCOMM_DEFAULTS { 0,0,0,0,0,0,0,0,0,0,0,0,0 }                       

/*------------------------------------------------------------------------------
	Space Vector Generator (Common Mode) Macro Definition
------------------------------------------------------------------------------*/

#define SVGENCOMM_MACRO(v)														\
																				\
	v.tmp1=_IQdiv2(v.Ualpha); 					/*divide by 2*/					\
	v.tmp2=_IQmpy(_IQ(0.8660254),v.Ubeta);		/* 0.8660254 = sqrt(3)/2*/		\
																				\
	v.Va = v.Ualpha;							/*Inv Clarke*/					\
	v.Vb = -v.tmp1 + v.tmp2;													\
	v.Vc = -v.tmp1 - v.tmp2;													\
																				\
	if (v.Va>v.Vb) {v.Vmax=v.Va; v.Vmin=v.Vb;}	/*Find max and min phase*/		\
	else 	   	   {v.Vmax=v.Vb; v.Vmin=v.Va;}									\
	if (v.Vc>v.Vmax) v.Vmax=v.Vc;												\
	if (v.Vc<v.Vmin) v.Vmin=v.Vc;												\
																				\
	v.Vcomm = _IQdiv2(v.Vmax+v.Vmin);			/*Calculate common mode*/		\
																				\
	v.Ta = v.Va-v.Vcomm;														\
	v.Tb = v.Vb-v.Vcomm;														\
	v.Tc = v.Vc-v.Vcomm;														\
	

#endif // __SVGEN_COMM_H__

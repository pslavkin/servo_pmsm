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

#ifndef __VOLT_CALC_CLA_H__
#define __VOLT_CALC_CLA_H__

typedef struct 	{ float  DcBusVolt;		// Input: DC-bus voltage (pu)
			  	  float  MfuncV1;  		// Input: Modulation voltage phase A (pu)
		  	  	  float  MfuncV2;			// Input: Modulation voltage phase B (pu)	
		   	  	  float  MfuncV3;			// Input: Modulation voltage phase C (pu) 
                  float  OutOfPhase; 	// Parameter: Out of Phase adjustment (0 or 1)
	  	  	  	  float  VphaseA;			// Output: Phase voltage phase A (pu)
		   	  	  float  VphaseB;			// Output: Phase voltage phase B (pu) 
		  	  	  float  VphaseC;			// Output: Phase voltage phase C (pu) 
		  	  	  float  Valpha;			// Output: Stationary d-axis phase voltage (pu)
		  	  	  float  Vbeta;  			// Output: Stationary q-axis phase voltage (pu)
		  	  	  float  temp;				// Variable: temp variable
		  	  	} VOLT_CALC_CLA;	                   


/*
OutOfPhase = 1 for the out of phase correction if
* MfuncV1 is out of phase with PWM1,
* MfuncV2 is out of phase with PWM3,
* MfuncV3 is out of phase with PWM5,
otherwise, set 0 if their phases are correct.
*/

#define ONE_THIRD  (0.33333333333333)
#define TWO_THIRD  (0.66666666666667)
#define INV_SQRT3  (0.57735026918963)
/*------------------------------------------------------------------------------
 	Phase Voltage Calculation Macro Definition
------------------------------------------------------------------------------*/


#define VOLT_CALC_CLA_MACRO(v)														\
																				\
																				\
/* Scale the incomming Modulation functions with the DC bus voltage value*/		\
/* and calculate the 3 Phase voltages */										\
  v.temp 	  = (v.DcBusVolt*ONE_THIRD);									\
  v.VphaseA   = (v.temp*((v.MfuncV1*2)-v.MfuncV2-v.MfuncV3));		\
  v.VphaseB   = (v.temp*((v.MfuncV2*2)-v.MfuncV1-v.MfuncV3));		\
																				\
  if (v.OutOfPhase==0)															\
  {	  v.VphaseA=-v.VphaseA;														\
  	  v.VphaseB=-v.VphaseB;														\
  }	   																			\
/* Voltage transformation (a,b,c)  ->  (Alpha,Beta)	*/							\
  v.Valpha = v.VphaseA;															\
  v.Vbeta = ((v.VphaseA + (v.VphaseB*2))*INV_SQRT3);

// Phase C (if needed)
// v.VphaseC   = _IQmpy(v.temp,(_IQmpy2(v.MfuncV3)-v.MfuncV2-v.MfuncV1));	\

#define VOLT_CALC_INIT_MACRO(v)		\
	  v.  DcBusVolt=0;		\
  	  v.  MfuncV1=0;		\
  	  v.  MfuncV2=0;		\
  	  v.  MfuncV3=0;		\
      v.  OutOfPhase=0;		\
  	  v.  VphaseA=0;		\
  	  v.  VphaseB=0;		\
  	  v.  VphaseC=0;		\
  	  v.  Valpha=0;			\
  	  v.  Vbeta=0;			\
  	  v.  temp=0;			\

#endif // __VOLT_CALC_CLA_H__

























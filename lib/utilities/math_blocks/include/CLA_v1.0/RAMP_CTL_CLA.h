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

#ifndef __RAMP_CNTL_CLA_H__
#define __RAMP_CNTL_CLA_H__

typedef struct { float  TargetValue; 	// Input: Target input 
				 int 	RampDelayMax;	// Parameter: Maximum delay rate 			
		 	 	 float  RampLowLimit;	// Parameter: Minimum limit				  
				 float  RampHighLimit;	// Parameter: Maximum limit
				 int 	RampDelayCount; // Variable: Incremental delay 	
				 float  SetpointValue;	// Output: Target output				 
				 int 	EqualFlag;		// Output: Flag output 
				 float	Tmp;			// Variable: Temp variable
		  	   } RAMP_CNTL_CLA;	            


#define RAMP_CNTL_CLA_MACRO(v)																\
	v.Tmp = v.TargetValue - v.SetpointValue;										\
/*  0.0000305 is resolution */														\
if ((v.Tmp >= (0.0000305))||(v.Tmp <= (-0.0000305)))				    			\
{																					\
	v.RampDelayCount++	;															\
		if (v.RampDelayCount >= v.RampDelayMax)										\
		{																			\
			if (v.TargetValue >= v.SetpointValue)									\
				v.SetpointValue += 0.0000305;										\
			else																	\
				v.SetpointValue -= 0.0000305;										\
																					\
			v.SetpointValue=__mminf32(v.SetpointValue,v.RampHighLimit);				\
			v.SetpointValue=__mmaxf32(v.SetpointValue,v.RampLowLimit);				\
			v.RampDelayCount = 0;													\
																					\
		}																			\
}																					\
else 																				\
{																					\
	v.EqualFlag = 1;																\
	v.SetpointValue=v.TargetValue;													\
}

#define RAMP_CNTL_CLA_INIT(v)		\
	v.EqualFlag=0;					\
	v.RampDelayCount=0;				\
	v.RampDelayMax=5;				\
	v.RampHighLimit =1.0;			\
	v.RampLowLimit = -1.0;			\
	v.SetpointValue=0;				\
	v.TargetValue = 0.3;			\
											

#endif // __RMP_CNTL_H__

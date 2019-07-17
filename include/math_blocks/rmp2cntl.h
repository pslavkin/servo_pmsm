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
File name:        RMP2CNTL.H  
===================================================================================*/


#ifndef __RMP2_CNTL_H__
#define __RMP2_CNTL_H__

typedef struct { int16 DesiredInput; 	// Input: Desired ramp input (Q15) - independently with global Q
                 int16 Ramp2Max; 		// Parameter: Maximum limit (Q15) - independently with global Q
				 int16 Ramp2Min;		// Parameter: Minimum limit (Q15) - independently with global Q			
				 Uint32 Ramp2DelayCount; // Variable: Incremental delay (Q0) - independently with global Q	
				 Uint32 Ramp2Delay;		// Parameter: Ramp2 delay expressed in no of sampling period (Q0) - independently with global Q			
				 int16 Out;				// Output: Ramp2 output (Q15)
		  	  	
				 } RMP2;

/*-----------------------------------------------------------------------------
Default initalizer for the RMP2 object.
-----------------------------------------------------------------------------*/                     
#define RMP2_DEFAULTS { 0, \
                        0x00007FFF, \
                        0x0000000F, \
                        0, \
                        50, \
                       	0, \
             		   }

/*------------------------------------------------------------------------------
	 RMP2CNTL Macro Definitions
------------------------------------------------------------------------------*/


#define RC2_MACRO(v)							\
if (v.Out != v.DesiredInput)					\
{												\
	v.Ramp2DelayCount++;						\
	if (v.Ramp2DelayCount >= v.Ramp2Delay)		\
	{											\
		v.Ramp2DelayCount = 0;					\
		if (v.Out < v.DesiredInput)				\
		{  										\
			v.Out++;							\
			if (v.Out > v.Ramp2Max)				\
				v.Out = v.Ramp2Max;				\
		}										\
		else									\
		{ 										\
			v.Out--;							\
			if (v.Out < v.Ramp2Min)				\
				v.Out = v.Ramp2Min;				\
		}										\
	}											\
}

#endif // __RMP2_CNTL_H__

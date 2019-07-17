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
File name:        RMP3CNTL.H 
===================================================================================*/

#ifndef __RMP3_CNTL_H__
#define __RMP3_CNTL_H__

typedef struct { Uint32 DesiredInput; 		// Input: Desired ramp input (Q0) - independently with global Q
				 Uint32 Ramp3Delay;			// Parameter: Ramp3 delay expressed in no of sampling period (Q0) - independently with global Q		
		 	 	 Uint32 Ramp3DelayCount;	// Variable: Counter for rmp3 delay (Q0) - independently with global Q
				 int32 Out;					// Output: Ramp3 output (Q0) - independently with global Q
				 int32 Ramp3Min;	    	// Parameter: Minimum ramp output (Q0) - independently with global Q
				 Uint32 Ramp3DoneFlag;		// Output: Flag output (Q0) - independently with global Q
		  	  	 
				 } RMP3;	            


/*-----------------------------------------------------------------------------
Default initalizer for the RMP3 object.
-----------------------------------------------------------------------------*/                     
#define RMP3_DEFAULTS { 0, \
                        0, \
                        0, \
                        0, \
                        0x00000050, \
                       	0, \
             		  }


/*------------------------------------------------------------------------------
 RMP3CNTL Macro Definition
------------------------------------------------------------------------------*/

#define RC3_MACRO(v)								\
   if (v.Out == v.DesiredInput)						\
      v.Ramp3DoneFlag = 0x7FFFFFFF;					\
   else												\
    {												\
													\
      v.Ramp3DelayCount++;							\
													\
      if (v.Ramp3DelayCount >= v.Ramp3Delay)		\
      {												\
        v.Out--;									\
													\
        if (v.Out < v.Ramp3Min)						\
           v.Out = v.Ramp3Min;						\
													\
        v.Ramp3DelayCount = 0;						\
      }                          					\
 													\
    }

#endif // __RMP3_CNTL_H__


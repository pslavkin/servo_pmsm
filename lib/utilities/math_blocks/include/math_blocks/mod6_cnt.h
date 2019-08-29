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
File name:        MOD6_CNT.H          
===================================================================================*/

#ifndef __MOD6_CNT_H__
#define __MOD6_CNT_H__

typedef struct { Uint32  TrigInput;   	// Input: Modulo 6 counter trigger input - Q0 (0x00000000 or 0x00007FFF)
				 Uint32  Counter;	    // Output: Modulo 6 counter output - Q0 (0,1,2,3,4,5)			
			   } MOD6CNT;	            

/*-----------------------------------------------------------------------------
Default initalizer for the MOD6CNT object.
-----------------------------------------------------------------------------*/                     
#define MOD6CNT_DEFAULTS { 0,0 }

/*------------------------------------------------------------------------------
	MOD6_CNT Macro Definition
------------------------------------------------------------------------------*/


#define MOD6CNT_MACRO(v)												\
																		\
 if (v.TrigInput > 0)													\
   {																	\
     if (v.Counter == 5)    /* Reset the counter when it is 5 */		\
       v.Counter = 0;													\
     else																\
       v.Counter++;         /* Otherwise, increment by 1 */				\
   }																	

#endif // __MOD_6CNT_H__ 

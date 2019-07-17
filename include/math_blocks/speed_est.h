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
File name:        SPEED_EST.H  
===================================================================================*/


#ifndef __SPEED_EST_H__
#define __SPEED_EST_H__

typedef struct {
       _iq EstimatedTheta;  	// Input: Electrical angle (pu) 
       _iq OldEstimatedTheta;   // History: Electrical angle at previous step (pu)
       _iq EstimatedSpeed;      // Output: Estimated speed in per-unit  (pu)
       Uint32 BaseRpm;     		// Parameter: Base speed in rpm (Q0) - independently with global Q
       _iq21 K1;       			// Parameter: Constant for differentiator (Q21) - independently with global Q
       _iq K2;     				// Parameter: Constant for low-pass filter (pu)
       _iq K3;     				// Parameter: Constant for low-pass filter (pu)
       int32 EstimatedSpeedRpm; // Output : Estimated speed in rpm  (Q0) - independently with global Q
       _iq Temp;				// Variable : Temp variable
       } SPEED_ESTIMATION;  	// Data type created 


/*-----------------------------------------------------------------------------
Default initalizer for the SPEED_ESTIMATION object.
-----------------------------------------------------------------------------*/                     
#define SPEED_ESTIMATION_DEFAULTS   { 0, \
                                	  0, \
                                	  0, \
                                      0, \
                                      0, \
                                      0, \
                                      0, \
                                      0, \
                                      0, \
                                    }

/*------------------------------------------------------------------------------
 SPEED_EST Macro Definition
------------------------------------------------------------------------------*/


#define SE_MACRO(v)																    \
/* Synchronous speed computation   */												\
    v.Temp = v.EstimatedTheta - v.OldEstimatedTheta;		                    	\
    if (v.Temp < -_IQ(0.5))			                                				\
        v.Temp = v.Temp + _IQ(1.0);                                                 \
    else if (v.Temp > _IQ(0.5))			                            				\
        v.Temp = v.Temp - _IQ(1.0);                                      			\
    v.Temp = _IQmpy(v.K1,v.Temp);		                               				\
																					\
/* Low-pass filter */																\
/* Q21 = GLOBAL_Q*Q21 + GLOBAL_Q*Q21 */												\
	v.Temp = _IQmpy(v.K2,_IQtoIQ21(v.EstimatedSpeed))+_IQmpy(v.K3,v.Temp);			\
																					\
/* Saturate the output */															\
	v.Temp=_IQsat(v.Temp,_IQ21(1),_IQ21(-1));										\
	v.EstimatedSpeed = _IQ21toIQ(v.Temp);											\
																					\
/* Update the electrical angle */													\
	v.OldEstimatedTheta = v.EstimatedTheta;											\
																					\
/* Change motor speed from pu value to rpm value (GLOBAL_Q -> Q0)*/					\
/* Q0 = Q0*GLOBAL_Q => _IQXmpy(), X = GLOBAL_Q*/									\
	v.EstimatedSpeedRpm = _IQmpy(v.BaseRpm,v.EstimatedSpeed);
#endif // __SPEED_EST_H__

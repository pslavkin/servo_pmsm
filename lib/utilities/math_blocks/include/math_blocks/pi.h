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
File name:       PI.H 
===================================================================================*/


#ifndef __PI_H__
#define __PI_H__

typedef struct {  
              float32_t  Ref;   			// Input: reference set-point
				  float32_t  Fbk;   			// Input: feedback
				  float32_t  Out;   			// Output: controller output
				  float32_t  Kp;				// Parameter: proportional loop gain
				  float32_t  Ki;			    // Parameter: integral gain
				  float32_t  Umax;			// Parameter: upper saturation limit
				  float32_t  Umin;			// Parameter: lower saturation limit
				  float32_t  up;				// Data: proportional term
				  float32_t  ui;				// Data: integral term
				  float32_t  v1;				// Data: pre-saturated controller output
				  float32_t  i1;				// Data: integrator storage: ui(k-1)
				  float32_t  w1;				// Data: saturation record: [u(k-1) - v(k-1)]
				} PI_CONTROLLER;


/*-----------------------------------------------------------------------------
Default initalisation values for the PI_GRANDO objects
-----------------------------------------------------------------------------*/                     

#define PI_CONTROLLER_DEFAULTS { \
						   0,    \
                           0,    \
						   0,    \
                           1.0,  \
                           0.0,  \
                           1.0,  \
                           -1.0, \
                           0.0,  \
                           0.0,  \
                           0.0,  \
                           0.0,  \
                           1.0   \
              			  }

/*------------------------------------------------------------------------------
	PI_GRANDO Macro Definition
------------------------------------------------------------------------------*/

#define PI_MACRO(v)												\
																\
	/* proportional term */ 									\
	v.up = _IQmpy(v.Kp, (v.Ref - v.Fbk));						\
																\
	/* integral term */ 										\
	v.ui = (v.Out == v.v1)?(_IQmpy(v.Ki, v.up)+ v.i1) : v.i1;	\
	v.i1 = v.ui;												\
																\
	/* control output */ 										\
	v.v1 = v.up + v.ui;											\
	v.Out= _IQsat(v.v1, v.Umax, v.Umin);						\
	//v.w1 = (v.Out == v.v1) ? _IQ(1.0) : _IQ(0.0);				\

// ***********************************************************************************
//   This macro works with angles as inputs, hence error is rolled within -pi to +pi
// ***********************************************************************************

static inline void runPIPos(PI_CONTROLLER * in)
{
	// proportional term
	in->up = in->Ref - in->Fbk;
//	if(in->up >= 0.5)
//	{
//		in->up -= 1.0;
//	}
//	else if(in->up <= -0.5)
//	{
//		in->up += 1.0;
//	}
//
	// integral term
	in->up = in->Kp * in->up;
	in->ui = (in->Out == in->v1) ? (in->Ki * in->up + in->i1) : in->i1;
	in->i1 = in->ui;

	// control output
	in->v1 = in->up + in->ui;
	in->Out = __fmax(__fmin(in->v1, in->Umax), in->Umin);
//	in->w1 = (in->Out == in->v1) ? 1.0 : 0.0;
}


#define PI_POS_MACRO(v)										    \
	/* proportional term */										\
	v.up = v.Ref - v.Fbk;										\
	if (v.up >= _IQ(0.5))  										\
	  v.up -= _IQ(1.0); 			/* roll in the error */	    \
	else if (v.up <= _IQ(-0.5))  								\
	  v.up += _IQ(1.0); 	        /* roll in the error */	    \
																\
	/* integral term */											\
	v.up = _IQmpy(v.Kp, v.up);									\
	v.ui = (v.Out == v.v1)?(_IQmpy(v.Ki, v.up)+ v.i1) : v.i1;	\
	v.i1 = v.ui;												\
																\
	/* control output */										\
	v.v1 = v.up + v.ui;								            \
	v.Out= _IQsat(v.v1, v.Umax, v.Umin);						\
	/*v.w1 = (v.Out == v.v1) ? _IQ(1.0) : _IQ(0.0); */			\


#endif // __PI_H__


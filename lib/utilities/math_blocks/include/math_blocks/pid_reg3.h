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

/* ==================================================================================
File name:       PID_REG3.H  (IQ version)                    
=====================================================================================*/

#ifndef __PIDREG3_H__
#define __PIDREG3_H__

typedef struct {  _iq  Ref;   			// Input: Reference input 
				  _iq  Fdb;   			// Input: Feedback input 
				  _iq  Err;				// Variable: Error
				  _iq  Kp;				// Parameter: Proportional gain
				  _iq  Up;				// Variable: Proportional output 
				  _iq  Ui;				// Variable: Integral output 
				  _iq  Ud;				// Variable: Derivative output 	
				  _iq  OutPreSat; 		// Variable: Pre-saturated output
				  _iq  OutMax;		    // Parameter: Maximum output 
				  _iq  OutMin;	    	// Parameter: Minimum output
				  _iq  Out;   			// Output: PID output 
				  _iq  SatErr;			// Variable: Saturated difference
				  _iq  Ki;			    // Parameter: Integral gain
				  _iq  Kc;		     	// Parameter: Integral correction gain
				  _iq  Kd; 		        // Parameter: Derivative gain
				  _iq  Up1;		   	    // History: Previous proportional output
		 	 	} PIDREG3;	            

typedef PIDREG3 *PIDREG3_handle;
/*-----------------------------------------------------------------------------
Default initalizer for the PIDREG3 object.
-----------------------------------------------------------------------------*/                     
#define PIDREG3_DEFAULTS { 0, 			\
                           0, 			\
                           0, 			\
                           _IQ(1.3), 	\
                           0, 			\
                           0, 			\
                           0, 			\
                           0, 			\
                           _IQ(1), 		\
                           _IQ(-1), 	\
                           0, 			\
                           0, 			\
                           _IQ(0.02), 	\
                           _IQ(0.5), 	\
                           _IQ(1.05), 	\
                           0, 			\
              			  }

/*------------------------------------------------------------------------------
 	PID Macro Definition
------------------------------------------------------------------------------*/


#define PID_REG3_MACRO(v)																					\
	v.Err = v.Ref - v.Fdb; 									/* Compute the error */						\
	v.Up= _IQmpy(v.Kp,v.Err);								/* Compute the proportional output */		\
	v.Ui= v.Ui + _IQmpy(v.Ki,v.Up) + _IQmpy(v.Kc,v.SatErr);	/* Compute the integral output */			\
	v.OutPreSat= v.Up + v.Ui;								/* Compute the pre-saturated output */		\
	v.Out = _IQsat(v.OutPreSat, v.OutMax, v.OutMin);		/* Saturate the output */					\
	v.SatErr = v.Out - v.OutPreSat;							/* Compute the saturate difference */		\
	v.Up1 = v.Up;											/* Update the previous proportional output */

#define PID_REG3_POS_MACRO(v)																			\
	v.Err = v.Ref - v.Fdb; 									/* Compute the error */						\
	if (v.Err >= _IQ(0.5))  																			\
		v.Err -= _IQ(1.0); 									/* roll in the error */	    				\
	else if (v.Err <= _IQ(-0.5))  																		\
		v.Err += _IQ(1.0); 	        						/* roll in the error */	    				\
	v.Up= _IQmpy(v.Kp,v.Err);								/* Compute the proportional output */		\
	v.Ui= v.Ui + _IQmpy(v.Ki,v.Up) + _IQmpy(v.Kc,v.SatErr);	/* Compute the integral output */			\
	v.Ud = _IQmpy(v.Kd,(v.Up - v.Up1));																	\
	v.OutPreSat= v.Up + v.Ui + v.Ud;						/* Compute the pre-saturated output */		\
	v.Out = _IQsat(v.OutPreSat, v.OutMax, v.OutMin);		/* Saturate the output */					\
	v.SatErr = v.Out - v.OutPreSat;							/* Compute the saturate difference */		\
	v.Up1 = v.Up;
#endif // __PIDREG3_H__

// Add the lines below if derivative output is needed following the integral update


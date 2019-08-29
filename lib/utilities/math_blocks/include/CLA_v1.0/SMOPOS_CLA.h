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
File name:       SMOPOS_CLA.H  
==================================================================================*/
#ifndef __SMO_CLA_H__
#define __SMO_CLA_H__

typedef struct {  float  Valpha;   	// Input: Stationary alfa-axis stator voltage 
                  float  Ealpha;   	// Variable: Stationary alfa-axis back EMF 
                  float  Zalpha;      // Output: Stationary alfa-axis sliding control 
                  float  Gsmopos;    	// Parameter: Motor dependent control gain 
                  float  EstIalpha;   // Variable: Estimated stationary alfa-axis stator current 
                  float  Fsmopos;    	// Parameter: Motor dependent plant matrix 
                  float  Vbeta;   	// Input: Stationary beta-axis stator voltage 
                  float  Ebeta;  		// Variable: Stationary beta-axis back EMF 
                  float  Zbeta;      	// Output: Stationary beta-axis sliding control 
                  float  EstIbeta;    // Variable: Estimated stationary beta-axis stator current 
                  float  Ialpha;  	// Input: Stationary alfa-axis stator current 
                  float  IalphaError; // Variable: Stationary alfa-axis current error                 
                  float  Kslide;     	// Parameter: Sliding control gain 
                  float  Ibeta;  		// Input: Stationary beta-axis stator current 
                  float  IbetaError;  // Variable: Stationary beta-axis current error                 
                  float  Kslf;       	// Parameter: Sliding control filter gain 
                  float  Theta;     	// Output: Compensated rotor angle
                  float  E0;			// Parameter: 0.5 	 
				 } SMOPOS_CLA;	            


/*------------------------------------------------------------------------------
Prototypes for the functions in SMOPOS.C
------------------------------------------------------------------------------*/

#define SMOPOS_CLA_MACRO(v)																					\
																										\
    /*	Sliding mode current observer	*/																\
    v.EstIalpha = (v.Fsmopos*v.EstIalpha) + (v.Gsmopos*(v.Valpha-v.Ealpha-v.Zalpha));		\
    v.EstIbeta  = (v.Fsmopos*v.EstIbeta)  + (v.Gsmopos*(v.Vbeta -v.Ebeta -v.Zbeta ));		\
																										\
	/*	Current errors	*/																				\
    v.IalphaError = v.EstIalpha - v.Ialpha;																\
    v.IbetaError  = v.EstIbeta  - v.Ibeta;																\
    																									\
	/*  Sliding control calculator	*/																	\
	/* v.Zalpha=v.IalphaError*v.Kslide/v.E0) where E0=0.5 here*/										\
	v.Zalpha = (__mmaxf32((__mminf32(v.IalphaError,v.E0)),-v.E0))*(v.Kslide*2.0);	\
	v.Zbeta  = (__mmaxf32((__mminf32(v.IbetaError,v.E0)),-v.E0))*(v.Kslide*2.0);		\
																										\
	/*	Sliding control filter -> back EMF calculator	*/												\
    v.Ealpha = v.Ealpha + (v.Kslf*(v.Zalpha-v.Ealpha));											\
    v.Ebeta  = v.Ebeta  + (v.Kslf*(v.Zbeta -v.Ebeta));											\
																										\
	/*	Rotor angle calculator -> Theta = atan(-Ealpha,Ebeta)	*/										\
	v.Theta = CLAatan2PU(-v.Ealpha,v.Ebeta); 

#define SMO_CLA_INIT(v)	\
						\
    v.Ealpha=0;   	 	\
    v.EstIalpha=0;  	\
    v.Ebeta=0;  	 	\
    v.Zbeta=0;       	\
    v.Zalpha=0;      	\
    v.EstIbeta=0;    	\
    v.IalphaError=0;    \
    v.IbetaError=0;     \
    v.Theta=0;     		\
    v.E0=0.5;			\
	v.Gsmopos=0;		\
	v.Fsmopos=0;		\
	v.Kslide=0;			\
	v.Kslf=0;			\
	
#endif

	/* Extended version of sliding control calculator 
    if (_IQabs(v.IalphaError) < E0)
       v.Zalpha = _IQmpy(v.Kslide,_IQdiv(v.IalphaError,E0));  
    else if (v.IalphaError >= E0) 
       v.Zalpha = v.Kslide;
    else if (v.IalphaError <= -E0) 
       v.Zalpha = -v.Kslide;

    if (_IQabs(v.IbetaError) < E0)
       v.Zbeta = _IQmpy(v.Kslide,_IQdiv(v.IbetaError,E0));  
    else if (v.IbetaError >= E0) 
       v.Zbeta = v.Kslide;
    else if (v.IbetaError <= -E0) 
       v.Zbeta = -v.Kslide;
*/


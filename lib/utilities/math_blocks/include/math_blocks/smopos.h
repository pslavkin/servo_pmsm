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
File name:       SMOPOS.H  
==================================================================================*/
#ifndef __SMOPOS_H__
#define __SMOPOS_H__


typedef struct {  _iq  Valpha;   	// Input: Stationary alfa-axis stator voltage 
                  _iq  Ealpha;   	// Variable: Stationary alfa-axis back EMF 
                  _iq  Zalpha;      // Output: Stationary alfa-axis sliding control 
                  _iq  Gsmopos;    	// Parameter: Motor dependent control gain 
                  _iq  EstIalpha;   // Variable: Estimated stationary alfa-axis stator current 
                  _iq  Fsmopos;    	// Parameter: Motor dependent plant matrix 
                  _iq  Vbeta;   	// Input: Stationary beta-axis stator voltage 
                  _iq  Ebeta;  		// Variable: Stationary beta-axis back EMF 
                  _iq  Zbeta;      	// Output: Stationary beta-axis sliding control 
                  _iq  EstIbeta;    // Variable: Estimated stationary beta-axis stator current 
                  _iq  Ialpha;  	// Input: Stationary alfa-axis stator current 
                  _iq  IalphaError; // Variable: Stationary alfa-axis current error                 
                  _iq  Kslide;     	// Parameter: Sliding control gain 
                  _iq  Ibeta;  		// Input: Stationary beta-axis stator current 
                  _iq  IbetaError;  // Variable: Stationary beta-axis current error                 
                  _iq  Kslf;       	// Parameter: Sliding control filter gain 
                  _iq  Theta;     	// Output: Compensated rotor angle
                  _iq  E0;			// Parameter: 0.5 	 
				 } SMOPOS;	            

/*-----------------------------------------------------------------------------
Default initalizer for the SMOPOS object.
-----------------------------------------------------------------------------*/                     
#define SMOPOS_DEFAULTS {  0,0,0,0,0,0,0,0,0,0,0, \
	                       0,0,0,0,0,0,_IQ(0.5)   \
              			}

/*------------------------------------------------------------------------------
Prototypes for the functions in SMOPOS.C
------------------------------------------------------------------------------*/

#define SMO_MACRO(v)																					\
																										\
    /*	Sliding mode current observer	*/																\
    v.EstIalpha = _IQmpy(v.Fsmopos,v.EstIalpha) + _IQmpy(v.Gsmopos,(v.Valpha-v.Ealpha-v.Zalpha));		\
    v.EstIbeta  = _IQmpy(v.Fsmopos,v.EstIbeta)  + _IQmpy(v.Gsmopos,(v.Vbeta -v.Ebeta -v.Zbeta ));		\
																										\
	/*	Current errors	*/																				\
    v.IalphaError = v.EstIalpha - v.Ialpha;																\
    v.IbetaError  = v.EstIbeta  - v.Ibeta;																\
    																									\
	/*  Sliding control calculator	*/																	\
	/* v.Zalpha=v.IalphaError*v.Kslide/v.E0) where E0=0.5 here*/										\
	v.Zalpha = _IQmpy(_IQsat(v.IalphaError,v.E0,-v.E0),_IQmpy2(v.Kslide));								\
	v.Zbeta  = _IQmpy(_IQsat(v.IbetaError ,v.E0,-v.E0),_IQmpy2(v.Kslide));								\
																										\
	/*	Sliding control filter -> back EMF calculator	*/												\
    v.Ealpha = v.Ealpha + _IQmpy(v.Kslf,(v.Zalpha-v.Ealpha));											\
    v.Ebeta  = v.Ebeta  + _IQmpy(v.Kslf,(v.Zbeta -v.Ebeta));											\
																										\
	/*	Rotor angle calculator -> Theta = atan(-Ealpha,Ebeta)	*/										\
	v.Theta = _IQatan2PU(-v.Ealpha,v.Ebeta); 

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


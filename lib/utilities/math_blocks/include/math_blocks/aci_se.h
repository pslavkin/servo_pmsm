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
File name:       ACI_SE.H           
===================================================================================*/


#ifndef __ACI_SE_H__
#define __ACI_SE_H__

typedef struct {  _iq  	IQsS;  			// Input: Stationary q-axis stator current  
				  _iq  	PsiDrS;  		// Input: Stationary d-axis rotor flux  
				  _iq  	IDsS;			// Input: Stationary d-axis stator current  
				  _iq  	PsiQrS;			// Input: Stationary q-axis rotor flux  		
		 	 	  _iq  	K1;				// Parameter: Constant using in speed computation  
                  _iq  	SquaredPsi; 	// Variable: Squared rotor flux    
    			  _iq  	ThetaFlux;  	// Input: Rotor flux angle      		  
		 	 	  _iq21 K2;				// Parameter: Constant using in differentiator (Q21) - independently with global Q 
    			  _iq  	OldThetaFlux; 	// Variable: Previous rotor flux angle      		  
		 	 	  _iq  	K3;				// Parameter: Constant using in low-pass filter   
		 	 	  _iq21 WPsi;			// Variable: Synchronous rotor flux speed (Q21) - independently with global Q 
		 	 	  _iq  	K4;				// Parameter: Constant using in low-pass filter  
		 	 	  _iq  	WrHat;			// Output: Estimated speed in per unit  
				 Uint32 BaseRpm; 		// Parameter: Base rpm speed (Q0) - independently with global Q  		 	 	  
		 	 	  int32 WrHatRpm;		// Output: Estimated speed in rpm (Q0) - independently with global Q
		 	 	  _iq   WSlip;			// Variable: Slip
		 	 	  _iq	WSyn;			// Variable: Synchronous speed
				 } ACISE;	            
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			

/*-----------------------------------------------------------------------------
Default initalizer for the ACISE object.
----------------------------------------------------------------------------- */                    
#define ACISE_DEFAULTS {  0, 			\
                          0, 			\
                          0, 			\
                          0, 			\
                          _IQ(0.1), 	\
                          0, 			\
                          0, 			\
                          _IQ21(0.1), 	\
                          0, 			\
                          _IQ(0.1), 	\
                          0, 			\
                          _IQ(0.1), 	\
                          0, 			\
                          3600, 		\
              			  0, 			\
              			  0, 			\
              			  0, 			\
              			}

#define DIFF_MAX_LIMIT  	_IQ(0.80)
#define DIFF_MIN_LIMIT  	_IQ(0.20)

/*------------------------------------------------------------------------------
	ACI Speed Estimator MACRO Definition 
------------------------------------------------------------------------------ */


#define ACISE_MACRO(v)															\
																				\
/*  Slip computation */															\
	v.SquaredPsi = _IQmpy(v.PsiDrS,v.PsiDrS)+_IQmpy(v.PsiQrS,v.PsiQrS);			\
																				\
	v.WSlip= _IQmpy(v.K1,(_IQmpy(v.PsiDrS,v.IQsS) - _IQmpy(v.PsiQrS,v.IDsS)));	\
	v.WSlip= _IQdiv(v.WSlip,v.SquaredPsi);										\
																				\
/*	Synchronous speed computation	*/											\
	if ((v.ThetaFlux < DIFF_MAX_LIMIT)&(v.ThetaFlux > DIFF_MIN_LIMIT))			\
/* 	Q21 = Q21*(GLOBAL_Q-GLOBAL_Q)*/												\
		  v.WSyn = _IQmpy(v.K2,(v.ThetaFlux - v.OldThetaFlux));					\
	else  v.WSyn = v.WPsi;														\
																				\
/* low-pass filter, Q21 = GLOBAL_Q*Q21 + GLOBAL_Q*Q21	*/						\
	v.WPsi = _IQmpy(v.K3,v.WPsi) + _IQmpy(v.K4,v.WSyn);							\
																				\
/* Q21 = Q21 - GLOBAL_Q */														\
	v.OldThetaFlux = v.ThetaFlux;												\
	v.WrHat = v.WPsi - _IQtoIQ21(v.WSlip);										\
																				\
/* Limit the estimated speed between -1 and 1 per-unit */						\
	v.WrHat=_IQsat(v.WrHat,_IQ21(1),_IQ21(-1));									\
	v.WrHat = _IQ21toIQ(v.WrHat);												\
																				\
/* Q0 = Q0*GLOBAL_Q => _IQXmpy(), X = GLOBAL_Q */								\
	v.WrHatRpm = _IQmpy(v.BaseRpm,v.WrHat);	

#endif // __ACI_SE_H__

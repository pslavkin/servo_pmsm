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

#ifndef __ACI_SE_CLA_H__
#define __ACI_SE_CLA_H__

typedef struct { float  	IQsS;  			// Input: Stationary q-axis stator current  
				 float  	PsiDrS;  		// Input: Stationary d-axis rotor flux  
				 float  	IDsS;			// Input: Stationary d-axis stator current  
				 float  	PsiQrS;			// Input: Stationary q-axis rotor flux  		
		 	 	 float  	K1;				// Parameter: Constant using in speed computation  
                 float  	SquaredPsi; 	// Variable: Squared rotor flux    
    			 float  	ThetaFlux;  	// Input: Rotor flux angle      		  
		 	 	 float 		K2;				// Parameter: Constant using in differentiator (Q21) - independently with global Q 
    			 float  	OldThetaFlux; 	// Variable: Previous rotor flux angle      		  
		 	 	 float  	K3;				// Parameter: Constant using in low-pass filter   
		 	 	 float 		WPsi;			// Variable: Synchronous rotor flux speed (Q21) - independently with global Q 
		 	 	 float  	K4;				// Parameter: Constant using in low-pass filter  
		 	 	 float  	WrHat;			// Output: Estimated speed in per unit  
				 float 		BaseRpm; 		// Parameter: Base rpm speed (Q0) - independently with global Q  		 	 	  
		 	 	 float 		WrHatRpm;		// Output: Estimated speed in rpm (Q0) - independently with global Q
		 	 	 float   	WSlip;			// Variable: Slip
		 	 	 float		WSyn;			// Variable: Synchronous speed
				 } ACI_SE_CLA;	            
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			

#define DIFF_MAX_LIMIT  	(0.80)
#define DIFF_MIN_LIMIT  	(0.20)

/*------------------------------------------------------------------------------
	ACI Speed Estimator MACRO Definition 
------------------------------------------------------------------------------ */


#define ACI_SE_CLA_MACRO(v)														\
																				\
/*  Slip computation */															\
	v.SquaredPsi =(v.PsiDrS*v.PsiDrS)+(v.PsiQrS*v.PsiQrS);						\
																				\
	v.WSlip= (v.K1*((v.PsiDrS*v.IQsS) - (v.PsiQrS*v.IDsS)));					\
	v.WSlip= (v.WSlip/v.SquaredPsi);											\
																				\
/*	Synchronous speed computation	*/											\
	if ((v.ThetaFlux < DIFF_MAX_LIMIT)&&(v.ThetaFlux > DIFF_MIN_LIMIT))			\
		  v.WSyn = (v.K2*(v.ThetaFlux - v.OldThetaFlux));						\
	else  v.WSyn = v.WPsi;														\
																				\
/* low-pass filter */															\
	v.WPsi = (v.K3*v.WPsi) + (v.K4*v.WSyn);										\
																				\
/*  */																			\
	v.OldThetaFlux = v.ThetaFlux;												\
	v.WrHat = v.WPsi - v.WSlip;													\
																				\
/* Limit the estimated speed between -1 and 1 per-unit */						\
	v.WrHat=__mminf32(v.WrHat,(1.0));											\
	v.WrHat=__mmaxf32(v.WrHat,(-1.0));											\
																				\
/*  */																			\
	v.WrHatRpm = (v.BaseRpm*v.WrHat);	

#define ACI_SE_CLA_INIT(v)	\
	 v.IQsS=0;  			\
	 v.PsiDrS=0;  			\
	 v.IDsS=0;				\
	 v.PsiQrS=0;			\
 	 v.K1=0;				\
     v.SquaredPsi=0; 	 	\
	 v.ThetaFlux=0;  		\
 	 v.K2=0;				\
	 v.OldThetaFlux=0; 	   	\
 	 v.K3=0;				\
 	 v.WPsi=0;			 	\
 	 v.K4=0;				\
 	 v.WrHat=0;				\
	 v.BaseRpm=0; 		 	\
 	 v.WrHatRpm=0;			\
 	 v.WSlip=0;				\
 	 v.WSyn=0;				\


#endif // __ACI_SE_H__

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

#ifndef __ACI_FE_CLA_H__
#define __ACI_FE_CLA_H__

typedef struct {  float  ThetaFlux;      	// Output: Rotor flux angle 
	              float  IQsS;		    	// Input: Stationary q-axis stator current  
	              float  IDsS;         		// Input: Stationary d-axis stator current
	              float  IDsE;				// Variable: Measured current in sync. reference frame  
	              float  K1;           	// Parameter: Constant using in current model 
	              float  FluxDrE;        	// Variable: Rotating d-axis rotor flux (current model)
	              float  K2;           	// Parameter: Constant using in current model 
	              float  FluxQrS;        	// Variable: Stationary q-axis rotor flux (current model) 
	              float  FluxDrS;        	// Variable: Stationary d-axis rotor flux (current model) 
	              float  K3;           	// Parameter: Constant using in stator flux computation 
	              float  K4;           	// Parameter: Constant using in stator flux computation 
	              float  FluxDsS;        	// Variable: Stationary d-axis stator flux (current model) 
	              float  FluxQsS;        	// Variable: Stationary q-axis stator flux (current model) 
				  float  PsiDsS;			// Variable: Stationary d-axis stator flux (voltage model) 
	              float  Kp;           	// Parameter: PI proportionnal gain 
	              float  Error;			// Parameter: Error term
	              float  UiDsS;           // Variable: Stationary d-axis integral term 
	              float  UCompDsS;        // Variable: Stationary d-axis compensated voltage 
	              float  Ki;           	// Parameter: PI integral gain 
	              float  PsiQsS;       	// Variable: Stationary q-axis stator flux (voltage model) 
	              float  UiQsS;           // Variable: Stationary q-axis integral term  
	              float  UCompQsS;        // Variable: Stationary q-axis compensated voltage 
	              float  EmfDsS;          // Variable: Stationary d-axis back emf 
	              float  UDsS;         	// Input: Stationary d-axis stator voltage 
	              float  K5;           	// Parameter: Constant using in back emf computation 
	              float  K6;           	// Parameter: Constant using in back emf computation 
	              float  EmfQsS;          // Variable: Stationary q-axis back emf  
	              float  UQsS;         	// Input: Stationary q-axis stator voltage 
	              float  K8;           	// Parameter: Constant using in rotor flux computation 
	              float  K7;           	// Parameter: Constant using in rotor flux computation 
				  float  PsiDrS;			// Output: Stationary d-axis estimated rotor flux 
				  float  PsiQrS;			// Output: Stationary q-axis estimated rotor flux 
				  float  OldEmf;		    // Variable: Old back-emf term
				  float  Sine;			// Variable: Sine term
				  float  Cosine;			// Variable: Cosine term 
				 } ACI_FE_CLA;	            


/*------------------------------------------------------------------------------
	ACI Flux Estimator MACRO Definition 
------------------------------------------------------------------------------*/


#define ACI_FE_CLA_MACRO(v)														\
																				\
/* Calculate Sine and Cosine terms for Park/IPark transformations	*/			\
	v.Sine 	 = CLAsinPU(v.ThetaFlux);											\
	v.Cosine = CLAcosPU(v.ThetaFlux);											\
																				\
/* Park transformation on the measured stator current*/							\
	v.IDsE = v.IQsS*v.Sine;														\
	v.IDsE +=(v.IDsS*v.Cosine);													\
																				\
/* The current model section (Classical Rotor Flux Vector Control Equation)*/	\
	v.FluxDrE = (v.K1*v.FluxDrE) + (v.K2*v.IDsE);								\
																				\
/* Inverse park transformation on the rotor flux from the current model*/		\
	v.FluxDrS = (v.FluxDrE*v.Cosine);											\
	v.FluxQrS = (v.FluxDrE*v.Sine);												\
																				\
/* Compute the stator flux based on the rotor flux from current model*/			\
	v.FluxDsS = (v.K3*v.FluxDrS) + (v.K4*v.IDsS);								\
	v.FluxQsS = (v.K3*v.FluxQrS) + (v.K4*v.IQsS);								\
																				\
/* Conventional PI controller section */										\
	v.Error =  v.PsiDsS - v.FluxDsS;											\
	v.UCompDsS = (v.Kp*v.Error) + v.UiDsS;										\
	v.UiDsS = (v.Kp*(v.Ki*v.Error)) + v.UiDsS;									\
																				\
	v.Error =  v.PsiQsS - v.FluxQsS;											\
	v.UCompQsS = (v.Kp*v.Error) + v.UiQsS;										\
	v.UiQsS =(v.Kp*(v.Ki*v.Error)) + v.UiQsS;									\
																				\
/* Compute the estimated stator flux based on the integral of back emf*/		\
	v.OldEmf = v.EmfDsS;														\
	v.EmfDsS = v.UDsS - v.UCompDsS - (v.K5*v.IDsS);								\
	v.PsiDsS = v.PsiDsS + ((v.K6*(v.EmfDsS + v.OldEmf)))*0.5;					\
																				\
	v.OldEmf = v.EmfQsS;														\
	v.EmfQsS = v.UQsS - v.UCompQsS - (v.K5*v.IQsS);								\
	v.PsiQsS = v.PsiQsS + ((v.K6*(v.EmfQsS + v.OldEmf)))*0.5;					\
																				\
/* Estimate the rotor flux based on stator flux from the integral of back emf*/	\
																				\
	v.PsiDrS = (v.K7*v.PsiDsS) - (v.K8*v.IDsS);									\
	v.PsiQrS = (v.K7*v.PsiQsS) - (v.K8*v.IQsS);									\
																				\
/* Compute the rotor flux angle*/												\
	v.ThetaFlux = CLAatan2PU(v.PsiQrS,v.PsiDrS);


	#define ACI_FE_CLA_INIT(v)				      \
	v.ThetaFlux=0;                                \
    v.IQsS=0;                                     \
    v.IDsS=0;                                     \
    v.IDsE=0;                                     \
    v.K1=0;                                       \
	v.FluxDrE=0;                                  \
	v.K2=0;                                       \
	v.FluxQrS=0;                                  \
	v.FluxDrS=0;                                  \
	v.K3=0;                                       \
	v.K4=0;                                       \
    v.FluxDsS=0;                                  \
    v.FluxQsS=0;                                  \
    v.PsiDsS=0;                                   \
    v.Kp=0;                                       \
    v.Error=0;                                    \
    v.UiDsS=0;                                    \
    v.UCompDsS=0;                                 \
    v.Ki=0;                                       \
    v.PsiQsS=0;                                   \
    v.UiQsS=0;                                    \
    v.UCompQsS=0;                                 \
    v.EmfDsS=0;                                   \
    v.UDsS=0;                                     \
    v.K5=0;                                       \
    v.K6=0;                                       \
    v.EmfQsS=0;                                   \
    v.UQsS=0;                                     \
    v.K8=0;                                       \
    v.K7=0;                                       \
    v.PsiDrS=0;                                   \
    v.PsiQrS=0;                                   \
    v.OldEmf=0;                                   \
    v.Sine=0;                                     \
    v.Cosine=0;                                   \

#endif // __ACI_FE_CLA_H__


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
File name:       CUR_MOD.H  
===================================================================================*/
#ifndef __CUR_MOD_H__
#define __CUR_MOD_H__

typedef struct 	{ _iq  IDs; 		// Input: Syn. rotating d-axis current (pu) 
				  _iq  IQs;			// Input: Syn. rotating q-axis current (pu) 
			      _iq  Wr;			// Input: Rotor electrically angular velocity (pu) 	  			      
				  _iq  IMDs;		// Variable: Syn. rotating d-axis magnetizing current (pu) 
				  _iq  Theta;		// Output: Rotor flux angle (pu)
			      _iq  Kr;			// Parameter: constant using in magnetizing current calculation
			      _iq  Kt;			// Parameter: constant using in slip calculation 
			      _iq  K;			// Parameter: constant using in rotor flux angle calculation
				  _iq  Wslip;		// Variable: Slip
				  _iq  We;			// Variable: Angular freq of the stator	
				} CURMOD;
																																																																																																																																																																																																								

/*-----------------------------------------------------------------------------
Default initalizer for the CURMOD object.
-----------------------------------------------------------------------------*/                     
#define CURMOD_DEFAULTS { 0,0,0,0,0, \
                          0,0,0,0,0 \
                       }

/*------------------------------------------------------------------------------
 CUR_MOD Macro Definition
------------------------------------------------------------------------------*/


#define CUR_MOD_MACRO(v)							\
	v.IMDs +=  _IQmpy(v.Kr,(v.IDs - v.IMDs));		\
	v.Wslip = _IQdiv(_IQmpy(v.Kt,v.IQs),v.IMDs);	\
	v.We = v.Wr + v.Wslip;							\
	v.Theta +=  _IQmpy(v.K,v.We);					\
													\
    if (v.Theta > _IQ(1))							\
       v.Theta -=  _IQ(1);							\
    else if (v.Theta < _IQ(0))						\
       v.Theta += _IQ(1);

//v.Theta=(v.Theta+_IQ(1.0))&& 0x00ffffff;

#endif


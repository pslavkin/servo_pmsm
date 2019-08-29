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
File name:       sin_cos_table.H

Description: This header file contains macro definition for a discrete sin/cos table.
			 sin and cos tables come from IQmathTables section which could be ROM
			 or RAM               
===================================================================================*/

#ifndef SINCOSTBL_H_
#define SINCOSTBL_H_

#include "IQmathLib.h"

/*-----------------------------------------------------------------------------
	Define the structure of the SINTBL Driver Object 
-----------------------------------------------------------------------------*/
typedef struct {
	    Uint16 AngleShift;	// Input: scale angle to modulo 512 (length of table) 
        Uint16 Angle;    	// Input: angle (Q2-Q9)
        _iq SinOut;    		// Output: Sin (GLOBAL_Q) 
        _iq CosOut;    		// Output: Cos (GLOBAL_Q)
        } SINCOSTBL ;    

/*-----------------------------------------------------------------------------
Default initalizer for the SINCOSTBL object.
-----------------------------------------------------------------------------*/                     
#define SINCOSTBL_DEFAULTS {  0, \
                          0, \
                          0, \
                          0	 \
              			  }

/*------------------------------------------------------------------------------
	SINCOSTBL Update Macro Definition
------------------------------------------------------------------------------*/

    /*symbols from IQmathTables section*/
	extern _iq IQsinTable[];
	extern _iq IQcosTable[];

    Uint16 Angle;
    
#define SINCOSTBL_MACRO(st)														\
																				\
	/* scale angle up to modulo 512 */											\
	Angle = (st.Angle << st.AngleShift) & 0x01FF;								\
																				\
	/* grab sin output from table */											\
	st.SinOut = _IQ30toIQ(IQsinTable[Angle]);									\
																				\
	/* grab cos output from table */											\
	st.CosOut = _IQ30toIQ(IQcosTable[Angle]);									\
  

#endif /*SINCOSTBL_H_*/

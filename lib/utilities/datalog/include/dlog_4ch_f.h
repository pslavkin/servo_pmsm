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

//----------------------------------------------------------------------------------
//	FILE:			dlog_4ch_f.h
//
//	Description:header file for data logging module
//
//	Version: 		1.0
//
//  Target:  		TMS320F28377D,
//
//----------------------------------------------------------------------------------
//  Copyright Texas Instruments © 2004-2017
//----------------------------------------------------------------------------------
//  Revision History:
//----------------------------------------------------------------------------------
//  Date	  | Description / Status
//----------------------------------------------------------------------------------
// Feb 2017  - Example project for FLC Library Usage
//----------------------------------------------------------------------------------

#ifndef DLOG_4CH_F_H
#define DLOG_4CH_F_H

#include "device.h"
//#include "F28x_Project.h"

//*********** Structure Definition ********//
typedef struct{
	float32_t *input_ptr1;
	float32_t *input_ptr2;
	float32_t *input_ptr3;
	float32_t *input_ptr4;
	float32_t *output_ptr1;
	float32_t *output_ptr2;
	float32_t *output_ptr3;
	float32_t *output_ptr4;
	float32_t prev_value;
	float32_t trig_value;
	int16_t status;
	int16_t pre_scalar;
	int16_t skip_count;
	int16_t size;
	int16_t count;
}DLOG_4CH_F;

//*********** Function Declarations *******//
void DLOG_4CH_F_init(DLOG_4CH_F *v);
void DLOG_4CH_F_FUNC(DLOG_4CH_F *v);

//*********** Macro Definition ***********//
#define DLOG_4CH_F_MACRO(v)											\
	switch(v.status)												\
	{																\
	case 1: /* wait for trigger*/									\
		if(*v.input_ptr1>v.trig_value && v.prev_value<v.trig_value)	\
		{															\
			/* rising edge detected start logging data*/			\
			v.status=2;												\
		}															\
		break;														\
	case 2:															\
		v.skip_count++;												\
		if(v.skip_count==v.pre_scalar)								\
		{															\
			v.skip_count=0;											\
			v.output_ptr1[v.count]=*v.input_ptr1;					\
			v.output_ptr2[v.count]=*v.input_ptr2;					\
			v.output_ptr3[v.count]=*v.input_ptr3;					\
			v.output_ptr4[v.count]=*v.input_ptr4;					\
			v.count++;												\
			if(v.count==v.size)										\
			{														\
				v.count=0;											\
				v.status=1;											\
			}														\
		}															\
		break;														\
	default:														\
		v.status=0;													\
	}																\
	v.prev_value=*v.input_ptr1;										\


#endif /* DLOG_4CH_F_H_ */

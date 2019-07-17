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
File name:       VHZ_PROF.H  
===================================================================================*/


#ifndef __VHZ_PROF_H__
#define __VHZ_PROF_H__

typedef struct 	{ _iq  Freq; 		    // Input: Input Frequency (pu)
				_iq  VoltOut;			// Output: Output voltage (pu)
				_iq  LowFreq;			// Parameter: Low Frequency (pu)			
				_iq  HighFreq;			// Parameter: High Frequency at rated voltage (pu)
				_iq  FreqMax; 			// Parameter: Maximum Frequency (pu)
				_iq  VoltMax;			// Parameter: Rated voltage (pu)					  
			    _iq  VoltMin;	 		// Parameter: Voltage at low Frequency range (pu)
			    _iq  VfSlope;			// Variable
			    _iq  AbsFreq;			// Variable
		  	  	  
				} VHZPROF;	                   


/*-----------------------------------------------------------------------------
Default initalizer for the VHZPROF object.
-----------------------------------------------------------------------------*/                     
#define VHZPROF_DEFAULTS { 0,0, 		\
                           0,0,0,0,0, 	\
                  		 }

/*------------------------------------------------------------------------------
	 VHZ_PROF Macro Definitions
------------------------------------------------------------------------------*/


#define VHZ_PROF_MACRO(v)															\
/* Take absolute frequency to allow the operation of both rotational directions	*/	\
    v.AbsFreq = labs(v.Freq);														\
	if (v.AbsFreq <= v.LowFreq)   													\
	        /* Compute output voltage in profile #1	*/								\
        	v.VoltOut = v.VoltMin;													\
	else if ((v.AbsFreq > v.LowFreq)&&(v.AbsFreq <= v.HighFreq))      				\
       {																			\
        	/* Compute slope of V/f profile	*/										\
        	v.VfSlope = _IQdiv((v.VoltMax - v.VoltMin),(v.HighFreq - v.LowFreq));	\
        	/* Compute output voltage in profile #2	*/								\
        	v.VoltOut = v.VoltMin + _IQmpy(v.VfSlope,(v.AbsFreq-v.LowFreq));		\
       }																			\
    else if ((v.AbsFreq > v.HighFreq)&&(v.AbsFreq < v.FreqMax))      				\
        	/* Compute output voltage in profile #3	*/								\
        	v.VoltOut = v.VoltMax;


#endif  // __VHZ_PROF_H__

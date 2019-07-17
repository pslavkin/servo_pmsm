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
File name:        F2803XQEP.H                     
Target   :             F2803x family
===================================================================================*/

#ifndef __RESOLVER_H__
#define __RESOLVER_H__

/*-----------------------------------------------------------------------------
Define the structure of the RESOLVER Driver Object
-----------------------------------------------------------------------------*/
typedef struct {
                    _iq ElecTheta;       // Output: Motor Electrical angle (Q24)
                    _iq MechTheta;       // Output: Motor Mechanical Angle (Q24)
                    _iq RawTheta;        // Variable: Raw position data from resolver (Q0)
                    _iq Speed;           // Variable: Speed data from resolver (Q4)
                    _iq InitTheta;       // Parameter: Raw angular offset between encoder index and phase a (Q0)
                    _iq MechScaler;      // Parameter: 0.9999/total count (Q30)
                    _iq StepsPerTurn;    // Parameter: Number of discrete positions (Q0)
                 uint16_t PolePairs;       // Parameter: Number of pole pairs (Q0)

                }  RESOLVER;

/*-----------------------------------------------------------------------------
Define a RESOLVER_handle
-----------------------------------------------------------------------------*/
//typedef RESOLVER *RESOLVER_handle;

/*-----------------------------------------------------------------------------
Default initializer for the QEP Object.
-----------------------------------------------------------------------------*/
#define RESOLVER_DEFAULTS {                                                   \
                               0x0,            /*  ElecTheta    - (Q24)  */   \
                               0x0,            /*  MechTheta    - (Q24)  */   \
                               0x0,            /*  RawTheta     - (Q0)   */   \
                               0x0,            /*  Speed        - (Q4)   */   \
                               0x0,            /*  InitTheta    - (Q0)   */   \
                               0x00020000,     /*  MechScaler   - (Q30)  */   \
                               0x0,            /*  StepsPerTurn - (Q0)   */   \
                               2,              /*  PolePairs    - (Q0)   */   \
       }

// **************************************************************************************
/*-----------------------------------------------------------------------------
       Resolver Interface Update Macro Definitions
-----------------------------------------------------------------------------*/

#define  RESOLVER_MACRO(v)                                                                      \
                                                                                                \
/* Compute the mechanical angle in Q24 */                                                       \
    v.MechTheta   = v.RawTheta - v.InitTheta;      /* MechTheta in step counts */               \
    v.MechTheta   = __qmpy32by16(v.MechScaler,(int16)v.MechTheta,31);  /* Q15 = Q30*Q0 */       \
    v.MechTheta  &= 0x7FFF;                        /* Wrap around 0x07FFF*/                     \
    v.MechTheta <<= 9;                             /* Q15 -> Q24 */                             \
                                                                                                \
/* Compute the electrical angle in Q24 */                                                       \
    v.ElecTheta  = v.PolePairs * v.MechTheta;      /* Q24 = Q0*Q24 */                           \
    v.ElecTheta &= 0x00FFFFFF;                     /* Wrap around 0x00FFFFFF */


#define  RESOLVER_MACRO_F(v)                                                                    \
                                                                                                \
/* Compute the mechanical angle in Q24 */                                                       \
    v.MechTheta   = v.RawTheta - v.InitTheta;      /* MechTheta in step counts */               \
    v.MechTheta   = (v.MechScaler*v.MechTheta);  /* Q15 = Q30*Q0 */                             \
    if(v.MechTheta>1.0) v.MechTheta=v.MechTheta-1.0;                                            \
/* Compute the electrical angle in Q24 */                                                       \
    v.ElecTheta  = _IQfrac(v.PolePairs * v.MechTheta);      /* Q24 = Q0*Q24 */

#endif // __RESOLVER_H__

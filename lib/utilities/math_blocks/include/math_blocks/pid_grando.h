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
File name:       PID_GRANDO.H 
===================================================================================*/


#ifndef __PID_H__
#define __PID_H__

typedef struct { 
              float32_t  Ref;  // Input: reference set-point
              float32_t  Fbk;  // Input: feedback
              float32_t  Out;  // Output: controller output
              float32_t  c1;   // Internal: derivative filter coefficient 1
              float32_t  c2;   // Internal: derivative filter coefficient 2
            } PID_TERMINALS;
// note: c1 & c2 placed here to keep structure size under 8 words

typedef struct {  
              float32_t  Kr;   // Parameter: reference set-point weighting
              float32_t  Kp;   // Parameter: proportional loop gain
              float32_t  Ki;   // Parameter: integral gain
              float32_t  Kd;   // Parameter: derivative gain
              float32_t  Km;   // Parameter: derivative weighting
              float32_t  Umax; // Parameter: upper saturation limit
              float32_t  Umin; // Parameter: lower saturation limit
            } PID_PARAMETERS;

typedef struct {  
              float32_t  up;   // Data: proportional term
              float32_t  ui;   // Data: integral term
              float32_t  ud;   // Data: derivative term
              float32_t  v1;   // Data: pre-saturated controller output
              float32_t  i1;   // Data: integrator storage: ui(k-1)
              float32_t  d1;   // Data: differentiator storage: ud(k-1)
              float32_t  d2;   // Data: differentiator storage: d2(k-1)
              float32_t  w1;   // Data: saturation record: [u(k-1) - v(k-1)]
            } PID_DATA;


typedef struct {  PID_TERMINALS  term;
              PID_PARAMETERS param;
              PID_DATA     data;
            } PID_CONTROLLER;

/*-----------------------------------------------------------------------------
Default initalisation values for the PID objects
-----------------------------------------------------------------------------*/                     

#define PID_TERM_DEFAULTS {         \
                     0,       \
                     0,       \
                     0,       \
                     0,       \
                     0\
                       }

#define PID_PARAM_DEFAULTS {     \
                             1.0,     \
                             1.0,  \
                             0.0,     \
                             0.0,     \
                             1.0,     \
                             1.0,     \
                           - 1.0  \
                       }

#define PID_DATA_DEFAULTS {         \
                           0.0,     \
                           0.0,  \
                           0.0,     \
                           0.0,     \
                           0.0,  \
                           0.0,     \
                           0.0,     \
                           1.0      \
                       }


/*------------------------------------------------------------------------------
   PID Macro Definition
------------------------------------------------------------------------------*/

static inline void runPablosPID(PID_CONTROLLER * in)
{
   // proportional term
   in->data.up = in->param.Kp * (in->param.Kr * in->term.Ref - in->term.Fbk);

//   // integral term
   in->data.ui = in->param.Ki * (in->data.w1 * (in->term.Ref - in->term.Fbk)) + in->data.i1;
   in->data.i1 = in->data.ui;
//
//   // derivative term
   in->data.ud = in->param.Km * (in->data.d1 - in->param.Kd * (in->term.Fbk - in->data.d2));
   in->data.d2 = in->term.Fbk;
   in->data.d1 = in->data.ud;
//
//   // control output
//   //esta multiplicando la Kp por toda la suma!! no quiero eso...!!
//   in->data.v1  = in->param.Kp * (in->data.up + in->data.ui + in->data.ud);
//   in->term.Out = __fmax(__fmin(in->data.v1, in->param.Umax), in->param.Umin);
   in->data.v1  = in->data.up + in->data.ui + in->data.ud;
   in->term.Out = __fmax(__fmin(in->data.v1, in->param.Umax), in->param.Umin);
   in->data.w1  = (in->term.Out == in->data.v1) ? 1 : 0;
}
static inline void runPID(PID_CONTROLLER * in)
{
   // proportional term
   in->data.up = in->param.Kp * (in->param.Kr * in->term.Ref - in->term.Fbk);

   // integral term
   in->data.ui = in->param.Ki * (in->data.w1 * (in->term.Ref - in->term.Fbk)) + in->data.i1;
   in->data.i1 = in->data.ui;

   // derivative term
   in->data.d2 = in->param.Kd * (in->term.c1 * (in->term.Ref * in->param.Km - in->term.Fbk)) - in->data.d2;
   in->data.ud = in->data.d2 + in->data.d1;
   in->data.d1 = in->data.ud * in->term.c2;

   // control output
   in->data.v1  = in->data.up + in->data.ui + in->data.ud;
   //esta multiplicando la Kp por toda la suma!! no quiero eso...!!
//   in->data.v1  = in->param.Kp * (in->data.up + in->data.ui + in->data.ud);
   in->term.Out = __fmax(__fmin(in->data.v1, in->param.Umax), in->param.Umin);
   in->data.w1  = (in->term.Out == in->data.v1) ? 1 : 0;
}


#define PID_MACRO(v)                                                          \
                                                                           \
   /* proportional term */                                                    \
   v.data.up = _IQmpy(v.param.Kr, v.term.Ref) - v.term.Fbk;                            \
                                                                           \
   /* integral term */                                                        \
   v.data.ui = _IQmpy(v.param.Ki, _IQmpy(v.data.w1, (v.term.Ref - v.term.Fbk))) + v.data.i1;    \
   v.data.i1 = v.data.ui;                                                        \
                                                                           \
   /* derivative term */                                                      \
   v.data.d2 = _IQmpy(v.param.Kd, _IQmpy(v.term.c1, (_IQmpy(v.term.Ref, v.param.Km) - v.term.Fbk))) - v.data.d2;  \
   v.data.ud = v.data.d2 + v.data.d1;                                               \
   v.data.d1 = _IQmpy(v.data.ud, v.term.c2);                                        \
                                                                           \
   /* control output */                                                          \
   v.data.v1 = _IQmpy(v.param.Kp, (v.data.up + v.data.ui + v.data.ud));                   \
   v.term.Out= _IQsat(v.data.v1, v.param.Umax, v.param.Umin);                             \
   v.data.w1 = (v.term.Out == v.data.v1) ? _IQ(1.0) : _IQ(0.0);                           \


#endif // __PID_H__


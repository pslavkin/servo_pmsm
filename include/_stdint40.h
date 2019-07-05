/*****************************************************************************/
/* _STDINT40.H                                                               */
/*                                                                           */
/* Copyright (c) 2018 Texas Instruments Incorporated                         */
/* http://www.ti.com/                                                        */
/*                                                                           */
/*  Redistribution and  use in source  and binary forms, with  or without    */
/*  modification,  are permitted provided  that the  following conditions    */
/*  are met:                                                                 */
/*                                                                           */
/*     Redistributions  of source  code must  retain the  above copyright    */
/*     notice, this list of conditions and the following disclaimer.         */
/*                                                                           */
/*     Redistributions in binary form  must reproduce the above copyright    */
/*     notice, this  list of conditions  and the following  disclaimer in    */
/*     the  documentation  and/or   other  materials  provided  with  the    */
/*     distribution.                                                         */
/*                                                                           */
/*     Neither the  name of Texas Instruments Incorporated  nor the names    */
/*     of its  contributors may  be used to  endorse or  promote products    */
/*     derived  from   this  software  without   specific  prior  written    */
/*     permission.                                                           */
/*                                                                           */
/*  THIS SOFTWARE  IS PROVIDED BY THE COPYRIGHT  HOLDERS AND CONTRIBUTORS    */
/*  "AS IS"  AND ANY  EXPRESS OR IMPLIED  WARRANTIES, INCLUDING,  BUT NOT    */
/*  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR    */
/*  A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT    */
/*  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,    */
/*  SPECIAL,  EXEMPLARY,  OR CONSEQUENTIAL  DAMAGES  (INCLUDING, BUT  NOT    */
/*  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,    */
/*  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY    */
/*  THEORY OF  LIABILITY, WHETHER IN CONTRACT, STRICT  LIABILITY, OR TORT    */
/*  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE    */
/*  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.     */
/*                                                                           */
/*****************************************************************************/
#ifndef __STDINT40_H_
#define __STDINT40_H_

#if defined(_TMS320C6X) && !defined(__C6X_MIGRATION__)
    typedef          __int40_t  int40_t;
    typedef unsigned __int40_t uint40_t;

    typedef  int40_t  int_least40_t;
    typedef uint40_t uint_least40_t;

    typedef  int40_t  int_fast40_t;
    typedef uint40_t uint_fast40_t;
#endif

/* 
   According to footnotes in the 1999 C standard, "C++ implementations
   should define these macros only when __STDC_LIMIT_MACROS is defined
   before <stdint.h> is included." 
*/
#if !defined(__cplusplus) || defined(__STDC_LIMIT_MACROS)

#if defined(_TMS320C6X) && !defined(__C6X_MIGRATION__)
    #define  INT40_MAX  0x7fffffffff
    #define  INT40_MIN  (-INT40_MAX-1)
    #define UINT40_MAX  0xffffffffff

    #define  INT_LEAST40_MAX  (INT40_MAX)
    #define  INT_LEAST40_MIN  (INT40_MIN)
    #define UINT_LEAST40_MAX  (UINT40_MAX)

    #define  INT_FAST40_MAX  (INT40_MAX)
    #define  INT_FAST40_MIN  (INT40_MIN)
    #define UINT_FAST40_MAX  (UINT40_MAX)

    #define  INT40_C(value) ((int_least40_t)(value))
    #define UINT40_C(value) ((uint_least40_t)(value))
#endif

#endif /* !defined(__cplusplus) || defined(__STDC_LIMIT_MACROS) */
#endif /* __STDINT40_H_ */

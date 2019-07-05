/*****************************************************************************/
/* ctype.h                                                                   */
/*                                                                           */
/* Copyright (c) 1993 Texas Instruments Incorporated                         */
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

/************************************************************************/
/*                                                                      */
/*  CHARACTER TYPING FUNCTIONS AND MACROS                               */
/*                                                                      */
/*  Note that in this implementation, either macros or functions may    */
/*  be used.  Macros are prefixed with an underscore.                   */
/*                                                                      */
/************************************************************************/
#ifndef _CTYPE_H_
#define _CTYPE_H_

#include <_ti_config.h>

#if defined(__TMS320C2000__)
#if defined(__TMS320C28XX_CLA__)
#error "Header file <ctype.h> not supported by CLA compiler"
#endif
#endif

#pragma diag_push
#pragma CHECK_MISRA("-6.3") /* standard types required for standard headers */
#pragma CHECK_MISRA("-8.5") /* need to define inline function */
#pragma CHECK_MISRA("-19.1") /* #includes required for implementation */
#pragma CHECK_MISRA("-19.7") /* macros required for implementation */
#pragma CHECK_MISRA("-20.2") /* standard headers must define standard names */

#ifdef __cplusplus
extern "C"
{
#endif /* __cplusplus */

extern const _DATA_ACCESS unsigned char _ctypes_[257];

/************************************************************************/
/*   FUNCTION DECLARATIONS                                              */
/************************************************************************/
#include "_isfuncdcl.h"

_IDECL int toupper(int ch);
_IDECL int tolower(int ch);

#ifdef __cplusplus
} /* extern "C" */
#endif /* __cplusplus */

#if (defined(__clang__) && defined(__arm__)) || \
    (defined(_AEABI_PORTABILITY_LEVEL) && _AEABI_PORTABILITY_LEVEL != 0)
extern unsigned char const __aeabi_ctype_table_C[257];  /* "C" locale */
extern unsigned char const __aeabi_ctype_table_[257];    /* default locale */

  #ifdef _AEABI_LC_CTYPE
     #define _AEABI_CTYPE_TABLE(_X) __aeabi_ctype_table_ ## _X
     #define _AEABI_CTYPE(_X) _AEABI_CTYPE_TABLE(_X)
     #define __aeabi_ctype_table _AEABI_CTYPE(_AEABI_LC_CTYPE)
  #else
     #define __aeabi_ctype_table __aeabi_ctype_table_
  #endif

/* AEABI portable ctype flag bits */
#define _ABI_A  ((unsigned char)  1)       /* alphabetic        */
#define _ABI_X  ((unsigned char)  2)       /* A-F, a-f and 0-9  */
#define _ABI_P  ((unsigned char)  4)       /* punctuation       */
#define _ABI_B  ((unsigned char)  8)       /* blank             */
#define _ABI_S  ((unsigned char) 16)       /* white space       */
#define _ABI_L  ((unsigned char) 32)       /* lower case letter */
#define _ABI_U  ((unsigned char) 64)       /* upper case letter */
#define _ABI_C  ((unsigned char)128)       /* control chars     */

#define _isspace(x)  ((__aeabi_ctype_table+1)[(x)] & _ABI_S)
#define _isalpha(x)  ((__aeabi_ctype_table+1)[(x)] & _ABI_A)
#define _isalnum(x)  ((__aeabi_ctype_table+1)[(x)] << 30) /* test for _ABI_A and _ABI_X */
#define _isprint(x)  ((__aeabi_ctype_table+1)[(x)] << 28) /* test for _ABI_A, _ABI_X, _ABI_P and _ABI_B */
#define _isupper(x)  ((__aeabi_ctype_table+1)[(x)] & _ABI_U)
#define _islower(x)  ((__aeabi_ctype_table+1)[(x)] & _ABI_L)
#define _isxdigit(x) ((__aeabi_ctype_table+1)[(x)] & _ABI_X)
#define _isgraph(x)  ((__aeabi_ctype_table+1)[(x)] << 29) /* test for _ABI_A, _ABI_X and _ABI_P */
#define _iscntrl(x)  ((__aeabi_ctype_table+1)[(x)] & _ABI_C)
#define _ispunct(x)  ((__aeabi_ctype_table+1)[(x)] & _ABI_P)
#define _isdigit(c)  (((unsigned)(c) - (unsigned)'0') < 10)

#else

/************************************************************************/
/*  On this ELSE path, all the TI ctype table and ctype bit flags are   */
/*  defined.                                                            */
/************************************************************************/
/************************************************************************/
/*  MACRO DEFINITIONS                                                   */
/************************************************************************/
#define _U_   ((unsigned char)0x01)       /* upper case letter */
#define _L_   ((unsigned char)0x02)       /* lower case letter */
#define _N_   ((unsigned char)0x04)       /* digit             */
#define _S_   ((unsigned char)0x08)       /* white space       */
#define _P_   ((unsigned char)0x10)       /* punctuation       */
#define _C_   ((unsigned char)0x20)       /* control chars     */
#define _H_   ((unsigned char)0x40)       /* A-F, a-f and 0-9  */
#define _B_   ((unsigned char)0x80)       /* blank             */

#define _isalnum(a)  (_ctypes_[(a)+1] & (_U_ | _L_ | _N_))
#define _isalpha(a)  (_ctypes_[(a)+1] & (_U_ | _L_))
#define _iscntrl(a)  (_ctypes_[(a)+1] & _C_)
#define _isdigit(a)  (_ctypes_[(a)+1] & _N_)
#define _isgraph(a)  (_ctypes_[(a)+1] & (_U_ | _L_ | _N_ | _P_))
#define _islower(a)  (_ctypes_[(a)+1] & _L_)
#define _isprint(a)  (_ctypes_[(a)+1] & (_B_ | _U_ | _L_ | _N_ | _P_))
#define _ispunct(a)  (_ctypes_[(a)+1] & _P_)
#define _isspace(a)  (_ctypes_[(a)+1] & _S_)
#define _isupper(a)  (_ctypes_[(a)+1] & _U_)
#define _isxdigit(a) (_ctypes_[(a)+1] & _H_)

#endif /* _AEABI_PORTABILITY_LEVEL */

#define _isascii(a)  (((unsigned int)(a) & ~(unsigned int)0x7F) == 0u)
#define _toupper(b)  ((_islower(b)) ? (b) - ('a' - 'A') : (b))
#define _tolower(b)  ((_isupper(b)) ? (b) + ('a' - 'A') : (b))
#define _toascii(a)  ((unsigned int)(a) & (unsigned int)0x7F)

#ifdef _INLINE

#include "_isfuncdef.h"

/****************************************************************************/
/*  tolower                                                                 */
/****************************************************************************/
static __inline int tolower(int ch)
{
   /*
    This code depends on two assumptions: (1) all of the letters of the
    alphabet of a given case are contiguous, and (2) the lower and upper
    case forms of each letter are displaced from each other by the same
    constant value.
   */

   if ( ((unsigned int)ch  - (unsigned int)'A') <=
        ((unsigned int)'Z' - (unsigned int)'A'))
   {
      ch += (int)'a' - (int)'A';
   }

   return ch;
}

/****************************************************************************/
/*  toupper                                                                 */
/****************************************************************************/
static __inline int toupper(int ch)
{
   /*
    This code depends on two assumptions: (1) all of the letters of the
    alphabet of a given case are contiguous, and (2) the lower and upper
    case forms of each letter are displaced from each other by the same
    constant value.
   */

   if ( ((unsigned int)ch  - (unsigned int)'a') <=
        ((unsigned int)'z' - (unsigned int)'a'))
   {
      ch -= (int)'a' - (int)'A';
   }

   return ch;
}

#endif /* _INLINE */

#if defined(_AEABI_PORTABILITY_LEVEL) && _AEABI_PORTABILITY_LEVEL != 0 && \
   !defined(_AEABI_PORTABLE)
#define _AEABI_PORTABLE
#endif

#pragma diag_pop

#endif /* ! _CTYPE_H_ */

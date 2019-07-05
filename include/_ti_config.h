/*****************************************************************************/
/* _ti_config.h                                                              */
/*                                                                           */
/* Copyright (c) 2017 Texas Instruments Incorporated                         */
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

#ifndef __TI_CONFIG_H
#define __TI_CONFIG_H

#pragma diag_push
#pragma CHECK_MISRA("-19.4")
#pragma CHECK_MISRA("-19.1")

/* Common definitions */

#if defined(__cplusplus)
/* C++ */
# if (__cplusplus >= 201103L)
 /* C++11 */
#  define _TI_NORETURN [[noreturn]]
#  define _TI_NOEXCEPT noexcept
# else
 /* C++98/03 */
#  define _TI_NORETURN __attribute__((noreturn))
#  define _TI_NOEXCEPT throw()
# endif
#else
/* C */
# if defined(__STDC_VERSION__) && (__STDC_VERSION__ >= 201112L)
 /* C11 */
#  define _TI_NORETURN _Noreturn
# else
 /* C89/C99 */
#  define _TI_NORETURN __attribute__((noreturn))
# endif
# define _TI_NOEXCEPT
#endif

#if defined(__cplusplus) && (__cplusplus >= 201103L)
# define _TI_CPP11LIB 1
#endif

#if defined(__cplusplus) && (__cplusplus >= 201402L)
# define _TI_CPP14LIB 1
#endif

#if defined(__STDC_VERSION__) && (__STDC_VERSION__ >= 199901L) || \
    defined(_TI_CPP11LIB)
# define _TI_C99LIB 1
#endif

#if defined(__STDC_VERSION__) && (__STDC_VERSION__ >= 201112L) || \
    defined(_TI_CPP14LIB)
# define _TI_C11LIB 1
#endif

/* _TI_NOEXCEPT_CPP14 is defined to noexcept only when compiling for C++14. It
   is intended to be used for functions like abort and atexit that are supposed
   to be declared noexcept only in C++14 mode. */
#ifdef _TI_CPP14LIB
# define _TI_NOEXCEPT_CPP14 noexcept
#else
# define _TI_NOEXCEPT_CPP14
#endif

/* Target-specific definitions */
#include <linkage.h>

#pragma diag_pop

#endif /* ifndef __TI_CONFIG_H */

/*****************************************************************************/
/* stddef.h                                                                  */
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

#ifndef _STDDEF
#define _STDDEF

#include <_ti_config.h>

#pragma diag_push
#pragma CHECK_MISRA("-19.7") /* macros required for implementation */
#pragma CHECK_MISRA("-20.1") /* standard headers must define standard names */
#pragma CHECK_MISRA("-20.2") /* standard headers must define standard names */

#ifdef __cplusplus
extern "C" {
#endif

#ifndef NULL
#define NULL 0
#endif

typedef __PTRDIFF_T_TYPE__ ptrdiff_t;

#ifndef _SIZE_T_DECLARED
#define _SIZE_T_DECLARED
# ifdef __clang__
typedef __SIZE_TYPE__ __SIZE_T_TYPE__;
# endif

typedef __SIZE_T_TYPE__ size_t;
#endif

#ifndef __cplusplus
#ifndef _WCHAR_T_DECLARED
#define _WCHAR_T_DECLARED
#ifdef __clang__
typedef __WCHAR_TYPE__ __WCHAR_T_TYPE__;
#endif

typedef __WCHAR_T_TYPE__ wchar_t;

#endif /* _WCHAR_T */
#endif /* ! __cplusplus */

/*----------------------------------------------------------------------------*/
/* C++11 and C11 required max_align_t to be defined. The libc++ cstddef       */
/* header expects the macro __DEFINED_max_align_t to be defined if it is to   */
/* use the definintion of max_align_t from stddef.h. Only define it if        */
/* compiling for C11 or we're in non strict ansi mode.                        */
/*----------------------------------------------------------------------------*/
#if defined(_TI_C11LIB) || __TI_STRICT_ANSI_MODE__ == 0
#ifndef __DEFINED_max_align_t
#define __DEFINED_max_align_t
typedef long double max_align_t;
#endif /*__DEFINED_max_align_t */
#endif /* defined(_TI_C11LIB) || __TI_STRICT_ANSI_MODE__ == 0 */

#pragma diag_push
#pragma CHECK_MISRA("-19.10") /* need types as macro arguments */

#ifdef __TI_LLVM__
#  define offsetof(_type, _ident) __builtin_offsetof(_type, _ident)
#else
#  ifndef __TMS320C55X__
#      define offsetof(_type, _ident) \
         ((size_t)__intaddr__(&(((_type *)0)->_ident)))
#  else /* __TMS320C55X__ */
#    define offsetof(_type, _ident) \
    (__intaddr__( ((char *) &((_type *)0)->_ident) - ((char *) 0) ))
#  endif /* __TMS320C55X__ */
#endif

#pragma diag_pop

#ifdef __cplusplus
} /* extern "C" */
#endif  /* __cplusplus */

#pragma diag_pop

#endif  /* _STDDEF */

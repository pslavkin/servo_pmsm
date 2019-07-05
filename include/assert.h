/*****************************************************************************/
/* assert.h                                                                  */
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

#ifndef _ASSERT
#define _ASSERT

#include <_ti_config.h>

#if defined(__TMS320C2000__)
#if defined(__TMS320C28XX_CLA__)
#error "Header file <assert.h> not supported by CLA compiler"
#endif
#endif

#ifndef __cplusplus
#if defined(_TI_C11LIB) || __TI_STRICT_ANSI_MODE__ == 0
#define	static_assert	_Static_assert
#endif
#endif

#pragma diag_push
#pragma CHECK_MISRA("-6.3") /* standard types required for standard headers */
#pragma CHECK_MISRA("-19.4") /* macros required for implementation */
#pragma CHECK_MISRA("-19.7") /* macros required for implementation */
#pragma CHECK_MISRA("-19.13") /* # and ## required for implementation */

#ifdef __cplusplus
extern "C"
{
#endif

#if defined(__TMS320C6X__) && !defined(__C6X_MIGRATION__) && defined(__TI_EABI__)
extern _CODE_ACCESS void __c6xabi_abort_msg(const char *msg);
#elif defined(__C7000__)
extern _CODE_ACCESS void __c7xabi_abort_msg(const char *msg);
#elif defined(__ARP32__)
extern _CODE_ACCESS void __arp32abi_abort_msg(const char *msg);
#else
extern _CODE_ACCESS void _abort_msg(const char *msg);
#endif

#define _STR(x)  __STR(x)
#define __STR(x) #x

#if defined(NDEBUG)
#define assert(_ignore) ((void)0)
#elif defined(NASSERT)
#define assert(_expr)   _nassert(_expr)
#else
#if (defined(__clang__) && defined(__arm__)) || \
    (defined(_AEABI_PORTABILITY_LEVEL) && _AEABI_PORTABILITY_LEVEL != 0)
     extern void __aeabi_assert(const char *expr, const char *file, int line);
     #define assert(__e) ((__e) ? (void)0 : \
	         __aeabi_assert(#__e, __FILE__, __LINE__))
#else
     #define assert(_expr)   _assert((_expr) != 0,      \
                    "Assertion failed, (" _STR(_expr) "), file " __FILE__ \
                    ", line " _STR(__LINE__) "\n")
#endif /* _AEABI_PORTABILITY_LEVEL, __clang__ */
#endif /* NDEBUG, NASSERT */

#ifdef __cplusplus
} /* extern "C" */
#endif /* __cplusplus */

#pragma diag_pop

#if defined(_AEABI_PORTABILITY_LEVEL) && _AEABI_PORTABILITY_LEVEL != 0 && \
   !defined(_AEABI_PORTABLE)
#define _AEABI_PORTABLE
#endif

#endif /* _ASSERT */

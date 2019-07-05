/*****************************************************************************/
/* setjmp.h                                                                  */
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

#ifndef _SETJMP
#define _SETJMP

#include <_ti_config.h>

#if defined(__TMS320C2000__)
#if defined(__TMS320C28XX_CLA__)
#error "Header file <setjmp.h> not supported by CLA compiler"
#endif
#endif

#pragma diag_push
#pragma CHECK_MISRA("-6.3") /* standard types required for standard headers */
#pragma CHECK_MISRA("-19.7") /* macros required for implementation */
#pragma CHECK_MISRA("-20.1") /* standard headers must define standard names */
#pragma CHECK_MISRA("-20.2") /* standard headers must define standard names */

#ifdef __cplusplus
extern "C" {
#endif

#pragma diag_push
#pragma CHECK_MISRA("-19.4") /* macro oddness */
#if defined(__ARM_ARCH)
    #define setjmp(x) setjmp(x)
#elif defined(__TMS320C6X__) && defined(__TI_EABI__)
    #define setjmp(x) setjmp(x)
#elif defined(__TMS320C28X__) && defined(__TI_EABI__)
    #define setjmp(x) setjmp(x)
#elif defined(__ARP32__) || defined(__PRU__) || defined(__C7000__)
    #define setjmp(x) setjmp(x)
#else
    #define setjmp(x) _setjmp(x)
#endif
#pragma diag_pop

#if (defined(__TMS320C6X__) && !defined(__C6X_MIGRATION__)) || \
    defined(_TMS320C5XX)
    typedef int jmp_buf[13];
    #if defined(__EDG_JMP_BUF_NUM_ELEMENTS)
       #if __EDG_JMP_BUF_NUM_ELEMENTS !=13
          #error "Front end and runtime disagree on size of jmp_buf"
       #endif
    #endif
#elif defined(__ARM_ARCH)
   #if defined(_AEABI_PORTABILITY_LEVEL) && _AEABI_PORTABILITY_LEVEL != 0
     typedef long long jmp_buf[];
     extern const int __aeabi_JMP_BUF_SIZE;
   #else
     typedef long long jmp_buf[13];
   #endif /* _AEABI_PORTABILITY_LEVEL != 0 */

   #if defined(__EDG_JMP_BUF_NUM_ELEMENTS)
      #if __EDG_JMP_BUF_NUM_ELEMENTS != 13
         #error "Front end and runtime disagree on size of jmp_buf"
      #endif
   #endif
#elif defined(__TMS320C55X__)
#if defined(__TMS320C55X_PLUS__)
    typedef long jmp_buf[13];
    #if defined(__EDG_JMP_BUF_NUM_ELEMENTS)
       #if __EDG_JMP_BUF_NUM_ELEMENTS !=13
          #error "Front end and runtime disagree on size of jmp_buf"
       #endif
    #endif
#else
    typedef long jmp_buf[8];
    #if defined(__EDG_JMP_BUF_NUM_ELEMENTS)
       #if __EDG_JMP_BUF_NUM_ELEMENTS !=8
          #error "Front end and runtime disagree on size of jmp_buf"
       #endif
    #endif
#endif /* defined(__TMS320C55X_PLUS__) */
#elif defined(__MSP430__)
    #if defined(__LARGE_CODE_MODEL__)
        typedef long jmp_buf[9];
    #else
        typedef int jmp_buf[9];
    #endif
    #if defined(__EDG_JMP_BUF_NUM_ELEMENTS)
       #if __EDG_JMP_BUF_NUM_ELEMENTS !=9
          #error "Front end and runtime disagree on size of jmp_buf"
       #endif
    #endif
#elif defined(__TMS320C28X__)
  #if defined(__TMS320C28XX_FPU64__)
    typedef long jmp_buf[13];
    #if defined(__EDG_JMP_BUF_NUM_ELEMENTS)
       #if __EDG_JMP_BUF_NUM_ELEMENTS !=13
          #error "Front end and runtime disagree on size of jmp_buf"
       #endif
    #endif
  #elif defined(__TMS320C28XX_FPU32__)
    typedef long jmp_buf[9];
    #if defined(__EDG_JMP_BUF_NUM_ELEMENTS)
       #if __EDG_JMP_BUF_NUM_ELEMENTS !=9
          #error "Front end and runtime disagree on size of jmp_buf"
       #endif
    #endif
  #else
    typedef long jmp_buf[5];
    #if defined(__EDG_JMP_BUF_NUM_ELEMENTS)
       #if __EDG_JMP_BUF_NUM_ELEMENTS !=5
          #error "Front end and runtime disagree on size of jmp_buf"
       #endif
    #endif
  #endif
#elif defined (__ARP32__)
    typedef int jmp_buf[6];
    #if defined(__EDG_JMP_BUF_NUM_ELEMENTS)
       #if __EDG_JMP_BUF_NUM_ELEMENTS !=6
          #error "Front end and runtime disagree on size of jmp_buf"
       #endif
    #endif
#elif defined (__PRU__)
    typedef unsigned char jmp_buf[48];
    #if defined(__EDG_JMP_BUF_NUM_ELEMENTS)
       #if __EDG_JMP_BUF_NUM_ELEMENTS !=48
          #error "Front end and runtime disagree on size of jmp_buf"
       #endif
    #endif
#elif defined (__C7000__)
    typedef long long jmp_buf[26];
    #if defined(__EDG_JMP_BUF_NUM_ELEMENTS)
       #if __EDG_JMP_BUF_NUM_ELEMENTS !=26
          #error "Front end and runtime disagree on size of jmp_buf"
       #endif
    #endif
#else
#warn "This header only intended for use with C7000, C6x, C54x, C55x, and Arm."
    typedef int jmp_buf[13];
    #if defined(__EDG_JMP_BUF_NUM_ELEMENTS)
       #if __EDG_JMP_BUF_NUM_ELEMENTS !=13
          #error "Front end and runtime disagree on size of jmp_buf"
       #endif
    #endif
#endif

#pragma diag_push
#pragma CHECK_MISRA("-20.7") /* standard headers must define standard names */
#pragma CHECK_MISRA("-5.6") /* macro oddness */

#if defined(__ARM_ARCH)
_CODE_ACCESS int  setjmp(jmp_buf env);
#elif defined(__TMS320C6X__) && defined(__TI_EABI__)
_CODE_ACCESS int  setjmp(jmp_buf env);
#elif defined(__TMS320C28X__) && defined(__TI_EABI__)
_CODE_ACCESS int  setjmp(jmp_buf env);
#elif defined(__ARP32__) || defined(__PRU__) || defined(__C7000__)
_CODE_ACCESS int  setjmp(jmp_buf env);
#else
_CODE_ACCESS int  _setjmp(jmp_buf env);
#endif

_CODE_ACCESS _TI_NORETURN void longjmp(jmp_buf env, int val);

#pragma diag_pop

#if defined(__TMS320C2000__) && !defined(__cplusplus) && !defined(__TI_EABI__)
/*****************************************************************************/
/*	DEFINE THE FAR VERSION OF THE SETJMP for ANKOOR.		     */
/*****************************************************************************/

#pragma diag_push

/* keep macros as original function-like macros to support all original
   supported use cases prefixing with namespace macros */
#pragma CHECK_MISRA("-19.4")

#define far_setjmp(x) _far_setjmp(x)

#pragma diag_pop

_CODE_ACCESS int               _far_setjmp(jmp_buf env);
_CODE_ACCESS _TI_NORETURN void far_longjmp(jmp_buf env, int val);

#endif /* defined(__TMS320C2000__) && !defined(__cplusplus) && !defined(__TI_EABI__) */

#ifdef __cplusplus
} /* extern "C" */
#endif /* __cplusplus */

#pragma diag_pop

#if defined(_AEABI_PORTABILITY_LEVEL) && _AEABI_PORTABILITY_LEVEL != 0 && \
   !defined(_AEABI_PORTABLE)
#define _AEABI_PORTABLE
#endif

#endif /* _SETJMP */


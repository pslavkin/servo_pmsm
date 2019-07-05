/*****************************************************************************/
/* limits.h                                                                  */
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

#ifndef _LIMITS_H_
#define _LIMITS_H_

#pragma diag_push
#pragma CHECK_MISRA("-20.1") /* standard headers must define standard names */

#if defined(__TMS320C28XX_CLA__)
#define CHAR_BIT                16       /* NUMBER OF BITS IN TYPE CHAR      */
#define SCHAR_MIN    (-SCHAR_MAX-1)      /* MAX VALUE FOR SIGNED CHAR        */
#define SCHAR_MAX            32767       /* MIN VALUE FOR SIGNED CHAR        */
#define UCHAR_MAX            65535       /* MAX VALUE FOR UNSIGNED CHAR      */
#elif defined(__TMS320C2000__)
#define CHAR_BIT                16       /* NUMBER OF BITS IN TYPE CHAR      */
#define SCHAR_MIN    (-SCHAR_MAX-1)      /* MAX VALUE FOR SIGNED CHAR        */
#define SCHAR_MAX            32767       /* MIN VALUE FOR SIGNED CHAR        */
#define UCHAR_MAX            65535u      /* MAX VALUE FOR UNSIGNED CHAR      */
#else
#define CHAR_BIT                 8       /* NUMBER OF BITS IN TYPE CHAR      */
#define SCHAR_MIN    (-SCHAR_MAX-1)      /* MIN VALUE FOR SIGNED CHAR        */
#define SCHAR_MAX              127       /* MAX VALUE FOR SIGNED CHAR        */
#define UCHAR_MAX              255       /* MAX VALUE FOR UNSIGNED CHAR      */
#endif

#if (!defined(__TMS320C2000__) && \
    !(defined(__TMS320C6X__) && !defined(__C6X_MIGRATION__))) && \
    (defined(__unsigned_chars__) || defined(__CHAR_UNSIGNED__))
#define CHAR_MIN                 0       /* MIN VALUE FOR CHAR               */
#define CHAR_MAX        (UCHAR_MAX)      /* MAX VALUE FOR CHAR               */
#else
#define CHAR_MIN        (SCHAR_MIN)      /* MIN VALUE FOR PLAIN CHAR         */
#define CHAR_MAX        (SCHAR_MAX)      /* MAX VALUE FOR PLAIN CHAR         */
#endif /* __CHAR_UNSIGNED__ */

#if defined(_AEABI_PORTABILITY_LEVEL) && _AEABI_PORTABILITY_LEVEL != 0
  #if defined(__cplusplus)
  extern "C" {
  #endif
      extern const int __aeabi_MB_LEN_MAX;
  #if defined(__cplusplus)
  }
  #endif
  #define MB_LEN_MAX (__aeabi_MB_LEN_MAX)
#elif defined(__ARM_ARCH)
#define MB_LEN_MAX               8       /* MAX # BYTES IN MULTI-BYTE        */
#else
#define MB_LEN_MAX               1       /* MAX # BYTES IN MULTI-BYTE        */
#endif

#define SHRT_MIN      (-SHRT_MAX-1)      /* MIN VALUE FOR SHORT              */
#define SHRT_MAX             32767       /* MAX VALUE FOR SHORT              */
#if defined(__MSP430__) || \
    defined(__TMS320C2000__) && !defined(__TMS320C28XX_CLA__)
#define USHRT_MAX            65535u      /* MAX VALUE FOR UNSIGNED SHORT     */

#define INT_MIN          (SHRT_MIN)      /* MIN VALUE FOR INT                */
#define INT_MAX          (SHRT_MAX)      /* MAX VALUE FOR INT                */
#define UINT_MAX        (USHRT_MAX)      /* MAX VALUE FOR UNSIGNED INT       */
#else
#define USHRT_MAX            65535       /* MAX VALUE FOR UNSIGNED SHORT     */

#define INT_MIN         (-INT_MAX-1)     /* MIN VALUE FOR INT                */
#define INT_MAX         2147483647       /* MAX VALUE FOR INT                */
#define UINT_MAX        4294967295U      /* MAX VALUE FOR UNSIGNED INT       */
#endif

#if defined(__TMS320C6X__) && !defined(__C6X_MIGRATION__) && !defined(__TI_32BIT_LONG__)
#define LONG_MIN        (-LONG_MAX-1)    /* MIN VALUE FOR LONG               */
#define LONG_MAX         549755813887    /* MAX VALUE FOR LONG               */
#define ULONG_MAX      1099511627775U    /* MAX VALUE FOR UNSIGNED LONG      */
#elif defined(__C7000__)
#define LONG_MIN         (-LONG_MAX-1)   /* MIN VALUE FOR LONG               */
#define LONG_MAX    9223372036854775807  /* MAX VALUE FOR LONG               */
#define ULONG_MAX 18446744073709551615U  /* MAX VALUE FOR UNSIGNED LONG      */
#else
#define LONG_MIN        (-LONG_MAX-1)    /* MIN VALUE FOR LONG               */
#define LONG_MAX         2147483647      /* MAX VALUE FOR LONG               */
#define ULONG_MAX       4294967295U      /* MAX VALUE FOR UNSIGNED LONG      */
#endif

#if defined(__TMS320C6X__) && !defined(__C6X_MIGRATION__)
#define INT40_T_MIN    (-INT40_T_MAX-1)  /* MIN VALUE FOR __INT40_T          */
#define INT40_T_MAX     549755813887I40  /* MAX VALUE FOR __INT40_T          */
#define UINT40_T_MAX  1099511627775UI40  /* MAX VALUE FOR UNSIGNED __INT40_T */
#endif

#define LLONG_MIN         (-LLONG_MAX-1) /* MIN VALUE FOR LONG LONG          */
#define LLONG_MAX    9223372036854775807 /* MAX VALUE FOR LONG LONG          */
#define ULLONG_MAX 18446744073709551615U /* MAX VALUE FOR UNSIGNED LONG LONG */

#pragma diag_pop

#if defined(_AEABI_PORTABILITY_LEVEL) && _AEABI_PORTABILITY_LEVEL != 0 && \
   !defined(_AEABI_PORTABLE)
#define _AEABI_PORTABLE
#endif

#endif /* #ifndef _LIMITS_H_ */


/*****************************************************************************/
/* locale.h                                                                  */
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
#ifndef _LOCALE_H_
#define _LOCALE_H_

#if defined(__TMS320C2000__)
#if defined(__TMS320C28XX_CLA__)
#error "Header file <locale.h> not supported by CLA compiler"
#endif
#endif

#pragma diag_push
#pragma CHECK_MISRA("-6.3") /* standard types required for standard headers */
#pragma CHECK_MISRA("-20.1") /* standard headers must define standard names */
#pragma CHECK_MISRA("-20.2") /* standard headers must define standard names */

#ifdef __cplusplus
extern "C" {
#endif

#ifndef NULL
 #define NULL	0
#endif

		/* LOCALE CATEGORY INDEXES */
#if defined(_AEABI_PORTABILITY_LEVEL) && _AEABI_PORTABILITY_LEVEL != 0
extern const int __aeabi_LC_COLLATE;
extern const int __aeabi_LC_CTYPE;
extern const int __aeabi_LC_MONETARY;
extern const int __aeabi_LC_NUMERIC;
extern const int __aeabi_LC_TIME;
extern const int __aeabi_LC_ALL;

#define LC_COLLATE (  __aeabi_LC_COLLATE )
#define LC_CTYPE (  __aeabi_LC_CTYPE )
#define LC_MONETARY ( __aeabi_LC_MONETARY )
#define LC_NUMERIC ( __aeabi_LC_NUMERIC )
#define LC_TIME ( __aeabi_LC_TIME )
#define LC_ALL ( __aeabi_LC_ALL )

#else /* _AEABI_PORTABILITY_LEVEL */

#define LC_ALL                  0
#define LC_COLLATE		1
#define LC_CTYPE		2
#define LC_MONETARY	        3
#define LC_NUMERIC		4
#define LC_TIME		        5
#define LC_MESSAGES	        6

#endif/* _AEABI_PORTABILITY_LEVEL */

		/* TYPE DEFINITIONS */
#if defined(_AEABI_PORTABILITY_LEVEL) && _AEABI_PORTABILITY_LEVEL
struct __aeabi_lconv {
    char *decimal_point;
    char *thousands_sep;
    char *grouping;
    char *int_curr_symbol;
    char *currency_symbol;
    char *mon_decimal_point;
    char *mon_thousands_sep;
    char *mon_grouping;
    char *positive_sign;
    char *negative_sign;
    char int_frac_digits;
    char frac_digits;
    char p_cs_precedes;
    char p_sep_by_space;
    char n_cs_precedes;
    char n_sep_by_space;
    char p_sign_posn;
    char n_sign_posn;
    char int_p_cs_precedes;
    char int_n_cs_precedes;
    char int_p_sep_by_space;
    char int_n_sep_by_space;
    char int_p_sign_posn;
    char int_n_sign_posn;
};

#else /* _AEABI_PORTABILITY_LEVEL */
struct lconv
{
    /* LC_NUMERIC */
    char *decimal_point;
    char *grouping;
    char *thousands_sep;
    /* LC_MONETARY */
    char *mon_decimal_point;
    char *mon_grouping;
    char *mon_thousands_sep;

    char *negative_sign;
    char *positive_sign;

    char *currency_symbol;

    char frac_digits;
    char n_cs_precedes;
    char n_sep_by_space;
    char n_sign_posn;
    char p_cs_precedes;
    char p_sep_by_space;
    char p_sign_posn;

    char *int_curr_symbol;
    char int_frac_digits;
    char int_p_cs_precedes;
    char int_n_cs_precedes;
    char int_p_sep_by_space;
    char int_n_sep_by_space;
    char int_p_sign_posn;
    char int_n_sign_posn;
};
#endif /* _AEABI_PORTABILITY_LEVEL */

		/* DECLARATIONS */
#if defined(_AEABI_PORTABILITY_LEVEL) && _AEABI_PORTABILITY_LEVEL
extern struct __aeabi_lconv *__aeabi_localeconv(void);
extern void _get_aeabi_lconv(struct __aeabi_lconv *result);
#else /* _AEABI_PORTABILITY_LEVEL */
struct lconv *localeconv(void);
#endif/* _AEABI_PORTABILITY_LEVEL */

char *setlocale(int category, const char *locale);

#ifdef __cplusplus
} /* extern "C" */
#endif /* __cplusplus */

#pragma diag_pop

#if defined(_AEABI_PORTABILITY_LEVEL) && _AEABI_PORTABILITY_LEVEL != 0 && \
   !defined(_AEABI_PORTABLE)
#define _AEABI_PORTABLE
#endif

/*----------------------------------------------------------------------------*/
/* If sys/cdefs.h is available, go ahead and include it. xlocale.h assumes    */
/* this file will have already included sys/cdefs.h.                          */
/*----------------------------------------------------------------------------*/
#if __has_include(<sys/cdefs>)
#include <sys/cdefs.h>
#endif

/*----------------------------------------------------------------------------*/
/* Include xlocale/_locale.h> if POSIX is enabled. This will expose the       */
/* xlocale locale interface.                                                  */
/*----------------------------------------------------------------------------*/
#if defined(_POSIX_VISIBLE) && _POSIX_VISIBLE >= 200809
__BEGIN_DECLS
#include <xlocale/_locale.h>
__END_DECLS
#endif

#endif /* _LOCALE_H_ */


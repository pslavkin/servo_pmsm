/*-
 * Copyright (c)1999 Citrus Project,
 * All rights reserved.
 *
 * Copyright (c) 2014-2014 Texas Instruments Incorporated
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 *
 * $FreeBSD: release/10.0.0/include/wchar.h 247411 2013-02-27 19:50:46Z jhb $
 */

/*-
 * Copyright (c) 1999, 2000 The NetBSD Foundation, Inc.
 * All rights reserved.
 *
 * This code is derived from software contributed to The NetBSD Foundation
 * by Julian Coleman.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE NETBSD FOUNDATION, INC. AND CONTRIBUTORS
 * ``AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED
 * TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE FOUNDATION OR CONTRIBUTORS
 * BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 *	$NetBSD: wchar.h,v 1.8 2000/12/22 05:31:42 itojun Exp $
 */

#ifndef _WCHAR_H_
#define _WCHAR_H_

#include <_ti_config.h>
#include <stdio.h>
#include <stddef.h>

#if defined(__cplusplus)
extern "C" {
#endif

#ifndef WCHAR_MAX
#  if !defined(__TI_WCHAR_T_BITS__) || __TI_WCHAR_T_BITS__ == 16
#    define WCHAR_MAX 0xffffu
#  else
#    define WCHAR_MAX 0xffffffffu
#  endif
#endif
#ifndef WCHAR_MIN
#  define WCHAR_MIN 0
#endif

#ifndef WEOF
#define	WEOF 	((wint_t)-1)
#endif

#ifndef _MBSTATET
#define _MBSTATET
#if defined(_AEABI_PORTABILITY_LEVEL) && _AEABI_PORTABILITY_LEVEL != 0
typedef struct _Mbstatet
{
    unsigned int __state, __state2;
} _Mbstatet;
#else
typedef int _Mbstatet;
#endif /* _AEABI_PORTABILITY_LEVEL */
#endif /* _MBSTATET */

typedef _Mbstatet mbstate_t;
struct tm;

#ifndef _WINT_T_DECLARED
#define _WINT_T_DECLARED
#if defined(__TMS320C6X__) && !defined(__C6X_MIGRATION__) && defined(__TI_EABI__)
typedef unsigned int wint_t;
#elif defined (__TMS320C2000__) && defined (__TI_EABI__)
typedef unsigned long wint_t;
#else
typedef int wint_t;
#endif
#endif


_CODE_ACCESS wint_t   btowc   (int);
_CODE_ACCESS wint_t   fgetwc  (FILE *);
_CODE_ACCESS wint_t   fputwc  (wchar_t, FILE *);
_CODE_ACCESS int      fwide   (FILE *, int);
_CODE_ACCESS size_t   mbrtowc (wchar_t * __restrict,
                               const char * __restrict,
                               size_t,
                               mbstate_t * __restrict);
_CODE_ACCESS wint_t   ungetwc (wint_t, FILE *);
_CODE_ACCESS size_t   wcrtomb (char * __restrict,
                               wchar_t,
                               mbstate_t * __restrict);
_CODE_ACCESS int      wcscmp  (const wchar_t *, const wchar_t *);
_CODE_ACCESS size_t   wcslen  (const wchar_t *);
_CODE_ACCESS int      wcsncmp (const wchar_t *, const wchar_t*, size_t);
_CODE_ACCESS wchar_t *wcsncpy (wchar_t * __restrict,
                               const wchar_t * __restrict,
                               size_t);
_CODE_ACCESS int      wctob   (wint_t);
_CODE_ACCESS wchar_t *wmemchr (const wchar_t *, wchar_t, size_t);
_CODE_ACCESS int      wmemcmp (const wchar_t *, const wchar_t*, size_t);
_CODE_ACCESS wchar_t *wmemcpy (wchar_t * __restrict,
                               const wchar_t * __restrict,
                               size_t);
_CODE_ACCESS wchar_t *wmemmove(wchar_t *, const wchar_t *, size_t);
_CODE_ACCESS wchar_t *wmemset (wchar_t *, wchar_t, size_t);

#define	getwc(fp)	fgetwc(fp)
#define	getwchar()	fgetwc(__stdinp)
#define	putwc(wc, fp)	fputwc(wc, fp)
#define	putwchar(wc)	fputwc(wc, __stdoutp)

#if defined(__cplusplus)
}
#endif

#if defined(_AEABI_PORTABILITY_LEVEL) && _AEABI_PORTABILITY_LEVEL != 0 && \
   !defined(_AEABI_PORTABLE)
#define _AEABI_PORTABLE
#endif

#endif /* !_WCHAR_H_ */

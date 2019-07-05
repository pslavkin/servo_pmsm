/*****************************************************************************/
/* wctype.h                                                                  */
/*                                                                           */
/* Copyright (c) 2007 Texas Instruments Incorporated                         */
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
/*  WIDE CHARACTER TYPING FUNCTIONS AND MACROS                          */
/*                                                                      */
/************************************************************************/
#ifndef _WCTYPE_H_
#define _WCTYPE_H_

#include <_ti_config.h>

#if defined(__TMS320C2000__)
#if defined(__TMS320C28XX_CLA__)
#error "Header file <wctype.h> not supported by CLA compiler"
#endif
#endif

#ifdef __cplusplus
extern "C"
{
#endif /* __cplusplus */

#ifndef WEOF
#define WEOF ((wint_t)(-1))
#endif

/************************************************************************/
/*   TYPES                                                              */
/************************************************************************/
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

typedef void *wctrans_t;
typedef void *wctype_t;

/************************************************************************/
/*   FUNCTION DECLARATIONS                                              */
/************************************************************************/
_CODE_ACCESS int       iswalnum(wint_t _c);
_CODE_ACCESS int       iswalpha(wint_t _c);
_CODE_ACCESS int       iswblank(wint_t _c);
_CODE_ACCESS int       iswcntrl(wint_t _c);
_CODE_ACCESS int       iswdigit(wint_t _c);
_CODE_ACCESS int       iswgraph(wint_t _c);
_CODE_ACCESS int       iswlower(wint_t _c);
_CODE_ACCESS int       iswprint(wint_t _c);
_CODE_ACCESS int       iswpunct(wint_t _c);
_CODE_ACCESS int       iswspace(wint_t _c);
_CODE_ACCESS int       iswupper(wint_t _c);
_CODE_ACCESS int       iswxdigit(wint_t _c);
_CODE_ACCESS int       iswascii(wint_t _c);

_CODE_ACCESS wctype_t  wctype(const char *property);
_CODE_ACCESS int       iswctype(wint_t c, wctype_t category);

_CODE_ACCESS wint_t    towupper(wint_t _c);
_CODE_ACCESS wint_t    towlower(wint_t _c);
_CODE_ACCESS wint_t    towascii(wint_t _c);

_CODE_ACCESS wctrans_t wctrans(const char *property);
_CODE_ACCESS wint_t    towctrans(wint_t c, wctrans_t category);

#ifdef __cplusplus
} /* extern "C" */
#endif /* __cplusplus */

#endif /* ! _WCTYPE_H_ */

/*----------------------------------------------------------------------------*/
/* If sys/cdefs.h is available, go ahead and include it. xlocale.h assumes    */
/* this file will have already included sys/cdefs.h.                          */
/*----------------------------------------------------------------------------*/
#if __has_include(<sys/cdefs.h>)
#include <sys/cdefs.h>
#endif

/*----------------------------------------------------------------------------*/
/* Include xlocale/_ctype.h> if POSIX is enabled. This will expose the        */
/* xlocale wctype interface.                                                  */
/*----------------------------------------------------------------------------*/
#if defined(__POSIX_VISIBLE) && __POSIX_VISIBLE >= 200809
__BEGIN_DECLS
#define _XLOCALE_WCTYPES 1
#include <xlocale/_ctype.h>
__END_DECLS
#endif

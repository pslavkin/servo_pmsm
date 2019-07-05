/*****************************************************************************/
/* time.h                                                                    */
/*                                                                           */
/* Copyright (c) 1990 Texas Instruments Incorporated                         */
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

#ifndef _TIME_H_
#define _TIME_H_

#include <_ti_config.h>
#include <abi_prefix.h>
#if __has_include(<sys/_types.h>)
#include <sys/_types.h>
#endif

#if defined(__TMS320C2000__)
#if defined(__TMS320C28XX_CLA__)
#error "Header file <time.h> not supported by CLA compiler"
#endif
#endif

#ifndef NULL
#define NULL      0
#endif

#ifdef __cplusplus
extern "C" {
#endif

/* Use sys/_types.h for clock_t and time_t if it exists */
#if __has_include(<sys/_types.h>)
#ifndef _CLOCK_T_DECLARED
typedef __clock_t clock_t;
#define _CLOCK_T_DECLARED
#endif

#ifndef _TIME_T_DECLARED
typedef __time_t  time_t;
#define _TIME_T_DECLARED
#endif

typedef __int64_t __time64_t;
typedef __uint32_t __time32_t;

#ifndef _SIZE_T_DECLARED
#define _SIZE_T_DECLARED
#ifdef __clang__
typedef __SIZE_TYPE__ size_t;
#else
typedef __size_t size_t;
#endif
#endif

#else

#if (!defined(__C6X_MIGRATION__) && (defined(_TMS320C6X) || defined(__TMS320C6X__))) || defined(__ARM_ARCH)
typedef unsigned int clock_t;
typedef unsigned int __time32_t;
#else
typedef unsigned long clock_t;
typedef unsigned long __time32_t;
#endif /* int is 32 bits */

typedef long long __time64_t;

#if defined(__C7000__) || (defined(__TMS320C2000__) && defined(__TI_EABI__))
#define _TARGET_DEFAULTS_TO_TIME64
#endif

#if defined(_TARGET_DEFAULTS_TO_TIME64) || \
    (defined(__TI_TIME_USES_64) && __TI_TIME_USES_64)
typedef __time64_t time_t;
#else
typedef __time32_t time_t;
#endif

#ifndef _SIZE_T_DECLARED
#define _SIZE_T_DECLARED
#ifdef __clang__
typedef __SIZE_TYPE__ size_t;
#else
typedef __SIZE_T_TYPE__ size_t;
#endif
#endif

#endif

/*---------------------------------------------------------------------------*/
/* The ARM ABI says __aeabi_CLOCKS_PER_SEC is a const int. C99 says that     */
/* CLOCKS_PER_SEC is a constant of type clock_t. Therefore on ARM we define  */
/* type of __clocks_per_sec_t as int and for all other targets it is clock_t */
/*---------------------------------------------------------------------------*/
#if defined(__ARM_ARCH)
typedef int          __clocks_per_sec_t;
#else
typedef clock_t      __clocks_per_sec_t;
#endif

extern _DATA_ACCESS const __clocks_per_sec_t __TI_P(CLOCKS_PER_SEC);
#define CLOCKS_PER_SEC __TI_P(CLOCKS_PER_SEC)

struct tm 
{
    int tm_sec;      /* seconds after the minute   - [0,59]  */
    int tm_min;      /* minutes after the hour     - [0,59]  */
    int tm_hour;     /* hours after the midnight   - [0,23]  */
    int tm_mday;     /* day of the month           - [1,31]  */
    int tm_mon;      /* months since January       - [0,11]  */
    int tm_year;     /* years since 1900                     */
    int tm_wday;     /* days since Sunday          - [0,6]   */
    int tm_yday;     /* days since Jan 1st         - [0,365] */
    int tm_isdst;    /* Daylight Savings Time flag           */
#if defined(_AEABI_PORTABILITY_LEVEL) && _AEABI_PORTABILITY_LEVEL != 0
    int __extra_1, __extra_2;            /* ABI-required extra fields */
#endif

};

/*************************************************************************/
/* TIME ZONE STRUCTURE DEFINITION                                        */
/*************************************************************************/
typedef struct 
{
    short daylight;
    long  timezone; /* seconds WEST of UTC.  Strange but traditional */
    char  tzname[4];
    char  dstname[4];
} TZ;

extern _DATA_ACCESS TZ _tz;

/****************************************************************************/
/* FUNCTION DECLARATIONS.  (NOTE : clock AND time ARE SYSTEM SPECIFIC)      */
/****************************************************************************/
_CODE_ACCESS clock_t    clock(void);             

_CODE_ACCESS __time32_t __time32(__time32_t *_timer);   
_CODE_ACCESS __time32_t __mktime32(struct tm *_tptr);
_CODE_ACCESS double     __difftime32(__time32_t _time1, __time32_t _time0);
      _IDECL char      *__ctime32(const __time32_t *_timer);
_CODE_ACCESS struct tm *__gmtime32(const __time32_t *_timer);
_CODE_ACCESS struct tm *__localtime32(const __time32_t *_timer);

_CODE_ACCESS __time64_t __time64(__time64_t *_timer);   
_CODE_ACCESS __time64_t __mktime64(struct tm *_tptr);
_CODE_ACCESS double     __difftime64(__time64_t _time1, __time64_t _time0);
      _IDECL char      *__ctime64(const __time64_t *_timer);
_CODE_ACCESS struct tm *__gmtime64(const __time64_t *_timer);
_CODE_ACCESS struct tm *__localtime64(const __time64_t *_timer);

_CODE_ACCESS char      *asctime(const struct tm *_timeptr);
_CODE_ACCESS size_t     strftime(char * __restrict _out, size_t _maxsize,
				 const char * __restrict _format,
				 const struct tm * __restrict _timeptr);

#if defined(_INLINE) || defined(_CTIME32_IMPLEMENTATION)
_IDEFN char *__ctime32(const __time32_t *timer)
{
   return asctime(__localtime32(timer));
}
#endif /* _INLINE || _CTIME32_IMPLEMENTATION */

#if defined(_INLINE) || defined(_CTIME64_IMPLEMENTATION)
_IDEFN char *__ctime64(const __time64_t *timer)
{
   return asctime(__localtime64(timer));
}
#endif /* _INLINE || _CTIME64_IMPLEMENTATION */

/*-----------------------------------------------------------------------*/
/* The user may define __TI_TIME_USES_64=1 to redirects all time        */
/* functions to time64 functions.                                        */
/*-----------------------------------------------------------------------*/
#if defined(_TIME_IMPLEMENTATION) && defined(__TI_TIME_USES_64) && __TI_TIME_USES_64
#error "Do not build the RTS with __TI_TIME_USES_64 set"
#elif defined(__TI_TIME_USES_64) && __TI_TIME_USES_64
static __inline time_t     time(time_t *timer) { return __time64(timer); }
static __inline time_t     mktime(struct tm *tptr) { return __mktime64(tptr); }
static __inline double     difftime(time_t time1, time_t time0) { return __difftime64(time1, time0); }
static __inline char      *ctime(const time_t *timer) { return __ctime64(timer); }
static __inline struct tm *gmtime(const time_t *timer) { return __gmtime64(timer); }
static __inline struct tm *localtime(const time_t *timer) { return __localtime64(timer); }
#else
_CODE_ACCESS time_t     time(time_t *_timer);   
_CODE_ACCESS time_t     mktime(struct tm *_tptr);
_CODE_ACCESS double     difftime(time_t _time1, time_t _time0);
      _IDECL char      *ctime(const time_t *_timer);
_CODE_ACCESS struct tm *gmtime(const time_t *_timer);
_CODE_ACCESS struct tm *localtime(const time_t *_timer);
  #if defined(_INLINE) && !defined(_TIME_IMPLEMENTATION)
  _IDEFN char *ctime(const time_t *timer)
  {
     return asctime(localtime(timer));
  }
  #endif /* _INLINE */
#endif

#ifdef __cplusplus
} /* extern "C" */
#endif /* __cplusplus */

#if defined(_AEABI_PORTABILITY_LEVEL) && _AEABI_PORTABILITY_LEVEL != 0 && \
   !defined(_AEABI_PORTABLE)
#define _AEABI_PORTABLE
#endif

/*----------------------------------------------------------------------------*/
/* If sys/cdefs.h is available, go ahead and include it. xlocale.h assumes    */
/* this file will have already included sys/cdefs.h.                          */
/*----------------------------------------------------------------------------*/
#if __has_include(<sys/cdefs.h>)
#include <sys/cdefs.h>
#endif

/*----------------------------------------------------------------------------*/
/* Include xlocale/_time.h> if POSIX is enabled. This will expose the         */
/* xlocale time interface.                                                    */
/*----------------------------------------------------------------------------*/
#if (defined(__POSIX_VISIBLE) && __POSIX_VISIBLE >= 200809) || defined(_XLOCALE_H_)
__BEGIN_DECLS
#include <xlocale/_time.h>
__END_DECLS
#endif

#endif /* _TIME_H_ */


/*
 * Copyright (c) 2015-2015 Texas Instruments Incorporated
 *
 * ====================================================
 * Copyright (C) 1993 by Sun Microsystems, Inc. All rights reserved.
 *
 * Developed at SunPro, a Sun Microsystems, Inc. business.
 * Permission to use, copy, modify, and distribute this
 * software is freely granted, provided that this notice
 * is preserved.
 * ====================================================
 */

/*
 * from: @(#)fdlibm.h 5.1 93/09/24
 * $FreeBSD$
 */

#ifndef _TI_MATH_H_
#define	_TI_MATH_H_

#pragma diag_push
#pragma CHECK_MISRA("-6.3") /* standard types required for standard headers */
#pragma CHECK_MISRA("-12.7") /* bitwise operators not allowed on signed ints */
#pragma CHECK_MISRA("-16.4") /* identifiers in fn defn/decl identical??? fabs/fabsf */
#pragma CHECK_MISRA("-19.1") /* only comments and preproc before #include */
#pragma CHECK_MISRA("-19.7") /* macros required for implementation */
#pragma CHECK_MISRA("-20.1") /* standard headers must define standard names */
#pragma CHECK_MISRA("-20.2") /* standard headers must define standard names */

#include <_ti_config.h>
#include <_defs.h>

/*
 * ANSI/POSIX
 */

#if defined(__cplusplus) && \
   defined(_AEABI_PORTABILITY_LEVEL) && _AEABI_PORTABILITY_LEVEL != 0
  extern "C" {
    extern const double      __aeabi_HUGE_VAL;
    extern const long double __aeabi_HUGE_VALL;
    extern const float       __aeabi_HUGE_VALF;
    extern const float       __aeabi_INFINITY;
    extern const float       __aeabi_NAN;
  }
#define	HUGE_VAL	__aeabi_HUGE_VAL
#define	HUGE_VALF	__aeabi_HUGE_VALF
#define	HUGE_VALL	__aeabi_HUGE_VALL
#define	INFINITY	__aeabi_INFINITY
#define	NAN		__aeabi_NAN
#elif defined(__clang__)
#if __has_builtin(__builtin_inf)
#define	HUGE_VAL	__builtin_inf()
#define	HUGE_VALF	__builtin_inff()
#define	HUGE_VALL	__builtin_infl()
#define	INFINITY	__builtin_inff()
#define	NAN		__builtin_nanf("")
#else
#error "__builtin_inf is not available"
#endif
#else
#define	HUGE_VAL	((double)__INFINITY__)
#define	HUGE_VALF	(__INFINITY__)
#define	HUGE_VALL	((long double)__INFINITY__)
#define	INFINITY	(__INFINITY__)
#define	NAN		(__NAN__)
#endif

#define	FP_ILOGB0	(-__INT_MAX)
#define	FP_ILOGBNAN	(__INT_MAX)

#define	MATH_ERRNO	1
#define	MATH_ERREXCEPT	2
#define	math_errhandling (MATH_ERRNO)

#if defined(__ARM_FP) && defined(__ARM_FEATURE_FMA)
#if __ARM_FP & 0x4
#define	FP_FAST_FMAF	1
#endif

#if __ARM_FP & 0x8
#define	FP_FAST_FMA	1
#define	FP_FAST_FMAL	1
#endif
#endif

/* Symbolic constants to classify floating point numbers. */
#define	FP_INFINITE	(__FP_INFINITE)
#define	FP_NAN		(__FP_NAN)
#define	FP_NORMAL	(__FP_NORMAL)
#define	FP_SUBNORMAL	(__FP_SUBNORMAL)
#define	FP_ZERO		(__FP_ZERO)

#if (__STDC_VERSION__ >= 199901L) && defined(__EDG_VERSION__)
#define	__fp_type_select(x, f, d, ld) __generic((x),,, d, f, ld,,,)(x)
#elif (__STDC_VERSION__ >= 201112L && defined(__clang__))
#define	__fp_type_select(x, f, d, ld) _Generic((x),			\
    float: f(x),							\
    double: d(x),							\
    long double: ld(x),							\
    volatile float: f(x),						\
    volatile double: d(x),						\
    volatile long double: ld(x),					\
    volatile const float: f(x),						\
    volatile const double: d(x),					\
    volatile const long double: ld(x),					\
    const float: f(x),							\
    const double: d(x),							\
    const long double: ld(x))
#else
#define	 __fp_type_select(x, f, d, ld)					\
    ((sizeof(x) == sizeof(float)) ? (f)(x)				\
    : (sizeof(x) == sizeof(double)) ? (d)(x)				\
    : (ld)(x))
#endif

#define	fpclassify(x) (__fp_type_select((x), __fpclassifyf, __fpclassify, __fpclassifyl))
#define	isfinite(x) (__fp_type_select((x), __isfinitef, __isfinite, __isfinitel))
#define	isinf(x) (__fp_type_select((x), __isinff, __isinf, __isinfl))
#define	isnan(x) (__fp_type_select((x), __isnanf, __isnan, __isnanl))
#define	isnormal(x) (__fp_type_select((x), __isnormalf, __isnormal, __isnormall))

#ifdef __MATH_BUILTIN_RELOPS
#define	isgreater(x, y)		__builtin_isgreater((x), (y))
#define	isgreaterequal(x, y)	__builtin_isgreaterequal((x), (y))
#define	isless(x, y)		__builtin_isless((x), (y))
#define	islessequal(x, y)	__builtin_islessequal((x), (y))
#define	islessgreater(x, y)	__builtin_islessgreater((x), (y))
#define	isunordered(x, y)	__builtin_isunordered((x), (y))
#else
#define	isgreater(x, y)		(!isunordered((x), (y)) && (x) > (y))
#define	isgreaterequal(x, y)	(!isunordered((x), (y)) && (x) >= (y))
#define	isless(x, y)		(!isunordered((x), (y)) && (x) < (y))
#define	islessequal(x, y)	(!isunordered((x), (y)) && (x) <= (y))
#define	islessgreater(x, y)	(!isunordered((x), (y)) && \
					((x) > (y) || (y) > (x)))
#define	isunordered(x, y)	(isnan(x) || isnan(y))
#endif /* __MATH_BUILTIN_RELOPS */

#define	signbit(x) (__fp_type_select((x), __signbitf, __signbit, __signbitl))

/*
 * XOPEN/SVID
 */
#ifdef __BSD_VISIBLE
#define	M_E		2.7182818284590452354	/* e */
#define	M_LOG2E		1.4426950408889634074	/* log 2e */
#define	M_LOG10E	0.43429448190325182765	/* log 10e */
#define	M_LN2		0.69314718055994530942	/* log e2 */
#define	M_LN10		2.30258509299404568402	/* log e10 */
#define	M_PI		3.14159265358979323846	/* pi */
#define	M_PI_2		1.57079632679489661923	/* pi/2 */
#define	M_PI_4		0.78539816339744830962	/* pi/4 */
#define	M_1_PI		0.31830988618379067154	/* 1/pi */
#define	M_2_PI		0.63661977236758134308	/* 2/pi */
#define	M_2_SQRTPI	1.12837916709551257390	/* 2/sqrt(pi) */
#define	M_SQRT2		1.41421356237309504880	/* sqrt(2) */
#define	M_SQRT1_2	0.70710678118654752440	/* 1/sqrt(2) */
#endif /* __BSD_VISIBLE */

#ifdef __cplusplus
extern "C" {
#endif

/*---------------------------------------------------------------------------*/
/* If --fp_mode=relaxed is used and VFP is enabled, use the hardware square  */
/* root directly instead of calling the sqrtx routine. This will not set     */
/* errno if the argument is negative.                                        */
/*                                                                           */
/* This is done by defining sqrt to _relaxed_sqrt to allow other translation */
/* units to use the normal sqrt routine under strict mode.                   */
/*---------------------------------------------------------------------------*/
#if !__TI_STRICT_FP_MODE__
#if __TI_HAS_BUILTIN_SQRT32
#pragma CHECK_MISRA("-19.4") /* macro defined to be an identifier is OK */
#pragma CHECK_MISRA("-8.1") /* function definition with no prototype visible */
#pragma CHECK_MISRA("-8.5") /* function definitions required */
#pragma CHECK_MISRA("-8.11") /* non-static function definition OK */

#pragma diag_suppress 1558 /* --float_operations_allowed checks */

#define sqrtf __relaxed_sqrtf
__inline float __relaxed_sqrtf(float x)
{
    return __sqrtf(x);
}
#endif

/*---------------------------------------------------------------------------*/
/* The FPv4SP supported on Cortex-M4 does not have double precision hardware */
/* so avoid using the intrinsic.                                             */
/*---------------------------------------------------------------------------*/
#if __TI_HAS_BUILTIN_SQRT64
#define sqrt  __relaxed_sqrt
__inline double __relaxed_sqrt(double x)
{
    return __sqrt(x);
}

#define sqrtl __relaxed_sqrtl
__inline long double __relaxed_sqrtl(long double x)
{
    return __sqrt(x);
}
#endif
#endif

/*---------------------------------------------------------------------------*/
/* TMU SUPPORT AND RELAXED MODE: USE INSTRINSICS.                            */
/*---------------------------------------------------------------------------*/
#if defined(__TMS320C28XX_TMU__)  && !__TI_STRICT_FP_MODE__
#pragma CHECK_MISRA("-19.4") /* macro defined to be an identifier is OK */
#pragma CHECK_MISRA("-8.1") /* function definition with no prototype visible */
#pragma CHECK_MISRA("-8.5") /* function definitions required */
#pragma CHECK_MISRA("-8.11") /* non-static function definition OK */
#pragma CHECK_MISRA("-10.1") /* use implicit casts */

#pragma diag_suppress 1558 /* --float_operations_allowed checks */

/* Float cases */
#define sqrtf  __relaxed_sqrtf
__inline float __relaxed_sqrtf(float x)
{
    return __sqrtf(x);
}
#define sinf   __relaxed_sinf
__inline float __relaxed_sinf(float x)
{
    return __sin(x);
}
#define cosf   __relaxed_cosf
__inline float __relaxed_cosf(float x)
{
    return __cos(x);
}
#define atanf  __relaxed_atanf
__inline float __relaxed_atanf(float x)
{
  return __atan2(x, 1.0f);
}
#define atan2f __relaxed_atan2f
__inline float __relaxed_atan2f(float y, float x)
{
  return __atan2(y,x);
}

#if defined(__TMS320C28XX_TMU1__)
#define log2f __relaxed_log2f
__inline float __relaxed_log2f(float x)
{
    return __log2(x);
}
#define exp2f __relaxed_exp2f
__inline float __relaxed_exp2f(float x)
{
    return (1.0f / __iexp2(x));
}
#define expf __relaxed_expf
__inline float __relaxed_expf(float x)
{
  float log2ofetimesx = 1.44269 * x;
  return exp2f(log2ofetimesx);
}
#define logf __relaxed_logf
__inline float __relaxed_logf(float x)
{
  const float oneoverlog2ofe = 0.693147;
  return (__log2(x) * oneoverlog2ofe);
}
#define powf __relaxed_powf
__inline float __relaxed_powf(float x, float y)
{
  float log2ofx = __log2(x);
  float log2ofxtimesy = log2ofx * y;

  float exp2foflog2ofxtimesy = exp2f(log2ofxtimesy);

  return log2ofxtimesy > 0 ? exp2foflog2ofxtimesy : 1.0f / exp2foflog2ofxtimesy;
}
#endif

/* Double cases */
#ifndef __TI_EABI__
#define sqrt  __relaxed_sqrt
__inline double __relaxed_sqrt(double x)
{
    return __sqrt(x);
}
#define sin   __relaxed_sin
__inline double __relaxed_sin(double x)
{
    return __sin(x);
}
#define cos   __relaxed_cos
__inline double __relaxed_cos(double x)
{
    return __cos(x);
}
#define atan  __relaxed_atan
__inline double __relaxed_atan(double x)
{
  return __atan2(x, 1.0);
}
#define atan2 __relaxed_atan2
__inline double __relaxed_atan2(double y, double x)
{
  return __atan2(y,x);
}

#endif
#endif /* defined(__TMS320C28XX_TMU__)  && !__TI_STRICT_FP_MODE__ */

/* Disable double_t and float_t for C28x because of Motorware (AY 2015) */
#ifndef __TMS320C28XX__
#define __TI_HAS_FLOAT_DBL_T 1
/* These typedefs depend on the value of FLT_EVAL_METHOD */
typedef	double	double_t;
typedef	float	float_t;
#endif

_CODE_ACCESS double      acos(double x);
_CODE_ACCESS float       acosf(float x);
_CODE_ACCESS long double acosl(long double x);
_CODE_ACCESS double      asin(double x);
_CODE_ACCESS float       asinf(float x);
_CODE_ACCESS long double asinl(long double x);
_CODE_ACCESS double      atan(double x);
_CODE_ACCESS float       atanf(float x);
_CODE_ACCESS long double atanl(long double x);
_CODE_ACCESS double      atan2(double y, double x);
_CODE_ACCESS float       atan2f(float y, float x);
_CODE_ACCESS long double atan2l(long double y, long double x);
_CODE_ACCESS double      cos(double x);
_CODE_ACCESS float       cosf(float x);
_CODE_ACCESS long double cosl(long double x);
_CODE_ACCESS double      sin(double x);
_CODE_ACCESS float       sinf(float x);
_CODE_ACCESS long double sinl(long double x);
_CODE_ACCESS double      tan(double x);
_CODE_ACCESS float       tanf(float x);
_CODE_ACCESS long double tanl(long double x);
_CODE_ACCESS double      acosh(double x);
_CODE_ACCESS float       acoshf(float x);
_CODE_ACCESS long double acoshl(long double x);
_CODE_ACCESS double      asinh(double x);
_CODE_ACCESS float       asinhf(float x);
_CODE_ACCESS long double asinhl(long double x);
_CODE_ACCESS double      atanh(double x);
_CODE_ACCESS float       atanhf(float x);
_CODE_ACCESS long double atanhl(long double x);
_CODE_ACCESS double      cosh(double x);
_CODE_ACCESS float       coshf(float x);
_CODE_ACCESS long double coshl(long double x);
_CODE_ACCESS double      sinh(double x);
_CODE_ACCESS float       sinhf(float x);
_CODE_ACCESS long double sinhl(long double x);
_CODE_ACCESS double      tanh(double x);
_CODE_ACCESS float       tanhf(float x);
_CODE_ACCESS long double tanhl(long double x);
_CODE_ACCESS double      exp(double x);
_CODE_ACCESS float       expf(float x);
_CODE_ACCESS long double expl(long double x);
_CODE_ACCESS double      exp2(double x);
_CODE_ACCESS float       exp2f(float x);
_CODE_ACCESS long double exp2l(long double x);
_CODE_ACCESS double      expm1(double x);
_CODE_ACCESS float       expm1f(float x);
_CODE_ACCESS long double expm1l(long double x);
_CODE_ACCESS double      frexp(double val, int *e);
_CODE_ACCESS float       frexpf(float val, int *e);
_CODE_ACCESS long double frexpl(long double val, int *e);
_CODE_ACCESS int         ilogb(double x);
_CODE_ACCESS int         ilogbf(float x);
_CODE_ACCESS int         ilogbl(long double x);
_CODE_ACCESS double      ldexp(double x, int e);
_CODE_ACCESS float       ldexpf(float x, int e);
_CODE_ACCESS long double ldexpl(long double x, int e);
_CODE_ACCESS double      log(double x);
_CODE_ACCESS float       logf(float x);
_CODE_ACCESS long double logl(long double x);
_CODE_ACCESS double      log10(double x);
_CODE_ACCESS float       log10f(float x);
_CODE_ACCESS long double log10l(long double x);
_CODE_ACCESS double      log1p(double x);
_CODE_ACCESS float       log1pf(float x);
_CODE_ACCESS long double log1pl(long double x);
_CODE_ACCESS double      log2(double x);
_CODE_ACCESS float       log2f(float x);
_CODE_ACCESS long double log2l(long double x);
_CODE_ACCESS double      logb(double x);
_CODE_ACCESS float       logbf(float x);
_CODE_ACCESS long double logbl(long double x);
_CODE_ACCESS double      modf(double val, double *iptr);
_CODE_ACCESS float       modff(float val, float *iptr);
_CODE_ACCESS long double modfl(long double val, long double *iptr);
_CODE_ACCESS double      scalbn(double x, int n);
_CODE_ACCESS float       scalbnf(float x, int n);
_CODE_ACCESS long double scalbnl(long double x, int n);
_CODE_ACCESS double      scalbln(double x, long n);
_CODE_ACCESS float       scalblnf(float x, long n);
_CODE_ACCESS long double scalblnl(long double x, long n);
_CODE_ACCESS double      cbrt(double x);
_CODE_ACCESS float       cbrtf(float x);
_CODE_ACCESS long double cbrtl(long double x);
_CODE_ACCESS double      fabs(double x);
_CODE_ACCESS float       fabsf(float x);
_CODE_ACCESS long double fabsl(long double x);
_CODE_ACCESS double      hypot(double x, double y);
_CODE_ACCESS float       hypotf(float x, float y);
_CODE_ACCESS long double hypotl(long double x, long double y);
_CODE_ACCESS double      pow(double x, double y);
_CODE_ACCESS float       powf(float x, float y);
_CODE_ACCESS long double powl(long double x, long double y);
_CODE_ACCESS double      sqrt(double x);
_CODE_ACCESS float       sqrtf(float x);
_CODE_ACCESS long double sqrtl(long double x);
_CODE_ACCESS double      erf(double x);
_CODE_ACCESS float       erff(float x);
_CODE_ACCESS long double erfl(long double x);
_CODE_ACCESS double      erfc(double x);
_CODE_ACCESS float       erfcf(float x);
_CODE_ACCESS long double erfcl(long double x);
_CODE_ACCESS double      lgamma(double x);
_CODE_ACCESS float       lgammaf(float x);
_CODE_ACCESS long double lgammal(long double x);
_CODE_ACCESS double      tgamma(double x);
_CODE_ACCESS float       tgammaf(float x);
_CODE_ACCESS long double tgammal(long double x);
_CODE_ACCESS double      ceil(double x);
_CODE_ACCESS float       ceilf(float x);
_CODE_ACCESS long double ceill(long double x);
_CODE_ACCESS double      floor(double x);
_CODE_ACCESS float       floorf(float x);
_CODE_ACCESS long double floorl(long double x);
_CODE_ACCESS double      nearbyint(double x);
_CODE_ACCESS float       nearbyintf(float x);
_CODE_ACCESS long double nearbyintl(long double x);
_CODE_ACCESS double      rint(double x);
_CODE_ACCESS float       rintf(float x);
_CODE_ACCESS long double rintl(long double x);
_CODE_ACCESS long        lrint(double x);
_CODE_ACCESS long        lrintf(float x);
_CODE_ACCESS long        lrintl(long double x);
_CODE_ACCESS long long   llrint(double x);
_CODE_ACCESS long long   llrintf(float x);
_CODE_ACCESS long long   llrintl(long double x);
_CODE_ACCESS double      round(double x);
_CODE_ACCESS float       roundf(float x);
_CODE_ACCESS long double roundl(long double x);
_CODE_ACCESS long        lround(double x);
_CODE_ACCESS long        lroundf(float x);
_CODE_ACCESS long        lroundl(long double x);
_CODE_ACCESS long long   llround(double x);
_CODE_ACCESS long long   llroundf(float x);
_CODE_ACCESS long long   llroundl(long double x);
_CODE_ACCESS double      trunc(double x);
_CODE_ACCESS float       truncf(float x);
_CODE_ACCESS long double truncl(long double x);
_CODE_ACCESS double      fmod(double x, double y);
_CODE_ACCESS float       fmodf(float x, float y);
_CODE_ACCESS long double fmodl(long double x, long double y);
_CODE_ACCESS double      remainder(double x, double y);
_CODE_ACCESS float       remainderf(float x, float y);
_CODE_ACCESS long double remainderl(long double x, long double y);
_CODE_ACCESS double      remquo(double x, double y, int *quo);
_CODE_ACCESS float       remquof(float x, float y, int *quo);
_CODE_ACCESS long double remquol(long double x, long double y, int *quo);
_CODE_ACCESS double      copysign(double x, double y);
_CODE_ACCESS float       copysignf(float x, float y);
_CODE_ACCESS long double copysignl(long double x, long double y);
_CODE_ACCESS double      nan(const char *tagp);
_CODE_ACCESS float       nanf(const char *tagp);
_CODE_ACCESS long double nanl(const char *tagp);
_CODE_ACCESS double      nextafter(double x, double y);
_CODE_ACCESS float       nextafterf(float x, float y);
_CODE_ACCESS long double nextafterl(long double x, long double y);
_CODE_ACCESS double      nexttoward(double x, long double y);
_CODE_ACCESS float       nexttowardf(float x, long double y);
_CODE_ACCESS long double nexttowardl(long double x, long double y);
_CODE_ACCESS double      fdim(double x, double y);
_CODE_ACCESS float       fdimf(float x, float y);
_CODE_ACCESS long double fdiml(long double x, long double y);
_CODE_ACCESS double      fmax(double x, double y);
_CODE_ACCESS float       fmaxf(float x, float y);
_CODE_ACCESS long double fmaxl(long double x, long double y);
_CODE_ACCESS double      fmin(double x, double y);
_CODE_ACCESS float       fminf(float x, float y);
_CODE_ACCESS long double fminl(long double x, long double y);
_CODE_ACCESS double      fma(double x, double y, double z);
_CODE_ACCESS float       fmaf(float x, float y, float z);
_CODE_ACCESS long double fmal(long double x, long double y, long double z);

#ifdef __cplusplus
    }
#endif

#if defined(_AEABI_PORTABILITY_LEVEL) && _AEABI_PORTABILITY_LEVEL != 0 && \
   !defined(_AEABI_PORTABLE)
#define _AEABI_PORTABLE
#endif

#pragma diag_pop

#endif /* !_MATH_H_ */

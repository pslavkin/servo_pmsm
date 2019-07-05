/*****************************************************************************/
/* _defs.h                                                                   */
/*                                                                           */
/* Copyright (c) 2015 Texas Instruments Incorporated                         */
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

#ifndef _DEFS_H_
#define _DEFS_H_

#pragma diag_push

#pragma CHECK_MISRA("-8.1") /* visible prototypes */
#pragma CHECK_MISRA("-8.5") /* functions in header files */
#pragma CHECK_MISRA("-8.11") /* use static on fns with internal linkage */
#pragma CHECK_MISRA("-10.1") /* implicit conversion ... bool to int??? */
#pragma CHECK_MISRA("-12.1") /* operator precedence */
#pragma CHECK_MISRA("-12.2") /* different order of operations??? */
#pragma CHECK_MISRA("-12.4") /* RHS of &&/|| has side effects??? */
#pragma CHECK_MISRA("-12.7") /* Bitwise operators on signed types */
#pragma CHECK_MISRA("-14.7") /* single point of return */
#pragma CHECK_MISRA("-14.9") /* only compound statement after if/else */
#pragma CHECK_MISRA("-19.1") /* only comments and preproc before #include??? */
#pragma CHECK_MISRA("-19.4") /* macro expands to unparenthesized */

#pragma diag_suppress 1558 /* --float_operations_allowed checks */

/*---------------------------------------------------------------------------*/
/* _INLINE_DEFINITION                                                        */
/*                                                                           */
/* The regular (non-llvm-based) TI tools assume C++ inline semantics by      */
/* default, so if a function ends up not being inlined, then its definition  */
/* is kept in the compilation unit (but via COMDAT, we'll only keep one      */
/* definition of the function for the whole application).                    */
/*                                                                           */
/* However, llvm-based TI tools (like arm-llvm) use clang, and clang does    */
/* not assume C++ inline semantics by default. With the below definition of  */
/* _INLINE_DEFINITION for clang, we are going to force functions that are    */
/* declared with __inline to be *always* inlined (even when optimization or  */
/* inlining is somehow disabled).                                            */
/*---------------------------------------------------------------------------*/
#ifndef _INLINE_DEFINITION
#ifdef __cplusplus
#define _INLINE_DEFINITION inline
#elif defined(__clang__)
#define _INLINE_DEFINITION __inline __attribute__((always_inline))
#else
#define _INLINE_DEFINITION __inline
#endif
#endif

/* This file is included in other user header files; take care not to
   pollute the namespace */

#if __has_include(<sys/_types.h>)
#include <sys/_types.h>
#include <machine/_limits.h>
#else
typedef unsigned long long __uint64_t;
#if defined(__TMS320C2000__) || defined(__MSP430__)
typedef unsigned long __uint32_t;
#define __INT_MAX 32767
#else
typedef unsigned __uint32_t;
#define __INT_MAX  2147483647
#endif
#endif

#if __has_include(<sys/cdefs.h>)
#include <sys/cdefs.h>
#else
#ifdef __cplusplus
#define __BEGIN_DECLS extern "C" {
#define __END_DECLS }
#else
#define __BEGIN_DECLS
#define __END_DECLS
#endif
#endif

/* normalize target-specific intrinsics */

#if defined (__clang__)
static __inline __uint32_t __f32_bits_as_u32(float x) {
    const union { float f; __uint32_t i; } rep = {.f = x};
    return rep.i;
}

static __inline float __u32_bits_as_f32(__uint32_t x) {
    const union { float f; __uint32_t i; } rep = {.i = x};
    return rep.f;
}

static __inline __uint64_t __f64_bits_as_u64(double x) {
    const union { double f; __uint64_t i; } rep = {.f = x};
    return rep.i;
}

static __inline double __u64_bits_as_f64(__uint64_t x) {
    const union { double f; __uint64_t i; } rep = {.i = x};
    return rep.f;
}

static __inline __uint32_t __f64_upper_bits_as_u32(double x) {
    const union { double f; __uint64_t i; } rep = {.f = x};
    return rep.i >> 32;
}

static __inline __uint32_t __f64_lower_bits_as_u32(double x) {
    const union { double f; __uint64_t i; } rep = {.f = x};
    return (__uint32_t)rep.i;
}

static __inline double __u32x2_bits_as_f64(__uint32_t x, __uint32_t y) {
    const union { double f; __uint64_t i; } rep = {.i = (__uint64_t)x << 32 | y };
    return rep.f;
}
#elif defined(__ARM_ARCH)
#define __u32_bits_as_f32(x) (_itof(x))
#define __f32_bits_as_u32(x) (_ftoi(x))
#define __u64_bits_as_f64(x) (_itod((x)>>32,(x)&0xffffffff))
#define __f64_bits_as_u64(x) ((((__uint64_t)_hi(x) << 32 | _lo(x))))
#define __f64_upper_bits_as_u32(x) (_hi(x))
#define __f64_lower_bits_as_u32(x) (_lo(x))
#define __u32x2_bits_as_f64(x,y) (_itod((x),(y)))
#elif defined(__C7000__) /* Keep __C7000__ ordered before __TMS320C6X */
#define __u32_bits_as_f32(x) (__as_float(x))
#define __f32_bits_as_u32(x) (__as_uint(x))
#define __u64_bits_as_f64(x) (__as_double(x))
#define __f64_bits_as_u64(x) (__as_ulong(x))
#define __f64_upper_bits_as_u32(x) (__as_uint2(x).hi)
#define __f64_lower_bits_as_u32(x) (__as_uint2(x).lo)
#define __u32x2_bits_as_f64(x,y) (__as_double((__uint2)(y, x)))
#elif defined(__TMS320C6X__)
#define __u32_bits_as_f32(x) (_itof(x))
#define __f32_bits_as_u32(x) (_ftoi(x))
#define __u64_bits_as_f64(x) (_lltod(x))
#define __f64_bits_as_u64(x) (_dtoll(x))
#define __f64_upper_bits_as_u32(x) (_hi(x))
#define __f64_lower_bits_as_u32(x) (_lo(x))
#define __u32x2_bits_as_f64(x,y) (_itod((x),(y)))
#else
#define __f64_upper_bits_as_u32(x) (__f64_bits_as_u64(x) >> 32)
#define __f64_lower_bits_as_u32(x) (__f64_bits_as_u64(x) & 0xffffffff)
#define __u32x2_bits_as_f64(x,y) (__u64_bits_as_f64((__uint64_t)(x) << 32 | (__uint32_t)(y)))
#endif

#define __IEEE32_BIAS 0x7f
#define __IEEE32_MANT_DIG 24
#define __IEEE32_MAX_EXP 128u
#define __IEEE32_MIN 0x1.0p-126
#define __IEEE32_BIT_MASK(n) (((__uint32_t)(1) << (n)) - 1)
#define __IEEE32_EXP_BITS_MASK ((__IEEE32_MAX_EXP * 2) - 1)
#define __IEEE32_SGN_TEST_MASK ((__uint32_t)(1) << (32-1))
#define __IEEE32_EXP_TEST_MASK 0x7f80u

#define __IEEE32_SIGN_BIT_ZERO(f) \
    ((__f32_bits_as_u32(f) & __IEEE32_SGN_TEST_MASK) == 0)

#define __IEEE32_BIASED_EXP(f) \
    (((unsigned int)(__f32_bits_as_u32(f) >> (__IEEE32_MANT_DIG-1))) & __IEEE32_EXP_BITS_MASK)

#define __IEEE32_BIASED_EXP_IS_MAX(f) \
   ((((unsigned int)(__f32_bits_as_u32(f) >> 16)) & \
     __IEEE32_EXP_TEST_MASK) == __IEEE32_EXP_TEST_MASK)

#define __IEEE32_FRAC_PART(f) \
   (__f32_bits_as_u32(f) & __IEEE32_BIT_MASK(__IEEE32_MANT_DIG-1))

#define __IEEE32_FRAC_PART_IS_ZERO(f) (__IEEE32_FRAC_PART(f) == 0)

#define __IEEE32_DISCARD_N_FRAC_BITS(v,n) \
    (__u32_bits_as_f32(__f32_bits_as_u32(v) & ~__IEEE32_BIT_MASK(n)))

#define __IEEE32_DISCARD_EXP_AND_FRAC_PARTS(v) \
    (__u32_bits_as_f32(__f32_bits_as_u32(v) & __IEEE32_SGN_TEST_MASK))

#define __IEEE32_UNBIASED_EXP(f) \
    (__IEEE32_BIASED_EXP(f) - __IEEE32_BIAS)

#define __IEEE32_BIASED_EXP_IS_ZERO(f) (__IEEE32_BIASED_EXP(f) == 0)

#define __IEEE32_IS_ZERO(f) \
    ((__f32_bits_as_u32(f) & ~__IEEE32_SGN_TEST_MASK)==0)

#define __IEEE64_BIAS 1023
#define __IEEE64_MANT_DIG 53
#define __IEEE64_MAX_EXP 1024u
#define __IEEE64_MIN C(0x1.0p-1022)
#define __IEEE64_BIT_MASK(n) (((__uint64_t)(1) << (n)) - 1)
#define __IEEE64_EXP_BITS_MASK ((__IEEE64_MAX_EXP * 2) - 1)
#define __IEEE64_SGN_TEST_MASK ((__uint64_t)(1) << (64-1))
#define __IEEE64_EXP_TEST_MASK 0x7ff0u

#define __IEEE64_SIGN_BIT_ZERO(f) \
   ((__f64_bits_as_u64(f) & __IEEE64_SGN_TEST_MASK) == 0)

#define __IEEE64_BIASED_EXP(f) \
   ((__f64_bits_as_u64(f) >> (__IEEE64_MANT_DIG-1)) & __IEEE64_EXP_BITS_MASK)

#define __IEEE64_BIASED_EXP_IS_MAX(f) \
   ((((unsigned int)(__f64_bits_as_u64(f) >> 48)) &  \
     __IEEE64_EXP_TEST_MASK) == __IEEE64_EXP_TEST_MASK)

#define __IEEE64_FRAC_PART(f) \
   (__f64_bits_as_u64(f) & __IEEE64_BIT_MASK(__IEEE64_MANT_DIG-1))

#define __IEEE64_FRAC_PART_IS_ZERO(f) (__IEEE64_FRAC_PART(f) == 0)

#define __IEEE64_DISCARD_N_FRAC_BITS(v,n) \
   (__u64_bits_as_f64(__f64_bits_as_u64(v) & ~__IEEE64_BIT_MASK(n)))

#define __IEEE64_DISCARD_EXP_AND_FRAC_PARTS(v) \
   (__u64_bits_as_f64(__f64_bits_as_u64(v) & __IEEE64_SGN_TEST_MASK))

#define __IEEE64_UNBIASED_EXP(f) \
   (__IEEE64_BIASED_EXP(f) - __IEEE64_BIAS)

#define __IEEE64_BIASED_EXP_IS_ZERO(f) \
   (__IEEE64_BIASED_EXP(f) == 0)

#define __IEEE64_IS_ZERO(f) \
   ((__f64_bits_as_u64(f) & ~__IEEE64_SGN_TEST_MASK)==0)

#define __FLOAT_UNBIASED_EXP(f)            (__IEEE32_UNBIASED_EXP(f))
#define __FLOAT_FRAC_PART_IS_ZERO(f)       (__IEEE32_FRAC_PART_IS_ZERO(f))
#define __FLOAT_BIASED_EXP_IS_ZERO(f)      (__IEEE32_BIASED_EXP_IS_ZERO(f))
#define __FLOAT_BIASED_EXP_IS_MAX(f)       (__IEEE32_BIASED_EXP_IS_MAX(f))
#define __FLOAT_SIGN_BIT_ZERO(f)           (__IEEE32_SIGN_BIT_ZERO(f))
#define __FLOAT_MANT_DIG                   (__IEEE32_MANT_DIG)

#if (defined(__TMS320C2000__)     && !defined(__TI_EABI__)) || \
    (defined(__TMS320C28XX_CLA__) && !defined(__TI_EABI__)) || \
    (defined(__MSP430__)          && !defined(__TI_EABI__))
#define __DOUBLE_UNBIASED_EXP(f)            (__IEEE32_UNBIASED_EXP(f))
#define __DOUBLE_FRAC_PART_IS_ZERO(f)       (__IEEE32_FRAC_PART_IS_ZERO(f))
#define __DOUBLE_BIASED_EXP_IS_ZERO(f)      (__IEEE32_BIASED_EXP_IS_ZERO(f))
#define __DOUBLE_BIASED_EXP_IS_MAX(f)       (__IEEE32_BIASED_EXP_IS_MAX(f))
#define __DOUBLE_SIGN_BIT_ZERO(f)           (__IEEE32_SIGN_BIT_ZERO(f))
#define __DOUBLE_MANT_DIG                   (__IEEE32_MANT_DIG)
#else
#define __DOUBLE_UNBIASED_EXP(f)            (__IEEE64_UNBIASED_EXP(f))
#define __DOUBLE_FRAC_PART_IS_ZERO(f)       (__IEEE64_FRAC_PART_IS_ZERO(f))
#define __DOUBLE_BIASED_EXP_IS_ZERO(f)      (__IEEE64_BIASED_EXP_IS_ZERO(f))
#define __DOUBLE_BIASED_EXP_IS_MAX(f)       (__IEEE64_BIASED_EXP_IS_MAX(f))
#define __DOUBLE_SIGN_BIT_ZERO(f)           (__IEEE64_SIGN_BIT_ZERO(f))
#define __DOUBLE_MANT_DIG                   (__IEEE64_MANT_DIG)
#endif

#if defined(__MSP430__) && !defined(__TI_EABI__)
#define __LDOUBLE_UNBIASED_EXP(f)            (__IEEE32_UNBIASED_EXP(f))
#define __LDOUBLE_FRAC_PART_IS_ZERO(f)       (__IEEE32_FRAC_PART_IS_ZERO(f))
#define __LDOUBLE_BIASED_EXP_IS_ZERO(f)      (__IEEE32_BIASED_EXP_IS_ZERO(f))
#define __LDOUBLE_BIASED_EXP_IS_MAX(f)       (__IEEE32_BIASED_EXP_IS_MAX(f))
#define __LDOUBLE_SIGN_BIT_ZERO(f)           (__IEEE32_SIGN_BIT_ZERO(f))
#define __LDOUBLE_MANT_DIG                   (__IEEE32_MANT_DIG)
#else
#define __LDOUBLE_UNBIASED_EXP(f)            (__IEEE64_UNBIASED_EXP(f))
#define __LDOUBLE_FRAC_PART_IS_ZERO(f)       (__IEEE64_FRAC_PART_IS_ZERO(f))
#define __LDOUBLE_BIASED_EXP_IS_ZERO(f)      (__IEEE64_BIASED_EXP_IS_ZERO(f))
#define __LDOUBLE_BIASED_EXP_IS_MAX(f)       (__IEEE64_BIASED_EXP_IS_MAX(f))
#define __LDOUBLE_SIGN_BIT_ZERO(f)           (__IEEE64_SIGN_BIT_ZERO(f))
#define __LDOUBLE_MANT_DIG                   (__IEEE64_MANT_DIG)
#endif

__BEGIN_DECLS

#if !defined(__TMS320C28XX_CLA__)

#if defined(__TMS320C6X__) || defined(__ARP32__) || defined(__PRU__)
/* c6xabi, arp32abi, and pruabi choose to put these functions in the
   ABI, giving them names like __c6xabi_isfinite (see elfnames.h).
   That's fine, but while GENERIC_MATH and FREEBSD_MATH share the same
   names, we'll run into some conflict.  Avoid this issue by undoing
   the elfnames.h aliases */
#undef __isfinite
#undef __isfinitef
#undef __isfinitel
#undef __isnan
#undef __isnanf
#undef __isnanl
#undef __isnormal
#undef __isnormalf
#undef __isnormall
#undef __isinf
#undef __isinff
#undef __isinfl
#undef __fpclassify
#undef __fpclassifyf
#undef __fpclassifyl
#endif /* __TMS320C6X__ || __ARP32__ || __PRU__ */

#include <_ti_config.h>

/* always inline these functions so that calls to them don't appear in
   an object file and become part of the ABI. */

_CODE_ACCESS _INLINE_DEFINITION int __isfinite(double d)
{ return __DOUBLE_BIASED_EXP_IS_MAX(d) == 0; }
_CODE_ACCESS _INLINE_DEFINITION int __isfinitef(float f)
{ return __FLOAT_BIASED_EXP_IS_MAX(f) == 0; }
_CODE_ACCESS _INLINE_DEFINITION int __isfinitel(long double e)
{ return __LDOUBLE_BIASED_EXP_IS_MAX(e) == 0; }

_CODE_ACCESS _INLINE_DEFINITION int __isnan(double d)
{ return __DOUBLE_BIASED_EXP_IS_MAX(d) &&
        (__DOUBLE_FRAC_PART_IS_ZERO(d) == 0); }
_CODE_ACCESS _INLINE_DEFINITION int __isnanf(float f)
{ return __FLOAT_BIASED_EXP_IS_MAX(f) &&
        (__FLOAT_FRAC_PART_IS_ZERO(f) == 0); }
_CODE_ACCESS _INLINE_DEFINITION int __isnanl(long double e)
{ return __LDOUBLE_BIASED_EXP_IS_MAX(e) &&
        (__LDOUBLE_FRAC_PART_IS_ZERO(e) == 0); }

_CODE_ACCESS _INLINE_DEFINITION int __isnormal(double d)
{ return (__DOUBLE_BIASED_EXP_IS_ZERO(d) == 0) &&
         (__DOUBLE_BIASED_EXP_IS_MAX(d) == 0); }

_CODE_ACCESS _INLINE_DEFINITION int __isnormalf(float f)
{ return (__FLOAT_BIASED_EXP_IS_ZERO(f) == 0) &&
         (__FLOAT_BIASED_EXP_IS_MAX(f) == 0); }

_CODE_ACCESS _INLINE_DEFINITION int __isnormall(long double e)
{ return (__LDOUBLE_BIASED_EXP_IS_ZERO(e) == 0) &&
         (__LDOUBLE_BIASED_EXP_IS_MAX(e) == 0); }

_CODE_ACCESS _INLINE_DEFINITION int __signbit(double d)
{ return __DOUBLE_SIGN_BIT_ZERO(d) == 0; }
_CODE_ACCESS _INLINE_DEFINITION int __signbitf(float f)
{ return __FLOAT_SIGN_BIT_ZERO(f) == 0; }
_CODE_ACCESS _INLINE_DEFINITION int __signbitl(long double e)
{ return __LDOUBLE_SIGN_BIT_ZERO(e) == 0; }

/* FreeBSD lib/libc/gen/isinf.c says "These routines belong in libm,
   but they must remain in libc for binary compat until we can bump
   libm's major version number" */

_CODE_ACCESS _INLINE_DEFINITION int __isinff(float f)
{ return __FLOAT_BIASED_EXP_IS_MAX(f) && __FLOAT_FRAC_PART_IS_ZERO(f); }
_CODE_ACCESS _INLINE_DEFINITION int __isinf (double d)
{ return __DOUBLE_BIASED_EXP_IS_MAX(d) && __DOUBLE_FRAC_PART_IS_ZERO(d); }
_CODE_ACCESS _INLINE_DEFINITION int __isinfl(long double e)
{ return __LDOUBLE_BIASED_EXP_IS_MAX(e) && __LDOUBLE_FRAC_PART_IS_ZERO(e); }

/* Symbolic constants to classify floating point numbers. */
#if defined(__ARM_ARCH) || defined(__MSP430__) || defined(__TMS320C2000__)
#define	__FP_INFINITE	1
#define	__FP_NAN	2
#define	__FP_NORMAL	(-1)
#define	__FP_SUBNORMAL	(-2)
#define	__FP_ZERO	0
#elif defined(__TMS320C6X__) || defined(__ARP32__) || defined(__PRU__) || defined(__C7000__)
#define	__FP_INFINITE	1
#define	__FP_NAN	2
#define	__FP_NORMAL	3
#define	__FP_SUBNORMAL	5
#define	__FP_ZERO	4
#endif

_CODE_ACCESS _INLINE_DEFINITION int __fpclassifyf(float f)
{
    if (__FLOAT_BIASED_EXP_IS_MAX(f))
    {
        if (__FLOAT_FRAC_PART_IS_ZERO(f))
            return __FP_INFINITE;
        else return __FP_NAN;
    }
    if (__FLOAT_BIASED_EXP_IS_ZERO(f))
    {
        if (__FLOAT_FRAC_PART_IS_ZERO(f))
            return __FP_ZERO;
        else return __FP_SUBNORMAL;
    }
    return __FP_NORMAL;
}

_CODE_ACCESS _INLINE_DEFINITION int __fpclassify (double d)
{
    if (__DOUBLE_BIASED_EXP_IS_MAX(d))
    {
        if (__DOUBLE_FRAC_PART_IS_ZERO(d))
            return __FP_INFINITE;
        else return __FP_NAN;
    }
    if (__DOUBLE_BIASED_EXP_IS_ZERO(d))
    {
        if (__DOUBLE_FRAC_PART_IS_ZERO(d))
            return __FP_ZERO;
        else return __FP_SUBNORMAL;
    }
    return __FP_NORMAL;
}

_CODE_ACCESS _INLINE_DEFINITION int __fpclassifyl(long double e)
{
    if (__LDOUBLE_BIASED_EXP_IS_MAX(e))
    {
        if (__LDOUBLE_FRAC_PART_IS_ZERO(e))
            return __FP_INFINITE;
        else return __FP_NAN;
    }
    if (__LDOUBLE_BIASED_EXP_IS_ZERO(e))
    {
        if (__LDOUBLE_FRAC_PART_IS_ZERO(e))
            return __FP_ZERO;
        else return __FP_SUBNORMAL;
    }
    return __FP_NORMAL;
}

#endif /* !defined(__TMS320C28XX_CLA__) */

__END_DECLS

/*
 * Relevant target macros indicating hardware float support
 *
 * all
 * 	__TI_STRICT_FP_MODE__
 * ARM
 *      __ARM_FP
 * C2000
 *      __TMS320C28XX_FPU32__
 *      __TMS320C28XX_FPU64__
 *      __TMS320C28XX_TMU__	adds div, sqrt, sin, cos, atan, atan2
 * C6000
 *      _TMS320C6700		indicates C67x or later
 */

#if ((defined(__ARM_ARCH) &&                    \
      defined(__ARM_FP))  ||          \
     defined(__TMS320C28XX_FPU32__) ||          \
     defined(__TMS320C28XX_FPU64__) ||          \
     defined(_TMS320C6700))
#define __TI_HAS_F32_HARDWARE 1
#else
#define __TI_HAS_F32_HARDWARE 0
#endif

#if ((defined(__ARM_FP) && __ARM_FP & 0x8) || \
     defined(__TMS320C28XX_FPU64__)        || \
     defined(_TMS320C6700))
#define __TI_HAS_F64_HARDWARE 1
#else
#define __TI_HAS_F64_HARDWARE 0
#endif

#if !defined(__clang__) && defined(__ARM_FP)
#define __TI_HAS_BUILTIN_SQRT32 1
#else
#define __TI_HAS_BUILTIN_SQRT32 0
#endif

#define __ti_builtin_sqrt32(x) __sqrtf(x)

#if !defined(__clang__) && defined(__ARM_FP) && __ARM_FP & 0x8
#define __TI_HAS_BUILTIN_SQRT64 1
#else
#define __TI_HAS_BUILTIN_SQRT64 0
#endif

#define __ti_builtin_sqrt64(x) __sqrt(x)

#pragma diag_pop

#endif /* _DEFS_H_ */

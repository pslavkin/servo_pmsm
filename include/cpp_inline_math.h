/*****************************************************************************/
/*  CPP_INLINE_MATH.H                                                        */
/*                                                                           */
/* Copyright (c) 1995 Texas Instruments Incorporated                         */
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
#ifndef _CPP_INLINE_MATH_H
#define _CPP_INLINE_MATH_H

#if defined(__cplusplus)

/*****************************************************************************/
/* These two inline functions for double, the other 23 should be default math*/
/* function defined in ANSI                                                  */
/*****************************************************************************/
inline double abs(double x)	// OVERLOADS
	{	// return absolute value
	return (fabs(x));
	}

inline double pow(double x, int y)
	{	// raise to integer power
	     return (pow(x, (double)y));
	}

/*****************************************************************************/
/* 24 float math functions defined by C++ ISO/IEC 14882 26.5                 */
/*****************************************************************************/
inline float acos(float x)
	{	// return arccosine
	return acosf(x);
	}

inline float asin(float x)
	{	// return arcsine
	return asinf(x);
	}

inline float atan(float x)
	{	// return arctangent
	return atanf(x);
	}

inline float atan2(float x, float y)
	{	// return arctangent
	return atan2f(x, y);
	}

inline float ceil(float x)
	{	// return ceiling
	return ceilf(x);
	}

inline float cos(float x)
	{	// return cosine
	return cosf(x);
	}

inline float cosh(float x)
	{	// return hyperbolic cosine
	return coshf(x);
	}

inline float exp(float x)
	{	// return exponential
	return expf(x);
	}

inline float fabs(float x)
	{	// return absolute value
	return fabsf(x);
	}

inline float floor(float x)
	{	// return floor
	return floorf(x);
	}

inline float fmod(float x, float y)
	{	// return modulus
	return fmodf(x, y);
	}

inline float frexp(float x, int *y)
	{	// unpack exponent
	return frexpf(x, y);
	}

inline float ldexp(float x, int y)
	{	// pack exponent
	return ldexpf(x, y);
	}

inline float log(float x)
	{	// return natural logarithm
	return logf(x);
	}

inline float log10(float x)
	{	// return base-10 logarithm
	return log10f(x);
	}

inline float modf(float x, float *y)
	{	// unpack fraction
	return modff(x, y);
	}

inline float pow(float x, float y)
	{	// raise to power
	return powf(x, y);
	}

inline float pow(float x, int y)
	{	// raise to integer power
	return powf(x, y);
	}

inline float sin(float x)
	{	// return sine
	return sinf(x);
	}

inline float sinh(float x)
	{	// return hyperbolic sine
	return sinhf(x);
	}

inline float sqrt(float x)
	{	// return square root
	return sqrtf(x);
	}

inline float tan(float x)
	{	// return tangent
	return tanf(x);
	}

inline float tanh(float x)
	{	// return hyperbolic tangent
	return tanhf(x);
	}

inline float abs(float x)	// OVERLOADS
	{	// return absolute value
	return fabsf(x);
	}

/*****************************************************************************/
/* 24 long double math functions defined by C++ ISO/IEC 14882 26.5           */
/*****************************************************************************/
inline long double acos(long double x)
	{	// return arccosine
	return acosl(x);
	}

inline long double asin(long double x)
	{	// return arcsine
	return asinl(x);
	}

inline long double atan(long double x)
	{	// return arctangent
	return atanl(x);
	}

inline long double atan2(long double x, long double y)
	{	// return arctangent
	return atan2l(x, y);
	}

inline long double ceil(long double x)
	{	// return ceiling
	return ceill(x);
	}

inline long double cos(long double x)
	{	// return cosine
	return cosl(x);
	}

inline long double cosh(long double x)
	{	// return hyperbolic cosine
	return coshl(x);
	}

inline long double exp(long double x)
	{	// return exponential
	return expl(x);
	}

inline long double fabs(long double x)
	{	// return absolute value
	return fabsl(x);
	}

inline long double floor(long double x)
	{	// return floor
	return floorl(x);
	}

inline long double fmod(long double x, long double y)
	{	// return modulus
	return fmodl(x, y);
	}

inline long double frexp(long double x, int *y)
	{	// unpack exponent
	return frexpl(x, y);
	}

inline long double ldexp(long double x, int y)
	{	// pack exponent
	return ldexpl(x, y);
	}

inline long double log(long double x)
	{	// return natural logarithm
	return logl(x);
	}

inline long double log10(long double x)
	{	// return base-10 logarithm
	return log10l(x);
	}

inline long double modf(long double x, long double *y)
	{	// unpack fraction
	return modfl(x, y);
	}

inline long double pow(long double x, long double y)
	{	// raise to power
	return powl(x, y);
	}

inline long double pow(long double x, int y)
	{	// raise to integer power
	return powl(x, y);
	}

inline long double sin(long double x)
	{	// return sine
	return sinl(x);
	}

inline long double sinh(long double x)
	{	// return hyperbolic sine
	return sinhl(x);
	}

inline long double sqrt(long double x)
	{	// return square root
	return sqrtl(x);
	}

inline long double tan(long double x)
	{	// return tangent
	return tanl(x);
	}

inline long double tanh(long double x)
	{	// return hyperbolic tangent
	return tanhl(x);
	}

inline long double abs(long double x)	// OVERLOADS
	{	// return absolute value
	return fabsl(x);
	}

#endif /* __cplusplus */

#endif /* _CPP_INLINE_MATH_H */

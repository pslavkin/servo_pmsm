/*
 * Copyright (c) 2015-2015 Texas Instruments Incorporated
 *
 * Copyright (c) 2004-2005 David Schultz <das@FreeBSD.ORG>
 * All rights reserved.
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
 * $FreeBSD$
 */

#ifndef	_FENV_H_
#define	_FENV_H_

#include <_defs.h>
#include <linkage.h>

#ifndef __fenv_static
#define __fenv_static   static __inline
#endif

typedef	__uint32_t	fenv_t;
typedef	__uint32_t	fexcept_t;

#if defined(__ARM_ARCH) || defined(__MSP430__) || defined(__TMS320C2000__)

/* exception flags */
#define	FE_INVALID	0x0001
#define	FE_DIVBYZERO	0x0004 /* warning: not the same as FreeBSD! */
#define	FE_OVERFLOW	0x0008 /* warning: not the same as FreeBSD! */
#define	FE_UNDERFLOW	0x0010 /* warning: not the same as FreeBSD! */
#define	FE_INEXACT	0x0020 /* warning: not the same as FreeBSD! */
/* rounding modes */
#define	FE_TONEAREST	0x0000
#define	FE_TOWARDZERO	0x0003 /* warning: not the same as FreeBSD! */
#define	FE_UPWARD	0x0002
#define	FE_DOWNWARD	0x0001 /* warning: not the same as FreeBSD! */
#else

/* exception flags */
#define	FE_INVALID	0x0001
#define	FE_DIVBYZERO	0x0002
#define	FE_OVERFLOW	0x0004
#define	FE_UNDERFLOW	0x0008
#define	FE_INEXACT	0x0010
/* rounding modes */
#define	FE_TONEAREST	0x0000
#define	FE_TOWARDZERO	0x0001
#define	FE_UPWARD	0x0002
#define	FE_DOWNWARD	0x0003

#endif

#define	FE_ALL_EXCEPT	(FE_DIVBYZERO | FE_INEXACT | \
			 FE_INVALID | FE_OVERFLOW | FE_UNDERFLOW)

#define	_ROUND_MASK	(FE_TONEAREST | FE_DOWNWARD | \
			 FE_UPWARD | FE_TOWARDZERO)
__BEGIN_DECLS

/* Default floating-point environment */

_DATA_ACCESS extern const fenv_t	__fe_dfl_env;

#define	FE_DFL_ENV	(&__fe_dfl_env)

__fenv_static int feclearexcept(int __excepts);
__fenv_static int fegetexceptflag(fexcept_t *__flagp, int __excepts);
__fenv_static int fesetexceptflag(const fexcept_t *__flagp, int __excepts);
__fenv_static int feraiseexcept(int __excepts);
__fenv_static int fetestexcept(int __excepts);
__fenv_static int fegetround(void);
__fenv_static int fesetround(int __round);
__fenv_static int fegetenv(fenv_t *__envp);
__fenv_static int feholdexcept(fenv_t *__envp);
__fenv_static int fesetenv(const fenv_t *__envp);
__fenv_static int feupdateenv(const fenv_t *__envp);

__END_DECLS

/*
  From the LSB:
  5 flag bits, one per exception
  5 mask bits, one per exception
  2 bits for the rounding mode in range [0..3]
 */
#define	__set_env(env, flags, mask, rnd) env = ((flags)		\
						| (mask)<< 5	\
						| (rnd) << 10)
#define	__env_flags(env)		((env) & FE_ALL_EXCEPT)
#define	__env_mask(env)			(((env) >> 5) & FE_ALL_EXCEPT)
#define	__env_round(env)		(((env) >> 10) & _ROUND_MASK)

#include "fenv-softfloat.h"

#endif	/* !_FENV_H_ */

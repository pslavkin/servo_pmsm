/*-
 * Copyright (c) 1982, 1986, 1989, 1991, 1993
 *	The Regents of the University of California.  All rights reserved.
 * (c) UNIX System Laboratories, Inc.
 * 
 * Copyright (c) 2014-2014 Texas Instruments Incorporated
 *
 * All or some portions of this file are derived from material licensed
 * to the University of California by American Telephone and Telegraph
 * Co. or Unix System Laboratories, Inc. and are reproduced herein with
 * the permission of UNIX System Laboratories, Inc.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 4. Neither the name of the University nor the names of its contributors
 *    may be used to endorse or promote products derived from this software
 *    without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE REGENTS AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE REGENTS OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 *
 *	@(#)signal.h	8.4 (Berkeley) 5/4/95
 * $FreeBSD: release/10.0.0/sys/sys/signal.h 233519 2012-03-26 19:12:09Z rmh $
 */
 
#ifndef _SIGNAL_H
#define _SIGNAL_H

#include <_ti_config.h>

#if defined(__cplusplus)
extern "C" {
#endif

_CODE_ACCESS int raise(int);

typedef void __sighandler_t(int);

#if __PRU__
/* Avoid warning by first converting to short */
#define SIG_DFL ((__sighandler_t *) (short)0)
#define SIG_IGN ((__sighandler_t *) (short)1)
#define SIG_ERR ((__sighandler_t *) (short)-1)
#else
#define SIG_DFL ((__sighandler_t *) 0)
#define SIG_IGN ((__sighandler_t *) 1)
#define SIG_ERR ((__sighandler_t *) -1)
#endif

#define SIGINT 2
#define SIGILL 4
#define SIGABRT 5
#define SIGFPE 8
#define SIGSEGV 11
#define SIGTERM 15

#define NSIG 32

_CODE_ACCESS __sighandler_t *signal(int s, __sighandler_t * t);

typedef int sig_atomic_t;

#if defined(__cplusplus)
}
#endif

#endif

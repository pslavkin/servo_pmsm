/*****************************************************************************/
/*  _tls.h                                                                   */
/*                                                                           */
/* Copyright (c) 2012 Texas Instruments Incorporated                         */
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
#ifndef __TLS_H
#define __TLS_H

#include <_ti_config.h>

#pragma diag_push
#pragma CHECK_MISRA("-19.4") /* macros required for implementation */
#pragma CHECK_MISRA("-19.7") /* macros required for implementation */
#pragma CHECK_MISRA("-19.10") /* need types as macro arguments */

/*****************************************************************************/
/* __TI_TLS__ - parser-generated symbol indicates compiler support for       */
/*              __thread qualifier and support for thread-local              */
/*              storage/addressing.                                          */
/*                                                                           */
/* __TI_USE_TLS - compile-time symbol to turn on usage of TLS in thread-safe */
/*                versions of the RTS                                        */
/*****************************************************************************/
#if defined(__TI_TLS__) && defined(__TI_USE_TLS)
#define __TI_TLS_QUAL __thread 
#else
#define __TI_TLS_QUAL
#endif


#define __TI_TLS_DATA_DECL(type, name) \
	extern __TI_TLS_QUAL _DATA_ACCESS type name

#define __TI_TLS_DATA_DEF(scope, type, name, init) \
	scope __TI_TLS_QUAL _DATA_ACCESS type name = init

#define __TI_TLS_DATA_PTR(name) \
	(&(name))

#define __TI_TLS_ARR_DEF(scope, type, name, elts) \
        scope __TI_TLS_QUAL _DATA_ACCESS type name[elts]

#define __TI_TLS_ARR(name) \
        (&(name[0]))

#pragma diag_pop

#endif /* __TLS_H */

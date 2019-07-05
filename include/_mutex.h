/*****************************************************************************/
/*  _mutex.h                                                                 */
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

#ifndef __MUTEX_H
#define __MUTEX_H

#include <_ti_config.h>
#include <stdio.h>

#ifdef __cplusplus
extern "C" {
#endif

/*****************************************************************************/
/* RTS Owned Mutexes - Public Interface                                      */
/*****************************************************************************/

/*****************************************************************************/
/* Resource Mutexes                                                          */
/*                                                                           */
/* RTS maintains an array of unique mutex handles for the shared global      */
/* resources that it needs to protect in a multi-threaded environment. Each  */
/* entry in the array is associated with a resource type (enumerated as      */
/* compile-time constants below).                                            */
/*****************************************************************************/
enum {
   __TI_LOCK_HEAP_ALLOC = 0,
   __TI_LOCK_FILE_TBL,
   __TI_LOCK_TMPNAM_COUNTER,
   __TI_LOCK_TMPNAMS,
   __TI_LOCK_DEVICE_TBL,
   __TI_LOCK_STREAM_TBL,
   __TI_LOCK_HOST_CIO,
   __TI_LOCK_ATEXIT,
   __TI_LOCK_RAND,
   __TI_LOCK_MAX
};

/****************************************************************************/
/* To enable use of recursive resource mutexes, the library builder must    */
/* define the "__TI_RECURSIVE_RESOURCE_MUTEXES" compile-time symbol.        */
/****************************************************************************/
#if !defined(__TI_RECURSIVE_RESOURCE_MUTEXES)
#include <_lock.h>
#define __TI_resource_lock(x)   _lock()
#define __TI_resource_unlock(x)   _unlock()
#define __TI_file_lock(x)   _lock()
#define __TI_file_unlock(x) _unlock()

#else /* defined(__TI_RECURSIVE_RESOURCE_MUTEXES) */
/*****************************************************************************/
/* Resource mutexes can be be locked or unlocked, given the resource ID.     */
/*****************************************************************************/
extern _CODE_ACCESS void __TI_resource_lock(int resource_id);
extern _CODE_ACCESS void __TI_resource_unlock(int resource_id);
extern _CODE_ACCESS void __TI_file_lock(FILE *fp);
extern _CODE_ACCESS void __TI_file_unlock(FILE *fp);
#endif /* defined(__TI_RECURSIVE_RESOURCE_MUTEXES) */

#ifdef __cplusplus
} /* extern "C" */
#endif

#endif /* __MUTEX_H */

/*****************************************************************************/
/*  _data_synch.h                                                            */
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

#ifndef _DATA_SYNCH_H
#define _DATA_SYNCH_H

#include <stddef.h>
#include <_ti_config.h>

#ifdef __cplusplus
extern "C" {
#endif

/*****************************************************************************/
/* In order to enable the data coherency API, the library build must define  */
/* the "__TI_SHARED_DATA_SYNCHRONIZATION" compile-time symbol.               */
/*****************************************************************************/
#if !defined(__TI_SHARED_DATA_SYNCHRONIZATION)
#define __TI_data_synch_INV(x, y)
#define __TI_data_synch_WB(x, y)
#define __TI_data_synch_WBINV(x, y)

#else /* defined(__TI_SHARED_DATA_SYNCHRONIZATION) */
/*****************************************************************************/
/* Data Synchronization Public API                                           */
/*                                                                           */
/* We provide a public API for data synchronization (coherence). There are   */
/* two types of synchronization used by the RTS: invalidate and write-back/  */
/* invalidate. The data synchronization API RTS use cases assume that a      */
/* given RTS-owned shared data object does not share a cache line with any   */
/* other object. As long as the RTS ensures that a thread's local copy of    */
/* a shared data object is invalidated before leaving the critical region    */
/* that protects access to that object, then the RTS can safely assume that  */
/* on entry into a given critical region, there is either no local copy      */
/* (in L1D cache, for example) of the shared data object that is going to be */
/* accessed, or the local copy of the shared data object is up-to-date (in   */
/* the case of a nested critical region). If the shared data object is       */
/* modified during a critical region, then the local copy of it must be      */
/* written back to shared memory AND invalidated before leaving the critical */
/* region.                                                                   */
/*                                                                           */
/* The assumed granularity of these synchronization functions is a cache     */
/* line. To enable this support, the underlying OS must register functions   */
/* that are implemented in the OS to effect the invalidation and write-back/ */
/* invalidate of cache lines that may contain a copy of a global shared data */
/* object.                                                                   */
/*                                                                           */
/* The anticipated use of these functions falls into the following use       */
/* cases:                                                                    */
/*                                                                           */
/* 1. Read/Write                                                             */
/*                                                                           */
/*    lock access to data;                                                   */
/*    read/write data;                                                       */
/*    __TI_data_synch_WBINV(data, size);                                     */
/*    unlock access to data;                                                 */
/*                                                                           */
/* 2. Read-Only                                                              */
/*                                                                           */
/*    lock access to data;                                                   */
/*    read data;                                                             */
/*    __TI_data_synch_INV(data, size);                                       */
/*    unlock access to data;                                                 */
/*                                                                           */
/* This model is *NOT* valid if it is possible that another shared data      */
/* object is sharing a cache line with all or part of the data that is       */
/* being accessed in a given use case.                                       */
/*                                                                           */
/* For more details, please see:                                             */
/*  syntaxerror.dal.design.ti.com/wiki/index.php/Tech:RTS_Data_Coherency_API */
/*                                                                           */
/*****************************************************************************/
/* NOTE: These functions only handle statically allocated global shared      */
/* objects that are owned by the RTS.                                        */
/*---------------------------------------------------------------------------*/
/* Two dynamically allocated shared objects are owned by the RTS, heap       */
/* memory packet list and dtor list. Should we have a separate function to   */
/* handle each of these? Can we have a special malloc() that allocates       */
/* from non-cacheable shared memory?                                         */
/*---------------------------------------------------------------------------*/
/* For the time being, make the following assumptions:                       */
/* - dynamic heap memory allocation is handled by the OS (on OpenMP, this    */
/*   means malloc() is provided by an XDC or IPC module and allocates out of */
/*   shared memory which has its own mutex and coherence (provided by XDC    */
/*   Memory module).                                                         */
/* - dtor list is never accessed from inside a parallel region               */
/*****************************************************************************/

/*****************************************************************************/
/* __TI_data_synch_INV() - invalidate the data cache copy of a data object   */
/*                         if it is currently in the data cache. The next    */
/*                         access to the data from the current thread will   */
/*                         be read from shared memory.                       */
/*****************************************************************************/
extern _CODE_ACCESS void __TI_data_synch_INV(void *ptr, size_t sz);

/*****************************************************************************/
/* __TI_data_synch_WB() - write-back the updated data cache copy of a data   */
/*                        object to shared memory. Subsequent read accesses  */
/*                        to the data from other threads should get the      */
/*                        updated value of the data from shared memory.      */
/*****************************************************************************/
extern _CODE_ACCESS void __TI_data_synch_WB(void *ptr, size_t sz);

/*****************************************************************************/
/* __TI_data_synch_WBINV() - write-back the updated data cache copy of a     */
/*                        data object to shared memory, then invalidate the  */
/*                        cache lines which contain that data object.        */
/*                        Subsequent read accesses to the data from other    */
/*                        threads will get the updated value of the data     */
/*                        from shared memory.                                */
/*****************************************************************************/
extern _CODE_ACCESS void __TI_data_synch_WBINV(void *ptr, size_t sz);

#endif /* defined(__TI_SHARED_DATA_SYNCHRONIZATION) */

#ifdef __cplusplus
} /* extern "C" */
#endif

#endif /* _DATA_CACHE_H */

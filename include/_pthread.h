/*****************************************************************************/
/*  pthread.h                                                                */
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

#ifndef __PTHREAD_H
#define __PTHREAD_H

#include <_ti_config.h>

#ifdef __cplusplus
extern "C" {
#endif

/*****************************************************************************/
/* POSIX Threads API - Subset                                                */
/*                                                                           */
/* Normally, an implementation of the POSIX Threads API functions would      */
/* be provided in a POSIX-compliant operating system. We provide a subset    */
/* of the POSIX Threads API here in support of bare-metal multi-threaded     */
/* applications. Single threaded applications should experience negligible   */
/* performance impact from the use of these functions which underly the      */
/* recursive mutex implementation.                                           */
/*****************************************************************************/

/*****************************************************************************/
/* Basic Mutex API - the recursive mutex implementation relies on 4 basic    */
/* functions from the POSIX Threads API which provide support for creation,  */
/* destruction, locking, and unlocking a given mutex.                        */
/*****************************************************************************/
typedef void *pthread_mutex_t;
typedef void  pthread_mutexattr_t;
 
extern _CODE_ACCESS int pthread_mutex_init(pthread_mutex_t *mutex, 
                                           const pthread_mutexattr_t *attr);
extern _CODE_ACCESS int pthread_mutex_destroy(pthread_mutex_t *mutex);
extern _CODE_ACCESS int pthread_mutex_lock(pthread_mutex_t *mutex);
extern _CODE_ACCESS int pthread_mutex_unlock(pthread_mutex_t *mutex);
  
/*****************************************************************************/
/* Thread Identification - the recursive mutex implementation relies on      */
/* being able to associate an owner thread with a given resource mutex that  */
/* has been locked. A given resource can be locked multiple times as long as */
/* each nested lock request is made on behalf of the same thread that owns   */
/* the lock on the mutex. To support this, the TI RTS will provide           */
/* implementations of the pthread_self() and pthread_equal() functions from  */
/* the POSIX Threads API.                                                    */
/*****************************************************************************/
typedef int pthread_t;

extern _CODE_ACCESS pthread_t pthread_self(void);
extern _CODE_ACCESS int       pthread_equal(pthread_t thread1, 
                                            pthread_t thread2);
    
/*****************************************************************************/
/* ONCE Function Support - the mutexes that are created and maintained by    */
/* the TI RTS use a pthread_once() function to create all needed mutexes     */
/* upon the request for the first lock of a mutex. The pthread_once()        */
/* function guarantees that the initialization function specified in the     */
/* second argument will only be executed once no matter how many times it    */
/* is called via the pthread_once() interface.                               */
/*****************************************************************************/
#define PTHREAD_ONCE_INIT       0
#define PTHREAD_ONCE_EXECUTED   1
     
typedef volatile int pthread_once_t;

extern _CODE_ACCESS int pthread_once(pthread_once_t *once_control,
                                     void          (*init_routine)(void));

#ifdef __cplusplus
} /* extern "C" */
#endif

#endif /* __PTHREAD_H */

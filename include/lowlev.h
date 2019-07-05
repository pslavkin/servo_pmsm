/*****************************************************************************/
/* LOWLEV.H                                                                  */
/*                                                                           */
/* Copyright (c) 2017 Texas Instruments Incorporated                         */
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

#ifndef _LOWLEV
#define _LOWLEV

#include <_mutex.h>
#include <_data_synch.h>
#include "file.h"

typedef struct {
   char           name[9];
   unsigned short flags;
   int 	  	  (*OPEN) (const char *path, unsigned flags, int llv_fd);
   int 	  	  (*CLOSE) (int dev_fd);
   int 	  	  (*READ) (int dev_fd, char *buf, unsigned count);
   int 	  	  (*WRITE) (int dev_fd, const char *buf, unsigned count);
   off_t 	  (*LSEEK) (int dev_fd, off_t offset, int origin);
   int 	  	  (*UNLINK) (const char *path);
   int 	  	  (*RENAME) (const char *old_name, const char *new_name);
} _DEVICE;
struct stream_info { _DEVICE *dev; int dfd; };

extern _DEVICE  _device[_NDEVICE];
extern struct stream_info _stream[_NSTREAM];

extern  _CODE_ACCESS _DEVICE *finddevice(const char *devname);
extern  _DEVICE *getdevice (const char **path);

#define stdevice (&_device[0]) /* Default device (host) */

#endif

/*****************************************************************************/
/* strings.h                                                                  */
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

#ifndef _STRINGS
#define _STRINGS

#include <string.h>
#include <_ti_config.h>


_IDECL int    bcmp(const void *, const void *, size_t);
_IDECL void   bcopy(const void *, void *, size_t);
_IDECL void   bzero(void *, size_t);
_CODE_ACCESS int    ffs(int);
_IDECL char  *index(const char *, int);
_IDECL char  *rindex(const char *, int);
_CODE_ACCESS int    strcasecmp(const char *, const char *);
_CODE_ACCESS int    strncasecmp(const char *, const char *, size_t);



#if defined(_INLINE) || defined(_STRINGS_IMPLEMENTATION)

#if defined(_INLINE) || defined(_BCMP)
_IDEFN int bcmp(const void *b1, const void *b2, size_t n)
{
   return memcmp(b1, b2, n);
}
#endif /* _INLINE || _BCMP */

#if defined(_INLINE) || defined(_BCOPY)
_IDEFN void bcopy(const void *src, void *dst, size_t n)
{
   memmove(dst, src, n);
}
#endif /* _INLINE || _BCOPY */

#if defined(_INLINE) || defined(_BZERO)
_IDEFN void bzero(void *b, size_t n)
{
   memset(b, 0, n);
}
#endif /* _INLINE || _BZERO */

#if defined(_INLINE) || defined(_INDEX)
_IDEFN char *index(const char *a, int b)
{
   return strchr(a, b);
}
#endif /* _INLINE || _INDEX */

#if defined(_INLINE) || defined(_RINDEX)
_IDEFN char *rindex(const char *a, int b)
{
   return strrchr( a, b);
}
#endif /* _INLINE || _RINDEX */

#endif /* _INLINE || _STRINGS_IMPLEMENTATION */
          
#endif /* _STRINGS */

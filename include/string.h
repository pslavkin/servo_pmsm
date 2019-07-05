/*****************************************************************************/
/* string.h                                                                  */
/*                                                                           */
/* Copyright (c) 1993 Texas Instruments Incorporated                         */
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

#ifndef _STRING_H_
#define _STRING_H_

#if defined(__TMS320C2000__)
#if defined(__TMS320C28XX_CLA__)
#error "Header file <string.h> not supported by CLA compiler"
#endif
#endif

#pragma diag_push
#pragma CHECK_MISRA("-6.3") /* standard types required for standard headers */
#pragma CHECK_MISRA("-19.1") /* #includes required for implementation */
#pragma CHECK_MISRA("-20.1") /* standard headers must define standard names */
#pragma CHECK_MISRA("-20.2") /* standard headers must define standard names */

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

#ifndef NULL
#define NULL 0
#endif

#ifndef _SIZE_T_DECLARED
#define _SIZE_T_DECLARED
#ifdef __clang__
typedef __SIZE_TYPE__ size_t;
#else
typedef __SIZE_T_TYPE__ size_t;
#endif
#endif

#include <_ti_config.h>

#pragma diag_push
#pragma CHECK_MISRA("-19.4") /* macros required for implementation */

#if defined(_OPTIMIZE_FOR_SPACE) && (defined(__ARM_ARCH) || 		\
				     defined(__TMS320C2000__)  ||       \
                                     defined(__MSP430__))
#define _OPT_IDECL
#else
#define _OPT_IDECL	_IDECL
#endif

#pragma diag_pop

_OPT_IDECL size_t  strlen(const char *string);

_OPT_IDECL char *strcpy(char * __restrict dest,
                        const char * __restrict src);
_OPT_IDECL char *strncpy(char * __restrict dest,
                         const char * __restrict src, size_t n);
_OPT_IDECL char *strcat(char * __restrict string1,
                        const char * __restrict string2);
_OPT_IDECL char *strncat(char * __restrict dest,
                         const char * __restrict src, size_t n);
_OPT_IDECL char *strchr(const char *string, int c);
_OPT_IDECL char *strrchr(const char *string, int c);

_OPT_IDECL int  strcmp(const char *string1, const char *string2);
_OPT_IDECL int  strncmp(const char *string1, const char *string2, size_t n);

_CODE_ACCESS int     strcoll(const char *string1, const char *_string2);
_CODE_ACCESS size_t  strxfrm(char * __restrict to,
                             const char * __restrict from, size_t n);
_CODE_ACCESS char   *strpbrk(const char *string, const char *chs);
_CODE_ACCESS size_t  strspn(const char *string, const char *chs);
_CODE_ACCESS size_t  strcspn(const char *string, const char *chs);
_CODE_ACCESS char   *strstr(const char *string1, const char *string2);
_CODE_ACCESS char   *strtok(char * __restrict str1,
                            const char * __restrict str2);
_CODE_ACCESS char   *strerror(int _errno);
_CODE_ACCESS char   *strdup(const char *string);


_CODE_ACCESS void   *memmove(void *s1, const void *s2, size_t n);
#pragma diag_push
#pragma CHECK_MISRA("-16.4") /* false positives due to builtin declarations */
_CODE_ACCESS void   *memcpy(void * __restrict s1,
                            const void * __restrict s2, size_t n);
#pragma diag_pop

_OPT_IDECL int     memcmp(const void *cs, const void *ct, size_t n);
_OPT_IDECL void   *memchr(const void *cs, int c, size_t n);

#if (defined(_TMS320C6X) && !defined(__C6X_MIGRATION__)) || \
    defined(__ARM_ARCH) || defined(__ARP32__) || defined(__C7000__)
_CODE_ACCESS void   *memset(void *mem, int ch, size_t length);
#else
_OPT_IDECL   void   *memset(void *mem, int ch, size_t length);
#endif

#if defined(__TMS320C2000__) && !defined(__TI_EABI__)

#ifndef __cplusplus

#pragma diag_push

/* keep macros as direct #defines and not function-like macros or function
   names surrounded by parentheses to support all original supported use cases
   including taking their address through the macros and prefixing with
   namespace macros */
#pragma CHECK_MISRA("-19.4")
#define far_memcpy __memcpy_ff
#define far_strcpy strcpy_ff

#pragma diag_pop

size_t    far_strlen(const char *s);
char     *strcpy_nf(char *s1, const char *s2);
char *strcpy_fn(char *s1, const char *s2);
char *strcpy_ff(char *s1, const char *s2);
char *far_strncpy(char *s1, const char *s2, size_t n);
char *far_strcat(char *s1, const char *s2);
char *far_strncat(char *s1, const char *s2, size_t n);
char *far_strchr(const char *s, int c);
char *far_strrchr(const char *s, int c);
int       far_strcmp(const char *s1, const char *s2);
int       far_strncmp(const char *s1, const char *s2, size_t n);
int       far_strcoll(const char *s1, const char *s2);
size_t    far_strxfrm(char *s1, const char *s2, size_t n);
char *far_strpbrk(const char *s1, const char *s2);
size_t    far_strspn(const char *s1, const char *s2);
size_t    far_strcspn(const char *s1, const char *s2);
char *far_strstr(const char *s1, const char *s2);
char *far_strtok(char *s1, const char *s2);
char *far_strerror(int _errno);
void *far_memmove(void *s1, const void *s2, size_t n);
void     *__memcpy_nf (void *_s1, const void *_s2, size_t _n);
void *__memcpy_fn (void *_s1, const void *_s2, size_t _n);
void *__memcpy_ff (void *_s1, const void *_s2, size_t _n);
int       far_memcmp(const void *s1, const void *s2, size_t n);
void *far_memchr(const void *s, int c, size_t n);
void *far_memset(void *s, int c, size_t n);
void *far_memlcpy(void *to, const void *from,
                        unsigned long n);
void *far_memlmove(void *to, const void *from,
                         unsigned long n);
#else /* __cplusplus */
long      far_memlcpy(long to, long from, unsigned long n);
long      far_memlmove(long to, long from, unsigned long n);
#endif /* __cplusplus */

#endif /* __TMS320C2000__ && !defined(__TI_EABI__) */

#ifdef __cplusplus
} /* extern "C" */
#endif /* __cplusplus */

#if defined(_INLINE) || defined(_STRING_IMPLEMENTATION)

#if (defined(_STRING_IMPLEMENTATION) ||					\
     !(defined(_OPTIMIZE_FOR_SPACE) && (defined(__ARM_ARCH) || 		\
					defined(__TMS320C2000__)  ||    \
                                        defined(__MSP430__))))

#pragma diag_push
#pragma CHECK_MISRA("-19.4") /* macros required for implementation */

#if (defined(_OPTIMIZE_FOR_SPACE) && (defined(__ARM_ARCH) || 		\
				      defined(__TMS320C2000__) ||       \
                                      defined(__MSP430__)))
#define _OPT_IDEFN
#else
#define _OPT_IDEFN	_IDEFN
#endif

#pragma diag_pop

#pragma diag_push /* functions */

/* MISRA exceptions to avoid changing inline versions of the functions that
   would be linked in instead of included inline at different mf levels */
/* these functions are very well-tested, stable, and efficient; it would
   introduce a high risk to implement new, separate MISRA versions just for the
   inline headers */

#pragma CHECK_MISRA("-5.7") /* keep names intact */
#pragma CHECK_MISRA("-6.1") /* false positive on use of char type */
#pragma CHECK_MISRA("-8.5") /* need to define inline functions */
#pragma CHECK_MISRA("-10.1") /* use implicit casts */
#pragma CHECK_MISRA("-10.3") /* need casts */
#pragma CHECK_MISRA("-11.5") /* casting away const required for standard impl */
#pragma CHECK_MISRA("-12.1") /* avoid changing expressions */
#pragma CHECK_MISRA("-12.2") /* avoid changing expressions */
#pragma CHECK_MISRA("-12.4") /* avoid changing expressions */
#pragma CHECK_MISRA("-12.5") /* avoid changing expressions */
#pragma CHECK_MISRA("-12.6") /* avoid changing expressions */
#pragma CHECK_MISRA("-12.13") /* ++/-- needed for reasonable implementation */
#pragma CHECK_MISRA("-13.1") /* avoid changing expressions */
#pragma CHECK_MISRA("-14.7") /* use multiple return points */
#pragma CHECK_MISRA("-14.8") /* use non-compound statements */
#pragma CHECK_MISRA("-14.9") /* use non-compound statements */
#pragma CHECK_MISRA("-17.4") /* pointer arithmetic needed for reasonable impl */
#pragma CHECK_MISRA("-17.6") /* false positive returning pointer-typed param */

#if defined(_INLINE) || defined(_STRLEN)
_OPT_IDEFN size_t strlen(const char *string)
{
   size_t      n = (size_t)-1;
   const char *s = string;

   do n++; while (*s++);
   return n;
}
#endif /* _INLINE || _STRLEN */

#if defined(_INLINE) || defined(_STRCPY)
_OPT_IDEFN char *strcpy(char * __restrict dest, const char * __restrict src)
{
     char       *d = dest;
     const char *s = src;

     while ((*d++ = *s++));
     return dest;
}
#endif /* _INLINE || _STRCPY */

#if defined(_INLINE) || defined(_STRNCPY)
_OPT_IDEFN char *strncpy(char * __restrict dest,
                         const char * __restrict src,
                         size_t n)
{
     if (n)
     {
	 char       *d = dest;
	 const char *s = src;
	 while ((*d++ = *s++) && --n);              /* COPY STRING         */
	 if (n-- > 1) do *d++ = '\0'; while (--n);  /* TERMINATION PADDING */
     }
     return dest;
}
#endif /* _INLINE || _STRNCPY  */

#if defined(_INLINE) || defined(_STRCAT)
_OPT_IDEFN char *strcat(char * __restrict string1,
                        const char * __restrict string2)
{
   char       *s1 = string1;
   const char *s2 = string2;

   while (*s1) s1++;		     /* FIND END OF STRING   */
   while ((*s1++ = *s2++));	     /* APPEND SECOND STRING */
   return string1;
}
#endif /* _INLINE || _STRCAT */

#if defined(_INLINE) || defined(_STRNCAT)
_OPT_IDEFN char *strncat(char * __restrict dest,
                         const char * __restrict src, size_t n)
{
    if (n)
    {
	char       *d = dest;
	const char *s = src;

	while (*d) d++;                      /* FIND END OF STRING   */

	while (n--)
	  if (!(*d++ = *s++)) return dest; /* APPEND SECOND STRING */
	*d = 0;
    }
    return dest;
}
#endif /* _INLINE || _STRNCAT */

#if defined(_INLINE) || defined(_STRCHR)
_OPT_IDEFN char *strchr(const char *string, int c)
{
   char        tch, ch  = c;
   const char *s        = string;

   for (;;)
   {
       if ((tch = *s) == ch) return (char *) s;
       if (!tch)             return (char *) 0;
       s++;
   }
}
#endif /* _INLINE || _STRCHR */

#if defined(_INLINE) || defined(_STRRCHR)
_OPT_IDEFN char *strrchr(const char *string, int c)
{
   char        tch, ch = c;
   char       *result  = 0;
   const char *s       = string;

   for (;;)
   {
      if ((tch = *s) == ch) result = (char *) s;
      if (!tch) break;
      s++;
   }

   return result;
}
#endif /* _INLINE || _STRRCHR */

#if defined(_INLINE) || defined(_STRCMP)
_OPT_IDEFN int strcmp(const char *string1, const char *string2)
{
   int c1, res;

   for (;;)
   {
       c1  = (unsigned char)*string1++;
       res = c1 - (unsigned char)*string2++;

       if (c1 == 0 || res != 0) break;
   }

   return res;
}
#endif /* _INLINE || _STRCMP */

#if defined(_INLINE) || defined(_STRNCMP)
_OPT_IDEFN int strncmp(const char *string1, const char *string2, size_t n)
{
     if (n)
     {
	 const char *s1 = string1;
	 const char *s2 = string2;
	 unsigned char cp;
	 int         result;

	 do
	    if ((result = (unsigned char)*s1++ - (cp = (unsigned char)*s2++)))
                return result;
	 while (cp && --n);
     }
     return 0;
}
#endif /* _INLINE || _STRNCMP */

#if defined(_INLINE) || defined(_MEMCMP)
_OPT_IDEFN int memcmp(const void *cs, const void *ct, size_t n)
{
   if (n)
   {
       const unsigned char *mem1 = (unsigned char *)cs;
       const unsigned char *mem2 = (unsigned char *)ct;
       int                 cp1, cp2;

       while ((cp1 = *mem1++) == (cp2 = *mem2++) && --n);
       return cp1 - cp2;
   }
   return 0;
}
#endif /* _INLINE || _MEMCMP */

#if defined(_INLINE) || defined(_MEMCHR)
_OPT_IDEFN void *memchr(const void *cs, int c, size_t n)
{
   if (n)
   {
      const unsigned char *mem = (unsigned char *)cs;
      unsigned char        ch  = c;

      do
         if ( *mem == ch ) return (void *)mem;
         else mem++;
      while (--n);
   }
   return NULL;
}
#endif /* _INLINE || _MEMCHR */

#if (((defined(_INLINE) || defined(_MEMSET)) && \
    !(defined(_TMS320C6X) && !defined(__C6X_MIGRATION__))) && \
    !defined(__ARM_ARCH) && !defined(__ARP32__) && !defined(__C7000__))
_OPT_IDEFN void *memset(void *mem, int ch, size_t length)
{
     char *m = (char *)mem;

     while (length--) *m++ = ch;
     return mem;
}
#endif /* _INLINE || _MEMSET */

#pragma diag_pop

#endif /* (_STRING_IMPLEMENTATION || !(_OPTIMIZE_FOR_SPACE && __ARM_ARCH)) */

#endif /* (_INLINE || _STRING_IMPLEMENTATION) */

/*----------------------------------------------------------------------------*/
/* If sys/cdefs.h is available, go ahead and include it. xlocale.h assumes    */
/* this file will have already included sys/cdefs.h.                          */
/*----------------------------------------------------------------------------*/
#if __has_include(<sys/cdefs.h>)
#include <sys/cdefs.h>
#endif

/*----------------------------------------------------------------------------*/
/* Include xlocale/_string.h> if POSIX is enabled. This will expose the       */
/* xlocale string interface.                                                  */
/*----------------------------------------------------------------------------*/
#if defined(_POSIX_VISIBLE) && _POSIX_VISIBLE >= 200809
__BEGIN_DECLS
#include <xlocale/_string.h>
__END_DECLS
#endif


#pragma diag_pop

#endif /* ! _STRING_H_ */

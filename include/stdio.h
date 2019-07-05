/*****************************************************************************/
/* STDIO.H                                                                   */
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
#ifndef _STDIO_H_
#define _STDIO_H_

#if defined(__TMS320C2000__)
#if defined(__TMS320C28XX_CLA__)
#error "Header file <stdio.h> not supported by CLA compiler"
#endif
#endif

#include <_ti_config.h>
#include <stdarg.h>

#pragma diag_push
#pragma CHECK_MISRA("-20.2") /* reuse of standard macros/objects/funcs */
#pragma CHECK_MISRA("-20.1") /* redefining reserved identifiers */
#pragma CHECK_MISRA("-19.7") /* use function instead of function-like macro */
#pragma CHECK_MISRA("-19.4") /* macros should have only simple expansions */
#pragma CHECK_MISRA("-19.1") /* include should follow directive or comment */
#pragma CHECK_MISRA("-16.3") /* parameters without names */
#pragma CHECK_MISRA("-6.3")  /* use size/sign-specific typedefs */

/*---------------------------------------------------------------------------*/
/* Attributes are only available in relaxed ANSI mode.                       */
/*---------------------------------------------------------------------------*/
#ifndef __ATTRIBUTE
#define __ATTRIBUTE(attr) __attribute__(attr)
#endif

#ifdef __cplusplus
extern "C" {
#endif

/****************************************************************************/
/* TYPES THAT ANSI REQUIRES TO BE DEFINED                                   */
/****************************************************************************/
#ifndef _SIZE_T_DECLARED
#define _SIZE_T_DECLARED
#ifdef __clang__
typedef __SIZE_TYPE__ size_t;
#else
typedef __SIZE_T_TYPE__ size_t;
#endif
#endif

struct __sFILE {
      int fd;                    /* File descriptor */
      unsigned char* buf;        /* Pointer to start of buffer */
      unsigned char* pos;        /* Position in buffer */
      unsigned char* bufend;     /* Pointer to end of buffer */
      unsigned char* buff_stop;  /* Pointer to last read char in buffer */
      unsigned int   flags;      /* File status flags (see below) */
};

#ifndef _STDFILE_DECLARED
#define _STDFILE_DECLARED
typedef struct __sFILE FILE;
#endif

#ifndef _FPOS_T
#define _FPOS_T
#if defined(_AEABI_PORTABILITY_LEVEL) && _AEABI_PORTABILITY_LEVEL != 0
typedef struct __fpos_t_struct {
    unsigned long long __pos;
    struct {
        unsigned int __state1, __state2;
    } __mbstate;
} fpos_t;
#elif !defined(__C6X_MIGRATION__) && (defined(_TMS320C6X) || defined(__TMS320C6X__))
typedef int fpos_t;
#else
typedef long fpos_t;
#endif /* c6x */
#endif /* _FPOS_T */

/****************************************************************************/
/* DEVICE AND STREAM RELATED MACROS                                         */
/****************************************************************************/
/****************************************************************************/
/* MACROS THAT DEFINE AND USE FILE STATUS FLAGS                             */
/****************************************************************************/
#if defined(_AEABI_PORTABILITY_LEVEL) && _AEABI_PORTABILITY_LEVEL != 0
extern FILE *__aeabi_stdin, *__aeabi_stdout, *__aeabi_stderr;
#define stdin  (__aeabi_stdin)
   /* pointer to a FILE object associated with standard input stream */
#define stdout (__aeabi_stdout)
   /* pointer to a FILE object associated with standard output stream */
#define stderr (__aeabi_stderr)
   /* pointer to a FILE object associated with standard error stream */
extern const int __aeabi_IOFBF;
#define _IOFBF (__aeabi_IOFBF)
extern const int __aeabi_IONBF;
#define _IONBF (__aeabi_IONBF)
extern const int __aeabi_IOLBF;
#define _IOLBF (__aeabi_IOLBF)
extern const int __aeabi_BUFSIZ;
#define BUFSIZ (__aeabi_BUFSIZ)
extern const int __aeabi_FOPEN_MAX;
#define FOPEN_MAX (__aeabi_FOPEN_MAX)
extern const int __aeabi_TMP_MAX;
#define TMP_MAX (__aeabi_TMP_MAX)
extern const int __aeabi_FILENAME_MAX;
#define FILENAME_MAX (__aeabi_FILENAME_MAX)
extern const int __aeabi_L_tmpnam;
#define L_tmpnam (__aeabi_L_tmpnam)

#else /* _AEABI_PORTABILITY_LEVEL */

#define _IOFBF       0x0001
#define _IOLBF       0x0002
#define _IONBF       0x0004
#define _BUFFALOC    0x0008
#define _MODER       0x0010
#define _MODEW       0x0020
#define _MODERW      0x0040
#define _MODEA       0x0080
#define _MODEBIN     0x0100
#define _STATEOF     0x0200
#define _STATERR     0x0400
#define _UNGETC      0x0800
#define _TMPFILE     0x1000

#define _SET(_fp, _b)      (((_fp)->flags) |= (_b))
#define _UNSET(_fp, _b)    (((_fp)->flags) &= ~(_b))
#define _STCHK(_fp, _b)    (((_fp)->flags) & (_b))
#define _BUFFMODE(_fp)     (((_fp)->flags) & (_IOFBF | _IOLBF | _IONBF))
#define _ACCMODE(_fp)      (((_fp)->flags) & (_MODER | _MODEW))

/****************************************************************************/
/* MACROS THAT ANSI REQUIRES TO BE DEFINED                                  */
/****************************************************************************/
#define BUFSIZ          256

#define FOPEN_MAX       _NFILE
#define FILENAME_MAX    256
#define TMP_MAX         65535

#define stdin     (&_ftable[0])
#define stdout    (&_ftable[1])
#define stderr    (&_ftable[2])

#define L_tmpnam  _LTMPNAM

#endif /* _AEABI_PORTABILITY_LEVEL */

#define SEEK_SET  (0x0000)
#define SEEK_CUR  (0x0001)
#define SEEK_END  (0x0002)

#ifndef NULL
#define NULL 0
#endif

#ifndef EOF
#define EOF    (-1)
#endif

/******** END OF ANSI MACROS ************************************************/

#define P_tmpdir        ""                   /* Path for temp files         */

/****************************************************************************/
/* DEVICE AND STREAM RELATED DATA STRUCTURES AND MACROS                     */
/****************************************************************************/
#if defined(__TMS320C6X__)
#define _NFILE           20                   /* Max number of files open   */
#else
#define _NFILE           10                   /* Max number of files open   */
#endif
#define _LTMPNAM         16                   /* Length of temp name        */

extern _DATA_ACCESS FILE _ftable[_NFILE];
extern _DATA_ACCESS char __TI_tmpnams[_NFILE][_LTMPNAM];

/****************************************************************************/
/*   FUNCTION DEFINITIONS  - ANSI                                           */
/****************************************************************************/
/****************************************************************************/
/* OPERATIONS ON FILES                                                      */
/****************************************************************************/
extern _CODE_ACCESS int     remove(const char *_file);
extern _CODE_ACCESS int     rename(const char *_old, const char *_new);
extern _CODE_ACCESS FILE   *tmpfile(void);
extern _CODE_ACCESS char   *tmpnam(char *_s);

/****************************************************************************/
/* FILE ACCESS FUNCTIONS                                                    */
/****************************************************************************/
extern _CODE_ACCESS int     fclose(FILE * __restrict _fp);
extern _CODE_ACCESS FILE   *fopen(const char * __restrict _fname,
                                  const char * __restrict _mode);
extern _CODE_ACCESS FILE   *freopen(const char * __restrict _fname,
                                    const char * __restrict _mode,
			            FILE * __restrict _fp);
extern _CODE_ACCESS void    setbuf(FILE * __restrict _fp,
                                   char * __restrict _buf);
extern _CODE_ACCESS int     setvbuf(FILE * __restrict _fp,
                                    char * __restrict _buf,
			            int _type, size_t _size);
extern _CODE_ACCESS int     fflush(FILE *_fp);

/****************************************************************************/
/* FORMATTED INPUT/OUTPUT FUNCTIONS                                         */
/****************************************************************************/
extern _CODE_ACCESS int fprintf(FILE * __restrict _fp,
                                const char * __restrict _format, ...)
               __ATTRIBUTE ((__format__ (__printf__, 2, 3)));
extern _CODE_ACCESS int fscanf(FILE * __restrict _fp,
                               const char * __restrict _fmt, ...)
               __ATTRIBUTE ((__format__ (__scanf__, 2, 3)));
extern _CODE_ACCESS int printf(const char * __restrict _format, ...)
               __ATTRIBUTE ((__format__ (__printf__, 1, 2)));
extern _CODE_ACCESS int scanf(const char * __restrict _fmt, ...)
               __ATTRIBUTE ((__format__ (__scanf__, 1, 2)));
extern _CODE_ACCESS int sprintf(char * __restrict _string,
                                const char * __restrict _format, ...)
               __ATTRIBUTE ((__format__ (__printf__, 2, 3)));
extern _CODE_ACCESS int snprintf(char * __restrict _string, size_t _n,
				 const char * __restrict _format, ...)
               __ATTRIBUTE ((__format__ (__printf__, 3, 4)));
extern _CODE_ACCESS int sscanf(const char * __restrict _str,
                               const char * __restrict _fmt, ...)
               __ATTRIBUTE ((__format__ (__scanf__, 2, 3)));
extern _CODE_ACCESS int vfprintf(FILE * __restrict _fp,
                                 const char * __restrict _format, va_list _ap)
               __ATTRIBUTE ((__format__ (__printf__, 2, 0)));
extern _CODE_ACCESS int vfscanf(FILE * __restrict _fp,
                                const char * __restrict _fmt, va_list _ap)
               __ATTRIBUTE ((__format__ (__scanf__, 2, 0)));
extern _CODE_ACCESS int vprintf(const char * __restrict _format, va_list _ap)
               __ATTRIBUTE ((__format__ (__printf__, 1, 0)));
extern _CODE_ACCESS int vscanf(const char * __restrict _format, va_list _ap)
               __ATTRIBUTE ((__format__ (__scanf__, 1, 0)));
extern _CODE_ACCESS int vsprintf(char * __restrict _string,
                                 const char * __restrict _format, va_list _ap)
               __ATTRIBUTE ((__format__ (__printf__, 2, 0)));
extern _CODE_ACCESS int vsnprintf(char * __restrict _string, size_t _n,
				  const char * __restrict _format, va_list _ap)
               __ATTRIBUTE ((__format__ (__printf__, 3, 0)));
extern _CODE_ACCESS int vsscanf(const char * __restrict _str,
                                const char * __restrict _fmt, va_list _ap)
               __ATTRIBUTE ((__format__ (__scanf__, 2, 0)));
extern _CODE_ACCESS int	asprintf(char **, const char *, ...)
               __ATTRIBUTE ((__format__ (__printf__, 2, 3)));
extern _CODE_ACCESS int	vasprintf(char **, const char *, va_list)
               __ATTRIBUTE ((__format__ (__printf__, 2, 0)));

/****************************************************************************/
/* CHARACTER INPUT/OUTPUT FUNCTIONS                                         */
/****************************************************************************/
extern _CODE_ACCESS int     fgetc(FILE *_fp);
extern _CODE_ACCESS char   *fgets(char * __restrict _ptr, int _size,
				  FILE * __restrict _fp);
extern _CODE_ACCESS int     fputc(int _c, FILE *_fp);
extern _CODE_ACCESS int     fputs(const char * __restrict _ptr,
                                  FILE * __restrict _fp);
extern _CODE_ACCESS int     getc(FILE *_p);
extern _CODE_ACCESS int     getchar(void);
extern _CODE_ACCESS char   *gets(char *_ptr);
extern _CODE_ACCESS int     putc(int _x, FILE *_fp);
extern _CODE_ACCESS int     putchar(int _x);
extern _CODE_ACCESS int     puts(const char *_ptr);
extern _CODE_ACCESS int     ungetc(int _c, FILE *_fp);

/****************************************************************************/
/* DIRECT INPUT/OUTPUT FUNCTIONS                                            */
/****************************************************************************/
extern _CODE_ACCESS size_t  fread(void * __restrict _ptr,
                                  size_t _size, size_t _count,
				  FILE * __restrict _fp);
extern _CODE_ACCESS size_t  fwrite(const void * __restrict _ptr,
                                   size_t _size, size_t _count,
                                   FILE * __restrict _fp);

/****************************************************************************/
/* FILE POSITIONING FUNCTIONS                                               */
/****************************************************************************/
extern _CODE_ACCESS int     fgetpos(FILE * __restrict _fp,
                                    fpos_t * __restrict _pos);
extern _CODE_ACCESS int     fseek(FILE *_fp, long _offset,
				  int _ptrname);
extern _CODE_ACCESS int     fsetpos(FILE * __restrict _fp,
                                    const fpos_t * __restrict _pos);
extern _CODE_ACCESS long    ftell(FILE *_fp);
extern _CODE_ACCESS void    rewind(FILE *_fp);

/****************************************************************************/
/* ERROR-HANDLING FUNCTIONS                                                 */
/****************************************************************************/
extern _CODE_ACCESS void    clearerr(FILE *_fp);
extern _CODE_ACCESS int     feof(FILE *_fp);
extern _CODE_ACCESS int     ferror(FILE *_fp);
extern _CODE_ACCESS void    perror(const char *_s);

#define _getchar()      getc(stdin)
#define _putchar(_x)    putc((_x), stdout)
#define _clearerr(_fp)   ((void) ((_fp)->flags &= ~(_STATERR | _STATEOF)))

#define _ferror(_x)     ((_x)->flags & _STATERR)

#define _remove(_fl)    (unlink((_fl)))

#ifdef __cplusplus
} /* extern "C" */
#endif  /* __cplusplus */

#pragma diag_pop

#if defined(_AEABI_PORTABILITY_LEVEL) && _AEABI_PORTABILITY_LEVEL != 0 && \
   !defined(_AEABI_PORTABLE)
#define _AEABI_PORTABLE
#endif

/*----------------------------------------------------------------------------*/
/* If sys/cdefs.h is available, go ahead and include it. xlocale.h assumes    */
/* this file will have already included sys/cdefs.h.                          */
/*----------------------------------------------------------------------------*/
#if __has_include(<sys/cdefs.h>)
#include <sys/cdefs.h>
#endif

/*----------------------------------------------------------------------------*/
/* Include xlocale/_stdio.h if xlocale.h has already been included. This is   */
/* to conform with FreeBSD's xlocale implementation.                          */
/*----------------------------------------------------------------------------*/
#ifdef _XLOCALE_H_
__BEGIN_DECLS
#include <xlocale/_stdio.h>
__END_DECLS
#endif

#endif  /* #ifndef _STDIO_H_ */

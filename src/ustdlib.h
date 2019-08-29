#ifndef USTDLIB_H
#define USTDLIB_H

//*****************************************************************************
//
// Include the standard C headers upon which these replacements are based.
//
//*****************************************************************************
#include <stdarg.h>
#include <time.h>
#include <stdint.h>


//*****************************************************************************
//
// Prototypes for the APIs.
//
//*****************************************************************************
extern char*               ctohex       ( char* Bcd,uint16_t Bin                                                 );
extern uint16_t            hextoc       ( char* Bcd                                                              );
extern char*               ftostr       ( float fVal,char* str,uint16_t size                                     );
extern void                ulocaltime   ( time_t timer, struct tm *tm                                            );
extern time_t              umktime      ( struct tm *timeptr                                                     );
extern int                 urand        ( void                                                                   );
extern int                 usnprintf    ( char * restrict s, size_t n, const char * restrict format, ...         );
extern int                 usprintf     ( char * restrict s, const char * restrict format, ...                   );
extern void                usrand       ( unsigned int seed                                                      );
extern int                 ustrcasecmp  ( const char *s1, const char *s2                                         );
extern int                 ustrcmp      ( const char *s1, const char *s2                                         );
extern size_t              ustrlen      ( const char *s                                                          );
extern int                 ustrncasecmp ( const char *s1, const char *s2, size_t n                               );
extern int                 ustrncmp     ( const char *s1, const char *s2, size_t n                               );
extern char*               ustrncpy     ( char * restrict s1, const char * restrict s2, size_t n                 );
extern char*               ustrstr      ( const char *s1, const char *s2                                         );
extern float               ustrtof      ( const char * restrict nptr, const char ** restrict endptr              );
extern int                 uvsnprintf   ( char * restrict s, size_t n, const char * restrict format, va_list arg );
extern unsigned long int   ustrtoul     ( const char * restrict nptr, const char ** restrict endptr, int base    );

#endif

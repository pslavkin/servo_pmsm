/*****************************************************************************/
/* _AUTO_INIT()          - Perform initialization of C variables.            */
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
#ifndef _TI_AUTO_INIT_H
#define _TI_AUTO_INIT_H

#include <_ti_config.h>
#include <cpy_tbl.h>
#include <inttypes.h>
#include <string.h>

typedef void (*pinit_fn_t)(void);

#if defined(__TI_EABI__) || defined(__ARM_EABI__)

/*****************************************************************************/
/* EABI declarations                                                         */
/*****************************************************************************/

#if defined(__MSP430__) && \
    defined(__LARGE_CODE_MODEL__) && !defined(__LARGE_DATA_MODEL__)
    typedef void (*handler_fn_t)(unsigned long in, unsigned long out);
#else
    typedef void (*handler_fn_t)(char const *in, char *out);
#endif

extern __attribute__((weak)) _DATA_ACCESS
    handler_fn_t const __TI_Handler_Table_Base[];
extern __attribute__((weak)) _DATA_ACCESS
    handler_fn_t const __TI_Handler_Table_Limit[];

extern __attribute__((weak)) _DATA_ACCESS char *const __TI_CINIT_Base[];
extern __attribute__((weak)) _DATA_ACCESS char *const __TI_CINIT_Limit[];

#if defined(_TMS320C6X)
    extern void  __TI_tls_init(void *TLS_block_addr);
#endif

#if defined(__ARM_ARCH)
    #define PINIT_BASE SHT$$INIT_ARRAY$$Base
    #define PINIT_LIMIT SHT$$INIT_ARRAY$$Limit
#else
    #define PINIT_BASE __TI_INITARRAY_Base
    #define PINIT_LIMIT __TI_INITARRAY_Limit
#endif

extern __attribute__((weak)) _DATA_ACCESS pinit_fn_t const PINIT_BASE[];
extern __attribute__((weak)) _DATA_ACCESS pinit_fn_t const PINIT_LIMIT[];

#if !defined(_TMS320C6X) && !defined(__ARM_ARCH)
extern __attribute__((weak)) _DATA_ACCESS COPY_TABLE const __TI_BINIT_Base[];
extern __attribute__((weak)) _DATA_ACCESS COPY_TABLE const __TI_BINIT_Limit[];
#else
/* C6000 and ARM still use old-style binit symbol to preserve compatibility */
extern _DATA_ACCESS COPY_TABLE const __binit__[];
#endif

#else

/*****************************************************************************/
/* COFF/TI ABI declarations                                                  */
/*****************************************************************************/

extern _DATA_ACCESS char *const __cinit__[];
extern _DATA_ACCESS pinit_fn_t const __pinit__[];
extern _DATA_ACCESS COPY_TABLE const __binit__[];

#endif

/*****************************************************************************/
/* Common declarations                                                       */
/*****************************************************************************/

#ifdef _TMS320C6X
    #define AUTO_INIT _auto_init_elf
#elif defined(__MSP430__)
    #define AUTO_INIT _auto_init
#else
    #define AUTO_INIT __TI_auto_init
#endif

void AUTO_INIT(void);

/******************************************************************************/
/* Macros to help form the name of the auto init function that holds the      */
/* watchdog timer.                                                            */
/******************************************************************************/
#define AUTO_INIT_HOLD_WDT_CONCAT2(NAME) NAME ## _hold_wdt
#define AUTO_INIT_HOLD_WDT_CONCAT(NAME) AUTO_INIT_HOLD_WDT_CONCAT2(NAME)
#define AUTO_INIT_HOLD_WDT AUTO_INIT_HOLD_WDT_CONCAT(AUTO_INIT)

static __inline __attribute__((always_inline)) void run_binit(void)
{
#if defined(__TI_EABI__) && !defined(_TMS320C6X) && !defined(__ARM_ARCH)
   /*------------------------------------------------------------------------*/
   /* Process binit table                                                    */
   /*------------------------------------------------------------------------*/

   if(__TI_BINIT_Base != __TI_BINIT_Limit)
      copy_in((COPY_TABLE *)__TI_BINIT_Base);
#else
   /*------------------------------------------------------------------------*/
   /* Process old-style binit table                                          */
   /*                                                                        */
   /* -1 indicates no table, otherwise just call copy_in(), which handles    */
   /* all the copying even if in compressed format.                          */
   /*------------------------------------------------------------------------*/

    if (__binit__ != (COPY_TABLE *)-1)
       copy_in((COPY_TABLE *)__binit__);
#endif
}

/*****************************************************************************/
/* cinit */
/*****************************************************************************/

static __inline __attribute__((always_inline)) void run_cinit(void)
{
#if defined(__TI_EABI__) && \
    defined(__MSP430__) && \
    defined(__LARGE_CODE_MODEL__) && !defined(__LARGE_DATA_MODEL__)
   /*------------------------------------------------------------------------*/
   /* Process the compressed ELF cinit table. The format is as follows:      */
   /* |4-byte load addr|4-byte run addr|                                     */
   /* |4-byte load addr|4-byte run addr|                                     */
   /*                                                                        */
   /* Processing steps:                                                      */
   /*   1. Read load and run address.                                        */
   /*   2. Read one byte at load address, say idx.                           */
   /*   3. Get pointer to handler at handler_start[idx]                      */
   /*   4. call handler(load_addr + 1, run_addr)                             */
   /*------------------------------------------------------------------------*/
   if (__TI_Handler_Table_Base != __TI_Handler_Table_Limit)
   {
      unsigned long const *table_ptr   = (unsigned long const *)__TI_CINIT_Base;
      unsigned long const *table_limit = (unsigned long const *)__TI_CINIT_Limit;

      while (table_ptr != table_limit)
      {
        unsigned long load_addr   = *table_ptr++;
        unsigned long run_addr    = *table_ptr++;
        unsigned char handler_idx = __data20_read_char(load_addr++);

        handler_fn_t handler = __TI_Handler_Table_Base[handler_idx];
        handler(load_addr, run_addr);
      }
   }
#elif defined(__TI_EABI__) || defined(__ARM_EABI__)
   /*------------------------------------------------------------------------*/
   /* Process the compressed ELF cinit table. The format is as follows:      */
   /* |4-byte load addr|4-byte run addr|                                     */
   /* |4-byte load addr|4-byte run addr|                                     */
   /*                                                                        */
   /* Processing steps:                                                      */
   /*   1. Read load and run address.                                        */
   /*   2. Read one byte at load address, say idx.                           */
   /*   3. Get pointer to handler at handler_start[idx]                      */
   /*   4. call handler(load_addr + 1, run_addr)                             */
   /*------------------------------------------------------------------------*/
   if (&__TI_Handler_Table_Base != &__TI_Handler_Table_Limit)
   {
      char *const *table_ptr   = __TI_CINIT_Base;
      char *const *table_limit = __TI_CINIT_Limit;

      while (table_ptr != table_limit)
      {
        char const *load_addr   = *table_ptr++;
        char       *run_addr    = *table_ptr++;
        char        handler_idx = *load_addr++;

        handler_fn_t handler = __TI_Handler_Table_Base[handler_idx];
        handler(load_addr, run_addr);
      }
   }
#else
   /*------------------------------------------------------------------------*/
   /* Process Cinit table for COFF.                                          */
   /*------------------------------------------------------------------------*/

    #ifdef _TMS320C6X
        #define ALIGN_TYPE uintptr_t
        #define ALIGN_MASK 0x7
    #elif defined(__MSP430__)
        #ifdef __LARGE_DATA_MODEL__
            #define ALIGN_TYPE unsigned long
        #else
            #define ALIGN_TYPE unsigned
        #endif
        #define ALIGN_MASK 0x1
    #else
        #define ALIGN_TYPE uintptr_t
        #define ALIGN_MASK 0x3
    #endif

    #define ALIGN_PTR(ptr) \
       ((unsigned const *)(((ALIGN_TYPE)ptr + ALIGN_MASK) & ~ALIGN_MASK))

   unsigned const *recptr = (unsigned const *)__cinit__;
   int length;

   if (recptr != (unsigned *)-1)
      while ((length = *recptr++) != 0)
      {
#if defined(__MSP430__) && defined(__LARGE_DATA_MODEL__)
	 char *to = (void *)*(unsigned long const *)recptr;
	 recptr += 2;
#else
	 char *to = (void *)*recptr++;
#endif

	 char *from = (void *)recptr;

	 memcpy(to, from, length);

	 from += length;
	 recptr = ALIGN_PTR(from);
      }
#endif
}

/*****************************************************************************/
/* pinit */
/*****************************************************************************/
static __inline __attribute__((always_inline)) void run_pinit(void)
{
#if defined(__TI_EABI__) || defined(__ARM_EABI__)
   /*------------------------------------------------------------------------*/
   /* Process Pinit table for ELF.                                           */
   /* The section is not NULL terminated, but can be accessed by pointers    */
   /* which point to the beginning and end of the section.                   */
   /*------------------------------------------------------------------------*/
   if (PINIT_BASE != PINIT_LIMIT)
   {
      int i = 0;
      while (&(PINIT_BASE[i]) != PINIT_LIMIT)
         PINIT_BASE[i++]();
   }
#else
   /*------------------------------------------------------------------------*/
   /* Process Pinit table.                                                   */
   /* consists of pointers to init functions.                                */
   /* section is NULL terminated                                             */
   /* pointer is = -1 if section does not exist.                             */
   /*------------------------------------------------------------------------*/
   if (__pinit__ != (pinit_fn_t *)-1)
   {
      int i = 0;
      while (__pinit__[i] != NULL)
         __pinit__[i++]();
   }
#endif
}

#endif

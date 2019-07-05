/****************************************************************************/
/*  _FMT_SPECIFIER.H                                                        */
/*                                                                          */
/* Copyright (c) 2006 Texas Instruments Incorporated                        */
/* http://www.ti.com/                                                       */
/*                                                                          */
/*  Redistribution and  use in source  and binary forms, with  or without   */
/*  modification,  are permitted provided  that the  following conditions   */
/*  are met:                                                                */
/*                                                                          */
/*     Redistributions  of source  code must  retain the  above copyright   */
/*     notice, this list of conditions and the following disclaimer.        */
/*                                                                          */
/*     Redistributions in binary form  must reproduce the above copyright   */
/*     notice, this  list of conditions  and the following  disclaimer in   */
/*     the  documentation  and/or   other  materials  provided  with  the   */
/*     distribution.                                                        */
/*                                                                          */
/*     Neither the  name of Texas Instruments Incorporated  nor the names   */
/*     of its  contributors may  be used to  endorse or  promote products   */
/*     derived  from   this  software  without   specific  prior  written   */
/*     permission.                                                          */
/*                                                                          */
/*  THIS SOFTWARE  IS PROVIDED BY THE COPYRIGHT  HOLDERS AND CONTRIBUTORS   */
/*  "AS IS"  AND ANY  EXPRESS OR IMPLIED  WARRANTIES, INCLUDING,  BUT NOT   */
/*  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR   */
/*  A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT   */
/*  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,   */
/*  SPECIAL,  EXEMPLARY,  OR CONSEQUENTIAL  DAMAGES  (INCLUDING, BUT  NOT   */
/*  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,   */
/*  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY   */
/*  THEORY OF  LIABILITY, WHETHER IN CONTRACT, STRICT  LIABILITY, OR TORT   */
/*  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE   */
/*  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.    */
/*                                                                          */
/****************************************************************************/
/* 7.8.1 Macros for format specifiers */

#if defined(_TMS320C6X) || defined(__ARM_ARCH) || defined(__MSP430__) || \
    defined(__ARP32__)  || defined(__TMS320C55X_PLUS_BYTE__)          || \
    defined(__PRU__)    || defined(__C7000__)
#define PRId8 		"hhd"
#define PRIi8 		"hhi"
#define PRIo8 		"hho"
#define PRIu8 		"hhu"
#define PRIx8 		"hhx"
#define PRIX8 		"hhX"
#define SCNd8 		"hhd"
#define SCNi8 		"hhi"
#define SCNo8 		"hho"
#define SCNu8 		"hhu"
#define SCNx8 		"hhx"
#endif

#if defined(__TMS320C55X_PLUS_BYTE__)
#define PRIdLEAST8     	"hhd"
#define PRIiLEAST8     	"hhi"
#define PRIoLEAST8     	"hho"
#define PRIuLEAST8     	"hhu"
#define PRIxLEAST8     	"hhx"
#define PRIXLEAST8     	"hhX"
#define SCNdLEAST8 	"hhd"
#define SCNiLEAST8 	"hhi"
#define SCNoLEAST8 	"hho"
#define SCNuLEAST8 	"hhu"
#define SCNxLEAST8 	"hhx"
#define SCNd16		"d"
#define SCNi16		"i"
#define SCNo16		"o"
#define SCNu16		"u"
#define SCNx16		"x"
#define SCNdLEAST16 	"d"
#define SCNiLEAST16 	"i"
#define SCNoLEAST16 	"o"
#define SCNuLEAST16 	"u"
#define SCNxLEAST16 	"x"
#elif defined(__TMS320C2000__) || defined(_TMS320C5XX) || defined(__TMS320C55X__)
#define PRIdLEAST8     	"d"
#define PRIiLEAST8     	"i"
#define PRIoLEAST8     	"o"
#define PRIuLEAST8     	"u"
#define PRIxLEAST8     	"x"
#define PRIXLEAST8     	"X"
#define SCNdLEAST8 	"d"
#define SCNiLEAST8 	"i"
#define SCNoLEAST8 	"o"
#define SCNuLEAST8 	"u"
#define SCNxLEAST8 	"x"
#define SCNd16		"d"
#define SCNi16		"i"
#define SCNo16		"o"
#define SCNu16		"u"
#define SCNx16		"x"
#define SCNdLEAST16 	"d"
#define SCNiLEAST16 	"i"
#define SCNoLEAST16 	"o"
#define SCNuLEAST16 	"u"
#define SCNxLEAST16 	"x"
#elif defined(_TMS320C6X) || defined(__ARM_ARCH) || defined(__MSP430__) || \
      defined(__ARP32__)  || defined(__PRU__)    || defined(__C7000__)
#define PRIdLEAST8     	"hhd"
#define PRIiLEAST8     	"hhi"
#define PRIoLEAST8     	"hho"
#define PRIuLEAST8     	"hhu"
#define PRIxLEAST8     	"hhx"
#define PRIXLEAST8     	"hhX"
#define SCNdLEAST8 	"hhd"
#define SCNiLEAST8 	"hhi"
#define SCNoLEAST8 	"hho"
#define SCNuLEAST8 	"hhu"
#define SCNxLEAST8 	"hhx"
#define SCNd16		"hd"
#define SCNi16		"hi"
#define SCNo16		"ho"
#define SCNu16		"hu"
#define SCNx16		"hx"
#define SCNdLEAST16 	"hd"
#define SCNiLEAST16 	"hi"
#define SCNoLEAST16 	"ho"
#define SCNuLEAST16 	"hu"
#define SCNxLEAST16 	"hx"
#endif

#if defined(__TMS320C2000__) || defined(_TMS320C5XX) || defined(__MSP430__) || \
    defined(__TMS320C55X__)  || defined(_TMS320C6X)  || defined(__ARM_ARCH) || \
    defined(__ARP32__)       || defined(__PRU__)     || defined(__C7000__)
#define PRIdFAST8     	"d"
#define PRIiFAST8     	"i"
#define PRIoFAST8     	"o"
#define PRIuFAST8     	"u"
#define PRIxFAST8     	"x"
#define PRIXFAST8     	"X"
#define PRIdFAST16    	"d"
#define PRIiFAST16    	"i"
#define PRIoFAST16    	"o"
#define PRIuFAST16    	"u"
#define PRIxFAST16    	"x"
#define PRIXFAST16    	"X"
#define SCNdFAST8 	"d"
#define SCNiFAST8 	"i"
#define SCNoFAST8 	"o"
#define SCNuFAST8 	"u"
#define SCNxFAST8 	"x"
#define SCNdFAST16 	"d"
#define SCNiFAST16 	"i"
#define SCNoFAST16 	"o"
#define SCNuFAST16 	"u"
#define SCNxFAST16 	"x"
#endif

#if defined(__TMS320C2000__) || defined(_TMS320C5XX) || \
    defined(__TMS320C55X__)  || defined(__MSP430__)
#define PRId16		"d"
#define PRIi16		"i"
#define PRIo16		"o"
#define PRIu16		"u"
#define PRIx16		"x"
#define PRIX16		"X"
#define PRIdLEAST16    	"d"
#define PRIiLEAST16    	"i"
#define PRIoLEAST16    	"o"
#define PRIuLEAST16    	"u"
#define PRIxLEAST16    	"x"
#define PRIXLEAST16    	"X"
#endif
#if defined(_TMS320C6X)  || defined(__ARM_ARCH) || defined(__ARP32__) || \
    defined(__PRU__)     || defined(__C7000__)
#define PRId16		"hd"
#define PRIi16		"hi"
#define PRIo16		"ho"
#define PRIu16		"hu"
#define PRIx16		"hx"
#define PRIX16		"hX"
#define PRIdLEAST16    	"hd"
#define PRIiLEAST16    	"hi"
#define PRIoLEAST16    	"ho"
#define PRIuLEAST16    	"hu"
#define PRIxLEAST16    	"hx"
#define PRIXLEAST16    	"hX"
#endif

#if defined(__TMS320C2000__) || defined(_TMS320C5XX) || \
    defined(__TMS320C55X__)  || defined(__MSP430__)
#define PRId32		"ld"
#define PRIi32		"li"
#define PRIo32		"lo"
#define PRIu32		"lu"
#define PRIx32		"lx"
#define PRIX32		"lX"
#define PRIdLEAST32    	"ld"
#define PRIiLEAST32    	"li"
#define PRIoLEAST32    	"lo"
#define PRIuLEAST32    	"lu"
#define PRIxLEAST32    	"lx"
#define PRIXLEAST32    	"lX"
#define PRIdFAST32    	"ld"
#define PRIiFAST32    	"li"
#define PRIoFAST32    	"lo"
#define PRIuFAST32    	"lu"
#define PRIxFAST32    	"lx"
#define PRIXFAST32    	"lX"
#define SCNd32		"ld"
#define SCNi32		"li"
#define SCNo32		"lo"
#define SCNu32		"lu"
#define SCNx32		"lx"
#define SCNdLEAST32    	"ld"
#define SCNiLEAST32    	"li"
#define SCNoLEAST32    	"lo"
#define SCNuLEAST32    	"lu"
#define SCNxLEAST32    	"lx"
#define SCNdFAST32    	"ld"
#define SCNiFAST32    	"li"
#define SCNoFAST32    	"lo"
#define SCNuFAST32    	"lu"
#define SCNxFAST32    	"lx"
#elif defined(_TMS320C6X) || defined(__ARM_ARCH) || defined(__ARP32__) || \
      defined(__PRU__)    || defined(__C7000__)
#define PRId32		"d"
#define PRIi32		"i"
#define PRIo32		"o"
#define PRIu32		"u"
#define PRIx32		"x"
#define PRIX32		"X"
#define PRIdLEAST32    	"d"
#define PRIiLEAST32    	"i"
#define PRIoLEAST32    	"o"
#define PRIuLEAST32    	"u"
#define PRIxLEAST32    	"x"
#define PRIXLEAST32    	"X"
#define PRIdFAST32    	"d"
#define PRIiFAST32    	"i"
#define PRIoFAST32    	"o"
#define PRIuFAST32    	"u"
#define PRIxFAST32    	"x"
#define PRIXFAST32    	"X"
#define SCNd32		"d"
#define SCNi32		"i"
#define SCNo32		"o"
#define SCNu32		"u"
#define SCNx32		"x"
#define SCNdLEAST32    	"d"
#define SCNiLEAST32    	"i"
#define SCNoLEAST32    	"o"
#define SCNuLEAST32    	"u"
#define SCNxLEAST32    	"x"
#define SCNdFAST32    	"d"
#define SCNiFAST32    	"i"
#define SCNoFAST32    	"o"
#define SCNuFAST32    	"u"
#define SCNxFAST32    	"x"
#endif

#if defined(__TMS320C55X__)
#define PRId40		"lld"
#define PRIi40		"lli"
#define PRIo40		"llo"
#define PRIu40		"llu"
#define PRIx40		"llx"
#define PRIX40		"llX"
#define PRIdLEAST40    	"lld"
#define PRIiLEAST40    	"lli"
#define PRIoLEAST40    	"llo"
#define PRIuLEAST40    	"llu"
#define PRIxLEAST40    	"llx"
#define PRIXLEAST40    	"llX"
#define PRIdFAST40    	"lld"
#define PRIiFAST40    	"lli"
#define PRIoFAST40    	"llo"
#define PRIuFAST40    	"llu"
#define PRIxFAST40    	"llx"
#define PRIXFAST40    	"llX"
#define SCNd40		"lld"
#define SCNi40		"lli"
#define SCNo40		"llo"
#define SCNu40		"llu"
#define SCNx40		"llx"
#define SCNdLEAST40    	"lld"
#define SCNiLEAST40    	"lli"
#define SCNoLEAST40    	"llo"
#define SCNuLEAST40    	"llu"
#define SCNxLEAST40    	"llx"
#define SCNdFAST40    	"lld"
#define SCNiFAST40    	"lli"
#define SCNoFAST40    	"llo"
#define SCNuFAST40    	"llu"
#define SCNxFAST40    	"llx"
#elif defined(_TMS320C6X) && !defined(__C6X_MIGRATION__)
#define PRId40          "I40d"
#define PRIi40          "I40i"
#define PRIo40          "I40o"
#define PRIu40          "I40u"
#define PRIx40          "I40x"
#define PRIX40          "I40X"
#define PRIdLEAST40     "I40d"
#define PRIiLEAST40     "I40i"
#define PRIoLEAST40     "I40o"
#define PRIuLEAST40     "I40u"
#define PRIxLEAST40     "I40x"
#define PRIXLEAST40     "I40X"
#define PRIdFAST40      "I40d"
#define PRIiFAST40      "I40i"
#define PRIoFAST40      "I40o"
#define PRIuFAST40      "I40u"
#define PRIxFAST40      "I40x"
#define PRIXFAST40      "I40X"
#define SCNd40          "I40d"
#define SCNi40          "I40i"
#define SCNo40          "I40o"
#define SCNu40          "I40u"
#define SCNx40          "I40x"
#define SCNdLEAST40     "I40d"
#define SCNiLEAST40     "I40i"
#define SCNoLEAST40     "I40o"
#define SCNuLEAST40     "I40u"
#define SCNxLEAST40     "I40x"
#define SCNdFAST40      "I40d"
#define SCNiFAST40      "I40i"
#define SCNoFAST40      "I40o"
#define SCNuFAST40      "I40u"
#define SCNxFAST40      "I40x"
#endif

#if defined(__ARM_ARCH) || defined(_TMS320C6X) || defined(__TMS320C28X__) || \
    defined(__ARP32__)  || defined(__MSP430__) || defined(__PRU__)        || \
    defined(__C7000__)
#define PRId64		"lld"
#define PRIi64		"lli"
#define PRIo64		"llo"
#define PRIu64		"llu"
#define PRIx64		"llx"
#define PRIX64		"llX"
#define PRIdLEAST64    	"lld"
#define PRIiLEAST64    	"lli"
#define PRIoLEAST64    	"llo"
#define PRIuLEAST64    	"llu"
#define PRIxLEAST64    	"llx"
#define PRIXLEAST64    	"llX"
#define PRIdFAST64    	"lld"
#define PRIiFAST64    	"lli"
#define PRIoFAST64    	"llo"
#define PRIuFAST64    	"llu"
#define PRIxFAST64    	"llx"
#define PRIXFAST64    	"llX"
#define SCNd64		"lld"
#define SCNi64		"lli"
#define SCNo64		"llo"
#define SCNu64		"llu"
#define SCNx64		"llx"
#define SCNdLEAST64    	"lld"
#define SCNiLEAST64    	"lli"
#define SCNoLEAST64    	"llo"
#define SCNuLEAST64    	"llu"
#define SCNxLEAST64    	"llx"
#define SCNdFAST64    	"lld"
#define SCNiFAST64    	"lli"
#define SCNoFAST64    	"llo"
#define SCNuFAST64    	"llu"
#define SCNxFAST64    	"llx"
#endif

#if defined(__TMS320C2000__) || defined(_TMS320C5XX) || \
    defined(__TMS320C55X__)  || defined(__C7000__)   || \
    (defined(__MSP430__) && defined(__LARGE_CODE_MODEL__))
#define PRIdPTR		"ld"
#define PRIiPTR		"li"
#define PRIoPTR		"lo"
#define PRIuPTR		"lu"
#define PRIxPTR		"lx"
#define PRIXPTR		"lX"
#define SCNdPTR		"ld"
#define SCNiPTR		"li"
#define SCNoPTR		"lo"
#define SCNuPTR		"lu"
#define SCNxPTR		"lx"
#elif (defined(_TMS320C6X) && !defined(__C6X_MIGRATION__)) || \
      defined(__ARM_ARCH) || defined(__MSP430__) || \
      defined(__ARP32__) || defined(__PRU__)
#define PRIdPTR		"d"
#define PRIiPTR		"i"
#define PRIoPTR		"o"
#define PRIuPTR		"u"
#define PRIxPTR		"x"
#define PRIXPTR		"X"
#define SCNdPTR		"d"
#define SCNiPTR		"i"
#define SCNoPTR		"o"
#define SCNuPTR		"u"
#define SCNxPTR		"x"
#endif

#if defined(__TMS320C27X__) || defined(_TMS320C5XX)
#define PRIdMAX		"ld"
#define PRIiMAX		"li"
#define PRIoMAX		"lo"
#define PRIuMAX		"lu"
#define PRIxMAX		"lx"
#define PRIXMAX		"lX"
#define SCNdMAX		"ld"
#define SCNiMAX		"li"
#define SCNoMAX		"lo"
#define SCNuMAX		"lu"
#define SCNxMAX		"lx"
#elif defined(__TMS320C28X__) || defined(__TMS320C55X__) || \
      defined(__ARM_ARCH)     || defined(_TMS320C6X)     || \
      defined(__ARP32__)      || defined(__MSP430__)     || \
      defined(__PRU__)        || defined(__C7000__)
#define PRIdMAX		"lld"
#define PRIiMAX		"lli"
#define PRIoMAX		"llo"
#define PRIuMAX		"llu"
#define PRIxMAX		"llx"
#define PRIXMAX		"llX"
#define SCNdMAX		"lld"
#define SCNiMAX		"lli"
#define SCNoMAX		"llo"
#define SCNuMAX		"llu"
#define SCNxMAX		"llx"
#endif

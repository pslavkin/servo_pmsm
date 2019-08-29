//###########################################################################
//
// FILE:   sysctl.h
//
// TITLE:  C28x system control driver.
//
//###########################################################################
// $TI Release: F2837xD Support Library v3.06.00.00 $
// $Release Date: Fri May 24 03:38:59 CDT 2019 $
// $Copyright:
// Copyright (C) 2013-2019 Texas Instruments Incorporated - http://www.ti.com/
//
// Redistribution and use in source and binary forms, with or without 
// modification, are permitted provided that the following conditions 
// are met:
// 
//   Redistributions of source code must retain the above copyright 
//   notice, this list of conditions and the following disclaimer.
// 
//   Redistributions in binary form must reproduce the above copyright
//   notice, this list of conditions and the following disclaimer in the 
//   documentation and/or other materials provided with the   
//   distribution.
// 
//   Neither the name of Texas Instruments Incorporated nor the names of
//   its contributors may be used to endorse or promote products derived
//   from this software without specific prior written permission.
// 
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS 
// "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT 
// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
// A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT 
// OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, 
// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT 
// LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
// DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
// THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT 
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE 
// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
// $
//###########################################################################

#ifndef SYSCTL_H
#define SYSCTL_H

//*****************************************************************************
//
// If building with a C++ compiler, make all of the definitions in this header
// have a C binding.
//
//*****************************************************************************
#ifdef __cplusplus
extern "C"
{
#endif

//*****************************************************************************
//
//! \addtogroup sysctl_api SysCtl
//! @{
//
//*****************************************************************************

#include <stdint.h>
#include <stdbool.h>
#include "inc/hw_memmap.h"
#include "inc/hw_nmi.h"
#include "inc/hw_sysctl.h"
#include "inc/hw_types.h"
#include "cpu.h"
#include "debug.h"
#include "interrupt.h"


//*****************************************************************************
//
// Defines for system control functions. Not intended for use by application
// code.
//
//*****************************************************************************
//
// Shifted pattern for WDCR register's WDCHK field.
//
#define SYSCTL_WD_CHKBITS       0x0028U

//
// Keys for WDKEY field. The first enables resets and the second resets.
//
#define SYSCTL_WD_ENRSTKEY      0x0055U
#define SYSCTL_WD_RSTKEY        0x00AAU

//
// Values to help decode peripheral parameter
//
#define SYSCTL_PERIPH_REG_M     0x001FU
#define SYSCTL_PERIPH_REG_S     0x0000U
#define SYSCTL_PERIPH_BIT_M     0x1F00U
#define SYSCTL_PERIPH_BIT_S     0x0008U


//
// LPM defines for LPMCR.LPM
//
#define SYSCTL_LPM_IDLE         0x0000U
#define SYSCTL_LPM_STANDBY      0x0001U
#define SYSCTL_LPM_HALT         0x0002U
#define SYSCTL_LPM_HIB          0x0003U

//
// Bit shift for DAC to configure the CPUSEL register
//
#define SYSCTL_CPUSEL_DAC_S     0x10U

//
// Default internal oscillator frequency, 10 MHz
//
#define SYSCTL_DEFAULT_OSC_FREQ     10000000U

//
// Mask for SYNCSELECT.SYNCIN
//
#define SYSCTL_SYNCSELECT_SYNCIN_M  SYSCTL_SYNCSELECT_EPWM4SYNCIN_M

//
// Boot ROM Booting and Reset Status
//
#if defined(CPU2)
#define SYSCTL_BOOT_ROM_STATUS    0x0002U
#else
#define SYSCTL_BOOT_ROM_STATUS    0x002CU
#endif
#define SYSCTL_BOOT_ROM_POR       0x8000U
#define SYSCTL_BOOT_ROM_XRS       0x4000U

//*****************************************************************************
//
// The following are values that can be passed to the SysCtl_setClock() API as
// the config parameter.
//
//*****************************************************************************
//
// System clock divider (SYSDIV)
//
#define SYSCTL_SYSDIV_M     0x00001F80U // Mask for SYSDIV value in config
#define SYSCTL_SYSDIV_S     7U          // Shift for SYSDIV value in config

//! Macro to format system clock divider value. x must be 1 or even values up
//! to 126.
#define SYSCTL_SYSDIV(x)    ((((x) / 2U) << SYSCTL_SYSDIV_S) & SYSCTL_SYSDIV_M)

//
// Integer multiplier (IMULT)
//
#define SYSCTL_IMULT_M      0x0000007FU // Mask for IMULT value in config
#define SYSCTL_IMULT_S      0U          // Shift for IMULT value in config
//! Macro to format integer multiplier value. x is a number from 1 to 127.
//!
#define SYSCTL_IMULT(x)     (((x) << SYSCTL_IMULT_S) & SYSCTL_IMULT_M)

#ifndef DOXYGEN_PDF_IGNORE
//
// Fractional multiplier (FMULT)
//
#define SYSCTL_FMULT_M      0x00006000U // Mask for FMULT value in config
#define SYSCTL_FMULT_S      13U         // Shift for FMULT value in config
#define SYSCTL_FMULT_NONE   0x00000000U //!< No fractional multiplier
#define SYSCTL_FMULT_0      0x00000000U //!< No fractional multiplier
#define SYSCTL_FMULT_1_4    0x00002000U //!< Fractional multiplier of 0.25
#define SYSCTL_FMULT_1_2    0x00004000U //!< Fractional multiplier of 0.50
#define SYSCTL_FMULT_3_4    0x00006000U //!< Fractional multiplier of 0.75

//
// Oscillator source
//
// Also used with the SysCtl_selectOscSource(), SysCtl_turnOnOsc(),
// and SysCtl_turnOffOsc() functions as the oscSource parameter.
//
#define SYSCTL_OSCSRC_M         0x00030000U // Mask for OSCSRC value in config
#define SYSCTL_OSCSRC_S         16U         // Shift for OSCSRC value in config
//! Internal oscillator INTOSC2
#define SYSCTL_OSCSRC_OSC2      0x00000000U
//! External oscillator (XTAL) in crystal mode
#define SYSCTL_OSCSRC_XTAL      0x00010000U
//! Internal oscillator INTOSC1
#define SYSCTL_OSCSRC_OSC1      0x00020000U

//
// Enable/disable PLL
//
#define SYSCTL_PLL_ENABLE       0x80000000U //!< Enable PLL
#define SYSCTL_PLL_DISABLE      0x00000000U //!< Disable PLL

//*****************************************************************************
//
// The following are values that can be passed to the SysCtl_setAuxClock() API
// as the config parameter.
//
//*****************************************************************************
//
// Auxiliary clock divider (AUXCLKDIV)
//
#define SYSCTL_AUXPLL_DIV_1        0x00000000U //!< Auxiliary PLL divide by 1
#define SYSCTL_AUXPLL_DIV_2        0x00000080U //!< Auxiliary PLL divide by 2
#define SYSCTL_AUXPLL_DIV_4        0x00000100U //!< Auxiliary PLL divide by 4
#define SYSCTL_AUXPLL_DIV_8        0x00000180U //!< Auxiliary PLL divide by 8

//
// Integer multiplier (IMULT)
//
//! Macro to format integer multiplier value. x is a number from 1 to 127.
//!
#define SYSCTL_AUXPLL_IMULT(x)      SYSCTL_IMULT((x))

//
// Fractional multiplier (FMULT)
//
#define SYSCTL_AUXPLL_FMULT_NONE  0x00000000U //!< No fractional multiplier
#define SYSCTL_AUXPLL_FMULT_0     0x00000000U //!< No fractional multiplier
#define SYSCTL_AUXPLL_FMULT_1_4   0x00002000U //!< Fractional multiplier - 0.25
#define SYSCTL_AUXPLL_FMULT_1_2   0x00004000U //!< Fractional multiplier - 0.50
#define SYSCTL_AUXPLL_FMULT_3_4   0x00006000U //!< Fractional multiplier - 0.75

//
// Oscillator source
//
//! Internal oscillator INTOSC2 as auxiliary clock input
#define SYSCTL_AUXPLL_OSCSRC_OSC2       0x00000000U
//! External oscillator (XTAL) as auxiliary clock input
#define SYSCTL_AUXPLL_OSCSRC_XTAL       0x00010000U
//! AUXCLKIN (from GPIO) as auxiliary clock input
#define SYSCTL_AUXPLL_OSCSRC_AUXCLKIN   0x00020000U

//
// Enable/disable PLL
//
#define SYSCTL_AUXPLL_ENABLE    0x80000000U //!< Enable AUXPLL
#define SYSCTL_AUXPLL_DISABLE   0x00000000U //!< Disable AUXPLL

//*****************************************************************************
//
// Values that can be passed to SysCtl_selectSecMaster() as the
// periFrame1Config and periFrame2Config parameters.
//
//*****************************************************************************
//! Configure CLA as the secondary master
#define SYSCTL_SEC_MASTER_CLA                 0x0U
//! Configure DMA as the secondary master
#define SYSCTL_SEC_MASTER_DMA                 0x1U

//*****************************************************************************
//
// Values that can be passed to SysCtl_clearNMIStatus(),
// SysCtl_forceNMIFlags(), SysCtl_isNMIFlagSet(), and
// SysCtl_isNMIShadowFlagSet() as the nmiFlags parameter and returned by
// SysCtl_getNMIFlagStatus() and SysCtl_getNMIShadowFlagStatus().
//
//*****************************************************************************
#define SYSCTL_NMI_NMIINT           0x0001U //!< Non-maskable interrupt
#define SYSCTL_NMI_CLOCKFAIL        0x0002U //!< Clock Failure
#define SYSCTL_NMI_RAMUNCERR        0x0004U //!< Uncorrectable RAM error
#define SYSCTL_NMI_FLUNCERR         0x0008U //!< Uncorrectable Flash error
#define SYSCTL_NMI_PIEVECTERR       0x0040U //!< PIE Vector Fetch Error
#define SYSCTL_NMI_CPU2WDRSN        0x0200U //!< CPU2 WDRSn Reset
#define SYSCTL_NMI_CPU2NMIWDRSN     0x0400U //!< CPU2 NMIWDRSn Reset

//*****************************************************************************
//
// The following are values that can be passed to the SysCtl_clearResetCause()
// API as rstCauses or returned by the SysCtl_getResetCause() API.
//
//*****************************************************************************
#define SYSCTL_CAUSE_POR                 0x00000001U //!< Power-on reset
#define SYSCTL_CAUSE_XRS                 0x00000002U //!< External reset pin
#define SYSCTL_CAUSE_WDRS                0x00000004U //!< Watchdog reset
#define SYSCTL_CAUSE_NMIWDRS             0x00000008U //!< NMI watchdog reset
#define SYSCTL_CAUSE_SCCRESET            0x00000100U //!< SCCRESETn by DCSM
//*****************************************************************************
//
// The following values define the adcsocSrc parameter for
// SysCtl_enableExtADCSOCSource() and SysCtl_disableExtADCSOCSource().
//
//*****************************************************************************
//
// ADCSOCAO
//
#define SYSCTL_ADCSOC_SRC_PWM1SOCA    0x00000001U //!< ePWM1 SOCA for ADCSOCAO
#define SYSCTL_ADCSOC_SRC_PWM2SOCA    0x00000002U //!< ePWM2 SOCA for ADCSOCAO
#define SYSCTL_ADCSOC_SRC_PWM3SOCA    0x00000004U //!< ePWM3 SOCA for ADCSOCAO
#define SYSCTL_ADCSOC_SRC_PWM4SOCA    0x00000008U //!< ePWM4 SOCA for ADCSOCAO
#define SYSCTL_ADCSOC_SRC_PWM5SOCA    0x00000010U //!< ePWM5 SOCA for ADCSOCAO
#define SYSCTL_ADCSOC_SRC_PWM6SOCA    0x00000020U //!< ePWM6 SOCA for ADCSOCAO
#define SYSCTL_ADCSOC_SRC_PWM7SOCA    0x00000040U //!< ePWM7 SOCA for ADCSOCAO
#define SYSCTL_ADCSOC_SRC_PWM8SOCA    0x00000080U //!< ePWM8 SOCA for ADCSOCAO
#define SYSCTL_ADCSOC_SRC_PWM9SOCA    0x00000100U //!< ePWM9 SOCA for ADCSOCAO
#define SYSCTL_ADCSOC_SRC_PWM10SOCA   0x00000200U //!< ePWM10 SOCA for ADCSOCAO
#define SYSCTL_ADCSOC_SRC_PWM11SOCA   0x00000400U //!< ePWM11 SOCA for ADCSOCAO
#define SYSCTL_ADCSOC_SRC_PWM12SOCA   0x00000800U //!< ePWM12 SOCA for ADCSOCAO

//
// ADCSOCBO
//
#define SYSCTL_ADCSOC_SRC_PWM1SOCB    0x00010000U //!< ePWM1 SOCB for ADCSOCBO
#define SYSCTL_ADCSOC_SRC_PWM2SOCB    0x00020000U //!< ePWM2 SOCB for ADCSOCBO
#define SYSCTL_ADCSOC_SRC_PWM3SOCB    0x00040000U //!< ePWM3 SOCB for ADCSOCBO
#define SYSCTL_ADCSOC_SRC_PWM4SOCB    0x00080000U //!< ePWM4 SOCB for ADCSOCBO
#define SYSCTL_ADCSOC_SRC_PWM5SOCB    0x00100000U //!< ePWM5 SOCB for ADCSOCBO
#define SYSCTL_ADCSOC_SRC_PWM6SOCB    0x00200000U //!< ePWM6 SOCB for ADCSOCBO
#define SYSCTL_ADCSOC_SRC_PWM7SOCB    0x00400000U //!< ePWM7 SOCB for ADCSOCBO
#define SYSCTL_ADCSOC_SRC_PWM8SOCB    0x00800000U //!< ePWM8 SOCB for ADCSOCBO
#define SYSCTL_ADCSOC_SRC_PWM9SOCB    0x01000000U //!< ePWM9 SOCB for ADCSOCBO
#define SYSCTL_ADCSOC_SRC_PWM10SOCB   0x02000000U //!< ePWM10 SOCB for ADCSOCBO
#define SYSCTL_ADCSOC_SRC_PWM11SOCB   0x04000000U //!< ePWM11 SOCB for ADCSOCBO
#define SYSCTL_ADCSOC_SRC_PWM12SOCB   0x08000000U //!< ePWM12 SOCB for ADCSOCBO
#endif

//*****************************************************************************
//
//! The following are values that can be passed to SysCtl_enablePeripheral()
//! and SysCtl_disablePeripheral() as the \e peripheral parameter.
//
//*****************************************************************************
typedef enum
{
    //
    // PCLKCR0
    //
    SYSCTL_PERIPH_CLK_CLA1       = 0x0000,  //!< CLA1 clock
    SYSCTL_PERIPH_CLK_DMA        = 0x0200,  //!< DMA clock
    SYSCTL_PERIPH_CLK_TIMER0     = 0x0300,  //!< CPUTIMER0 clock
    SYSCTL_PERIPH_CLK_TIMER1     = 0x0400,  //!< CPUTIMER1 clock
    SYSCTL_PERIPH_CLK_TIMER2     = 0x0500,  //!< CPUTIMER2 clock
    SYSCTL_PERIPH_CLK_HRPWM      = 0x1000,  //!< HRPWM clock
    SYSCTL_PERIPH_CLK_TBCLKSYNC  = 0x1200,  //!< ePWM time base clock sync
    SYSCTL_PERIPH_CLK_GTBCLKSYNC = 0x1300,  //!< ePWM global time base sync

    //
    // PCLKCR1
    //
    SYSCTL_PERIPH_CLK_EMIF1      = 0x0001,  //!< EMIF1 clock
    SYSCTL_PERIPH_CLK_EMIF2      = 0x0101,  //!< EMIF2 clock

    //
    // PCLKCR2
    //
    SYSCTL_PERIPH_CLK_EPWM1      = 0x0002,  //!< ePWM1 clock
    SYSCTL_PERIPH_CLK_EPWM2      = 0x0102,  //!< ePWM2 clock
    SYSCTL_PERIPH_CLK_EPWM3      = 0x0202,  //!< ePWM3 clock
    SYSCTL_PERIPH_CLK_EPWM4      = 0x0302,  //!< ePWM4 clock
    SYSCTL_PERIPH_CLK_EPWM5      = 0x0402,  //!< ePWM5 clock
    SYSCTL_PERIPH_CLK_EPWM6      = 0x0502,  //!< ePWM6 clock
    SYSCTL_PERIPH_CLK_EPWM7      = 0x0602,  //!< ePWM7 clock
    SYSCTL_PERIPH_CLK_EPWM8      = 0x0702,  //!< ePWM8 clock
    SYSCTL_PERIPH_CLK_EPWM9      = 0x0802,  //!< ePWM9 clock
    SYSCTL_PERIPH_CLK_EPWM10     = 0x0902,  //!< ePWM10 clock
    SYSCTL_PERIPH_CLK_EPWM11     = 0x0A02,  //!< ePWM11 clock
    SYSCTL_PERIPH_CLK_EPWM12     = 0x0B02,  //!< ePWM12 clock

    //
    // PCLKCR3
    //
    SYSCTL_PERIPH_CLK_ECAP1      = 0x0003,  //!< eCAP1 clock
    SYSCTL_PERIPH_CLK_ECAP2      = 0x0103,  //!< eCAP2 clock
    SYSCTL_PERIPH_CLK_ECAP3      = 0x0203,  //!< eCAP3 clock
    SYSCTL_PERIPH_CLK_ECAP4      = 0x0303,  //!< eCAP4 clock
    SYSCTL_PERIPH_CLK_ECAP5      = 0x0403,  //!< eCAP5 clock
    SYSCTL_PERIPH_CLK_ECAP6      = 0x0503,  //!< eCAP6 clock

    //
    // PCLKCR4
    //
    SYSCTL_PERIPH_CLK_EQEP1      = 0x0004,  //!< eQEP1 clock
    SYSCTL_PERIPH_CLK_EQEP2      = 0x0104,  //!< eQEP2 clock
    SYSCTL_PERIPH_CLK_EQEP3      = 0x0204,  //!< eQEP3 clock

    //
    // PCLKCR5
    //
    // Reserved

    //
    // PCLKCR6
    //
    SYSCTL_PERIPH_CLK_SD1        = 0x0006,  //!< SDFM1 clock
    SYSCTL_PERIPH_CLK_SD2        = 0x0106,  //!< SDFM2 clock

    //
    // PCLKCR7
    //
    SYSCTL_PERIPH_CLK_SCIA       = 0x0007,  //!< SCIA clock
    SYSCTL_PERIPH_CLK_SCIB       = 0x0107,  //!< SCIB clock
    SYSCTL_PERIPH_CLK_SCIC       = 0x0207,  //!< SCIC clock
    SYSCTL_PERIPH_CLK_SCID       = 0x0307,  //!< SCID clock

    //
    // PCLKCR8
    //
    SYSCTL_PERIPH_CLK_SPIA       = 0x0008,  //!< SPIA clock
    SYSCTL_PERIPH_CLK_SPIB       = 0x0108,  //!< SPIB clock
    SYSCTL_PERIPH_CLK_SPIC       = 0x0208,  //!< SPIC clock

    //
    // PCLKCR9
    //
    SYSCTL_PERIPH_CLK_I2CA       = 0x0009,  //!< I2CA clock
    SYSCTL_PERIPH_CLK_I2CB       = 0x0109,  //!< I2CB clock

    //
    // PCLKCR10
    //
    SYSCTL_PERIPH_CLK_CANA       = 0x000A,  //!< CANA clock
    SYSCTL_PERIPH_CLK_CANB       = 0x010A,  //!< CANB clock

    //
    // PCLKCR11
    //
    SYSCTL_PERIPH_CLK_MCBSPA     = 0x000B,  //!< McBSPA clock
    SYSCTL_PERIPH_CLK_MCBSPB     = 0x010B,  //!< McBSPB clock
    SYSCTL_PERIPH_CLK_USBA       = 0x100B,  //!< USBA clock

    //
    // PCLKCR12
    //
    SYSCTL_PERIPH_CLK_UPPA       = 0x000C,  //!< uPPA clock

    //
    // PCLKCR13
    //
    SYSCTL_PERIPH_CLK_ADCA       = 0x000D,  //!< ADCA clock
    SYSCTL_PERIPH_CLK_ADCB       = 0x010D,  //!< ADCB clock
    SYSCTL_PERIPH_CLK_ADCC       = 0x020D,  //!< ADCC clock
    SYSCTL_PERIPH_CLK_ADCD       = 0x030D,  //!< ADCD clock

    //
    // PCLKCR14
    //
    SYSCTL_PERIPH_CLK_CMPSS1     = 0x000E,  //!< CMPSS1 clock
    SYSCTL_PERIPH_CLK_CMPSS2     = 0x010E,  //!< CMPSS2 clock
    SYSCTL_PERIPH_CLK_CMPSS3     = 0x020E,  //!< CMPSS3 clock
    SYSCTL_PERIPH_CLK_CMPSS4     = 0x030E,  //!< CMPSS4 clock
    SYSCTL_PERIPH_CLK_CMPSS5     = 0x040E,  //!< CMPSS5 clock
    SYSCTL_PERIPH_CLK_CMPSS6     = 0x050E,  //!< CMPSS6 clock
    SYSCTL_PERIPH_CLK_CMPSS7     = 0x060E,  //!< CMPSS7 clock
    SYSCTL_PERIPH_CLK_CMPSS8     = 0x070E,  //!< CMPSS8 clock

    //
    // PCLKCR15
    //
    // Reserved

    //
    // PCLKCR16
    //
    SYSCTL_PERIPH_CLK_DACA       = 0x1010,  //!< DACA clock
    SYSCTL_PERIPH_CLK_DACB       = 0x1110,  //!< DACB clock
    SYSCTL_PERIPH_CLK_DACC       = 0x1210   //!< DACC clock
} SysCtl_PeripheralPCLOCKCR;
//*****************************************************************************
//
//! The following are values that can be passed to SysCtl_resetPeripheral() as
//! the \e peripheral parameter.
//
//*****************************************************************************
typedef enum
{
    // SOFTPRES0
    SYSCTL_PERIPH_RES_CPU1_CLA1  = 0x0000,  //!< Reset CPU1 CLA1
    SYSCTL_PERIPH_RES_CPU2_CLA1  = 0x0200,  //!< Reset CPU2 CLA1

    // SOFTPRES1
    SYSCTL_PERIPH_RES_EMIF1      = 0x0001,  //!< Reset EMIF1
    SYSCTL_PERIPH_RES_EMIF2      = 0x0101,  //!< Reset EMIF2

    // SOFTPRES2
    SYSCTL_PERIPH_RES_EPWM1      = 0x0002,  //!< Reset ePWM1
    SYSCTL_PERIPH_RES_EPWM2      = 0x0102,  //!< Reset ePWM2
    SYSCTL_PERIPH_RES_EPWM3      = 0x0202,  //!< Reset ePWM3
    SYSCTL_PERIPH_RES_EPWM4      = 0x0302,  //!< Reset ePWM4
    SYSCTL_PERIPH_RES_EPWM5      = 0x0402,  //!< Reset ePWM5
    SYSCTL_PERIPH_RES_EPWM6      = 0x0502,  //!< Reset ePWM6
    SYSCTL_PERIPH_RES_EPWM7      = 0x0602,  //!< Reset ePWM7
    SYSCTL_PERIPH_RES_EPWM8      = 0x0702,  //!< Reset ePWM8
    SYSCTL_PERIPH_RES_EPWM9      = 0x0802,  //!< Reset ePWM9
    SYSCTL_PERIPH_RES_EPWM10     = 0x0902,  //!< Reset ePWM10
    SYSCTL_PERIPH_RES_EPWM11     = 0x0A02,  //!< Reset ePWM11
    SYSCTL_PERIPH_RES_EPWM12     = 0x0B02,  //!< Reset ePWM12

    // SOFTPRES3
    SYSCTL_PERIPH_RES_ECAP1      = 0x0003,  //!< Reset eCAP1
    SYSCTL_PERIPH_RES_ECAP2      = 0x0103,  //!< Reset eCAP2
    SYSCTL_PERIPH_RES_ECAP3      = 0x0203,  //!< Reset eCAP3
    SYSCTL_PERIPH_RES_ECAP4      = 0x0303,  //!< Reset eCAP4
    SYSCTL_PERIPH_RES_ECAP5      = 0x0403,  //!< Reset eCAP5
    SYSCTL_PERIPH_RES_ECAP6      = 0x0503,  //!< Reset eCAP6

    // SOFTPRES4
    SYSCTL_PERIPH_RES_EQEP1      = 0x0004,  //!< Reset eQEP1
    SYSCTL_PERIPH_RES_EQEP2      = 0x0104,  //!< Reset eQEP2
    SYSCTL_PERIPH_RES_EQEP3      = 0x0204,  //!< Reset eQEP3

    // SOFTPRES5
    // Reserved

    // SOFTPRES6
    SYSCTL_PERIPH_RES_SD1        = 0x0006,  //!< Reset SDFM1
    SYSCTL_PERIPH_RES_SD2        = 0x0106,  //!< Reset SDFM2

    // SOFTPRES7
    SYSCTL_PERIPH_RES_SCIA       = 0x0007,  //!< Reset SCIA
    SYSCTL_PERIPH_RES_SCIB       = 0x0107,  //!< Reset SCIB
    SYSCTL_PERIPH_RES_SCIC       = 0x0207,  //!< Reset SCIC
    SYSCTL_PERIPH_RES_SCID       = 0x0307,  //!< Reset SCID

    // SOFTPRES8
    SYSCTL_PERIPH_RES_SPIA       = 0x0008,  //!< Reset SPIA
    SYSCTL_PERIPH_RES_SPIB       = 0x0108,  //!< Reset SPIB
    SYSCTL_PERIPH_RES_SPIC       = 0x0208,  //!< Reset SPIC

    // SOFTPRES9
    SYSCTL_PERIPH_RES_I2CA       = 0x0009,  //!< Reset I2CA
    SYSCTL_PERIPH_RES_I2CB       = 0x0109,  //!< Reset I2CB

    // SOFTPRES10

    // SOFTPRES11
    SYSCTL_PERIPH_RES_MCBSPA     = 0x000B,  //!< Reset McBSPA
    SYSCTL_PERIPH_RES_MCBSPB     = 0x010B,  //!< Reset McBSPB
    SYSCTL_PERIPH_RES_USBA       = 0x100B,  //!< Reset USBA

    // SOFTPRES12
    // Reserved

    // SOFTPRES13
    SYSCTL_PERIPH_RES_ADCA       = 0x000D,  //!< Reset ADCA
    SYSCTL_PERIPH_RES_ADCB       = 0x010D,  //!< Reset ADCB
    SYSCTL_PERIPH_RES_ADCC       = 0x020D,  //!< Reset ADCC
    SYSCTL_PERIPH_RES_ADCD       = 0x030D,  //!< Reset ADCD

    // SOFTPRES14
    SYSCTL_PERIPH_RES_CMPSS1     = 0x000E,  //!< Reset CMPSS1
    SYSCTL_PERIPH_RES_CMPSS2     = 0x010E,  //!< Reset CMPSS2
    SYSCTL_PERIPH_RES_CMPSS3     = 0x020E,  //!< Reset CMPSS3
    SYSCTL_PERIPH_RES_CMPSS4     = 0x030E,  //!< Reset CMPSS4
    SYSCTL_PERIPH_RES_CMPSS5     = 0x040E,  //!< Reset CMPSS5
    SYSCTL_PERIPH_RES_CMPSS6     = 0x050E,  //!< Reset CMPSS6
    SYSCTL_PERIPH_RES_CMPSS7     = 0x060E,  //!< Reset CMPSS7
    SYSCTL_PERIPH_RES_CMPSS8     = 0x070E,  //!< Reset CMPSS8

    // SOFTPRES15
    // Reserved

    // SOFTPRES16
    SYSCTL_PERIPH_RES_DACA       = 0x1010,  //!< Reset DACA
    SYSCTL_PERIPH_RES_DACB       = 0x1110,  //!< Reset DACB
    SYSCTL_PERIPH_RES_DACC       = 0x1210,  //!< Reset DACC


} SysCtl_PeripheralSOFTPRES;

//*****************************************************************************
//
//! The following are values that can be passed to
//! SysCtl_selectCPUForPeripheral() & SysCtl_lockCPUSelectRegs()
//! as the \e peripheral parameter.
//
//*****************************************************************************
typedef enum
{
    //! Configure CPU Select for EPWM
    SYSCTL_CPUSEL0_EPWM      = 0x0U,
    //! Configure CPU Select for ECAP
    SYSCTL_CPUSEL1_ECAP      = 0x1U,
    //! Configure CPU Select for EQEP
    SYSCTL_CPUSEL2_EQEP      = 0x2U,
    //! Configure CPU Select for SD
    SYSCTL_CPUSEL4_SD        = 0x4U,
    //! Configure CPU Select for SCI
    SYSCTL_CPUSEL5_SCI       = 0x5U,
    //! Configure CPU Select for SPI
    SYSCTL_CPUSEL6_SPI       = 0x6U,
    //! Configure CPU Select for I2C
    SYSCTL_CPUSEL7_I2C       = 0x7U,
    //! Configure CPU Select for CAN
    SYSCTL_CPUSEL8_CAN       = 0x8U,
    //! Configure CPU Select for MCBSP
    SYSCTL_CPUSEL9_MCBSP     = 0x9U,
    //! Configure CPU Select for ADC
    SYSCTL_CPUSEL11_ADC      = 0xBU,
    //! Configure CPU Select for CMPSS
    SYSCTL_CPUSEL12_CMPSS    = 0xCU,
    //! Configure CPU Select for DAC
    SYSCTL_CPUSEL14_DAC      = 0xEU
} SysCtl_CPUSelPeripheral;

//*****************************************************************************
//
//! The following are values that can be passed to
//! SysCtl_selectCPUForPeripheral() as \e cpuInst parameter.
//
//*****************************************************************************
typedef enum
{
    //! Connect the peripheral (indicated by SysCtl_CPUSelPeripheral) to CPU1
    SYSCTL_CPUSEL_CPU1 = 0x0U,
    //! Connect the peripheral (indicated by SysCtl_CPUSelPeripheral) to CPU2
    SYSCTL_CPUSEL_CPU2 = 0x1U
} SysCtl_CPUSel;

//*****************************************************************************
//
//! The following are values that can be passed to
//! SysCtl_setWatchdogPrescaler() as the \e prescaler parameter.
//
//*****************************************************************************
typedef enum
{
    SYSCTL_WD_PRESCALE_1  = 1,      //!< WDCLK = PREDIVCLK / 1
    SYSCTL_WD_PRESCALE_2  = 2,      //!< WDCLK = PREDIVCLK / 2
    SYSCTL_WD_PRESCALE_4  = 3,      //!< WDCLK = PREDIVCLK / 4
    SYSCTL_WD_PRESCALE_8  = 4,      //!< WDCLK = PREDIVCLK / 8
    SYSCTL_WD_PRESCALE_16 = 5,      //!< WDCLK = PREDIVCLK / 16
    SYSCTL_WD_PRESCALE_32 = 6,      //!< WDCLK = PREDIVCLK / 32
    SYSCTL_WD_PRESCALE_64 = 7       //!< WDCLK = PREDIVCLK / 64
} SysCtl_WDPrescaler;

//*****************************************************************************
//
//! The following are values that can be passed to
//! SysCtl_setWatchdogMode() as the \e prescaler parameter.
//
//*****************************************************************************
typedef enum
{
    //! Watchdog can generate a reset signal
    SYSCTL_WD_MODE_RESET,
    //! Watchdog can generate an interrupt signal; reset signal is disabled
    SYSCTL_WD_MODE_INTERRUPT
} SysCtl_WDMode;

//*****************************************************************************
//
//! The following are values that can be passed to SysCtl_setLowSpeedClock() as
//! the \e prescaler parameter.
//
//*****************************************************************************
typedef enum
{
    SYSCTL_LSPCLK_PRESCALE_1    = 0,    //!< LSPCLK = SYSCLK / 1
    SYSCTL_LSPCLK_PRESCALE_2    = 1,    //!< LSPCLK = SYSCLK / 2
    SYSCTL_LSPCLK_PRESCALE_4    = 2,    //!< LSPCLK = SYSCLK / 4 (default)
    SYSCTL_LSPCLK_PRESCALE_6    = 3,    //!< LSPCLK = SYSCLK / 6
    SYSCTL_LSPCLK_PRESCALE_8    = 4,    //!< LSPCLK = SYSCLK / 8
    SYSCTL_LSPCLK_PRESCALE_10   = 5,    //!< LSPCLK = SYSCLK / 10
    SYSCTL_LSPCLK_PRESCALE_12   = 6,    //!< LSPCLK = SYSCLK / 12
    SYSCTL_LSPCLK_PRESCALE_14   = 7     //!< LSPCLK = SYSCLK / 14
} SysCtl_LSPCLKPrescaler;

//*****************************************************************************
//
//! The following are values that can be passed to SysCtl_setEPWMClockDivider()
//! as the \e divider parameter.
//
//*****************************************************************************
typedef enum
{
    SYSCTL_EPWMCLK_DIV_1,           //!< EPWMCLK = PLLSYSCLK / 1
    SYSCTL_EPWMCLK_DIV_2            //!< EPWMCLK = PLLSYSCLK / 2
} SysCtl_EPWMCLKDivider;

//*****************************************************************************
//
//! The following are values that can be passed to
//! SysCtl_setEMIF1ClockDivider() as the \e divider parameter.
//
//*****************************************************************************
typedef enum
{
    SYSCTL_EMIF1CLK_DIV_1,           //!< EMIF1CLK = PLLSYSCLK / 1
    SYSCTL_EMIF1CLK_DIV_2            //!< EMIF1CLK = PLLSYSCLK / 2
} SysCtl_EMIF1CLKDivider;

//*****************************************************************************
//
//! The following are values that can be passed to
//! SysCtl_setEMIF2ClockDivider() as the \e divider parameter.
//
//*****************************************************************************
typedef enum
{
    SYSCTL_EMIF2CLK_DIV_1,           //!< EMIF2CLK = PLLSYSCLK / 1
    SYSCTL_EMIF2CLK_DIV_2            //!< EMIF2CLK = PLLSYSCLK / 2
} SysCtl_EMIF2CLKDivider;

//*****************************************************************************
//
//! The following are values that can be passed to
//! SysCtl_selectClockOutSource() as the \e source parameter.
//
//*****************************************************************************
typedef enum
{
    SYSCTL_CLOCKOUT_PLLSYS     = 0U,   //!< PLL System Clock post SYSCLKDIV
    SYSCTL_CLOCKOUT_PLLRAW     = 1U,   //!< PLL Raw Clock
    SYSCTL_CLOCKOUT_SYSCLK     = 2U,   //!< CPU System Clock
    SYSCTL_CLOCKOUT_INTOSC1    = 5U,   //!< Internal Oscillator 1
    SYSCTL_CLOCKOUT_INTOSC2    = 6U,   //!< Internal Oscillator 2
    SYSCTL_CLOCKOUT_XTALOSC    = 7U,   //!< External Oscillator
} SysCtl_ClockOut;

//*****************************************************************************
//
//! The following values define the \e syncInput parameter for
//! SysCtl_setSyncInputConfig().
//
//*****************************************************************************
typedef enum
{
    SYSCTL_SYNC_IN_EPWM4      = 0,     //!< Sync input to ePWM 4
    SYSCTL_SYNC_IN_EPWM7      = 3,     //!< Sync input to ePWM 7
    SYSCTL_SYNC_IN_EPWM10     = 6,     //!< Sync input to ePWM 10
    SYSCTL_SYNC_IN_ECAP1      = 9,     //!< Sync input to eCAP 1
    SYSCTL_SYNC_IN_ECAP4      = 12     //!< Sync input to eCAP 4
} SysCtl_SyncInput;

//*****************************************************************************
//
//! The following values define the \e syncSrc parameter for
//! SysCtl_setSyncInputConfig(). Note that some of these are only valid for
//! certain values of \e syncInput. See device technical reference manual for
//! info on time-base counter synchronization for details.
//
//*****************************************************************************
typedef enum
{
    //! EPWM1SYNCOUT
    SYSCTL_SYNC_IN_SRC_EPWM1SYNCOUT     = 0,
    //! EPWM4SYNCOUT
    SYSCTL_SYNC_IN_SRC_EPWM4SYNCOUT     = 1,
    //! EPWM7SYNCOUT
    SYSCTL_SYNC_IN_SRC_EPWM7SYNCOUT     = 2,
    //! EPWM10SYNCOUT
    SYSCTL_SYNC_IN_SRC_EPWM10SYNCOUT    = 3,
    //! ECAP1SYNCOUT
    SYSCTL_SYNC_IN_SRC_ECAP1SYNCOUT     = 4,
    //! EXTSYNCIN1--Valid for all values of syncInput
    SYSCTL_SYNC_IN_SRC_EXTSYNCIN1       = 5,
    //! EXTSYNCIN2--Valid for all values of syncInput
    SYSCTL_SYNC_IN_SRC_EXTSYNCIN2       = 6,
} SysCtl_SyncInputSource;

//*****************************************************************************
//
//! The following values define the \e syncSrc parameter for
//! SysCtl_setSyncOutputConfig().
//
//*****************************************************************************
typedef enum
{
  SYSCTL_SYNC_OUT_SRC_EPWM1SYNCOUT,   //!< EPWM1SYNCOUT --> EXTSYNCOUT
  SYSCTL_SYNC_OUT_SRC_EPWM4SYNCOUT,   //!< EPWM4SYNCOUT --> EXTSYNCOUT
  SYSCTL_SYNC_OUT_SRC_EPWM7SYNCOUT,   //!< EPWM7SYNCOUT --> EXTSYNCOUT
  SYSCTL_SYNC_OUT_SRC_EPWM10SYNCOUT   //!< EPWM10SYNCOUT --> EXTSYNCOUT

} SysCtl_SyncOutputSource;

//*****************************************************************************
//
//! The following values define the \e parametric parameter for
//! SysCtl_getDeviceParametric().
//
//*****************************************************************************
typedef enum
{
    SYSCTL_DEVICE_QUAL,       //!< Device Qualification Status
    SYSCTL_DEVICE_PINCOUNT,   //!< Device Pin Count
    SYSCTL_DEVICE_INSTASPIN,  //!< Device InstaSPIN Feature Set
    SYSCTL_DEVICE_FLASH,      //!< Device Flash size (KB)
    SYSCTL_DEVICE_PARTID,     //!< Device Part ID Format Revision
    SYSCTL_DEVICE_FAMILY,     //!< Device Family
    SYSCTL_DEVICE_PARTNO,     //!< Device Part Number
    SYSCTL_DEVICE_CLASSID     //!< Device Class ID
} SysCtl_DeviceParametric;


//*****************************************************************************
//
// Prototypes for the APIs.
//
//*****************************************************************************
//*****************************************************************************
//
//! Resets a peripheral
//!
//! \param peripheral is the peripheral to reset.
//!
//! This function uses the SOFTPRESx registers to reset a specified peripheral.
//! Module registers will be returned to their reset states.
//!
//! \note This includes registers containing trim values.The peripheral
//! software reset needed by CPU2 can be communicated to CPU1 via
//! IPC for all shared peripherals.
//!
//! \return None.
//
//*****************************************************************************
static inline void
SysCtl_resetPeripheral(SysCtl_PeripheralSOFTPRES peripheral)
{
    uint16_t regIndex;
    uint16_t bitIndex;

    //
    // Decode the peripheral variable.
    //
    regIndex = (uint16_t)2U * ((uint16_t)peripheral &
                               (uint16_t)SYSCTL_PERIPH_REG_M);
    bitIndex = ((uint16_t)peripheral & SYSCTL_PERIPH_BIT_M) >>
               SYSCTL_PERIPH_BIT_S;

    EALLOW;

    //
    // Sets the appropriate reset bit and then clears it.
    //
    HWREG(DEVCFG_BASE + SYSCTL_O_SOFTPRES0 + regIndex) |=
        ((uint32_t)1U << bitIndex);
    HWREG(DEVCFG_BASE + SYSCTL_O_SOFTPRES0 + regIndex) &=
        ~((uint32_t)1U << bitIndex);

    EDIS;
}

//*****************************************************************************
//
//! Enables a peripheral.
//!
//! \param peripheral is the peripheral to enable.
//!
//! Peripherals are enabled with this function.  At power-up, all peripherals
//! are disabled; they must be enabled in order to operate or respond to
//! register reads/writes.
//!
//! \return None.
//
//*****************************************************************************
static inline void
SysCtl_enablePeripheral(SysCtl_PeripheralPCLOCKCR peripheral)
{
    uint16_t regIndex;
    uint16_t bitIndex;

    //
    // Decode the peripheral variable.
    //
    regIndex = (uint16_t)2U * ((uint16_t)peripheral &
                               (uint16_t)SYSCTL_PERIPH_REG_M);
    bitIndex = ((uint16_t)peripheral & SYSCTL_PERIPH_BIT_M) >>
               SYSCTL_PERIPH_BIT_S;

    EALLOW;

    //
    // Turn on the module clock.
    //
    HWREG(CPUSYS_BASE + SYSCTL_O_PCLKCR0 + regIndex) |=
        ((uint32_t)1U << bitIndex);
    EDIS;
}

//*****************************************************************************
//
//! Disables a peripheral.
//!
//! \param peripheral is the peripheral to disable.
//!
//! Peripherals are disabled with this function.  Once disabled, they will not
//! operate or respond to register reads/writes.
//!
//! \return None.
//
//*****************************************************************************
static inline void
SysCtl_disablePeripheral(SysCtl_PeripheralPCLOCKCR peripheral)
{
    uint16_t regIndex;
    uint16_t bitIndex;

    //
    // Decode the peripheral variable.
    //
    regIndex = (uint16_t)2U * ((uint16_t)peripheral &
                               (uint16_t)SYSCTL_PERIPH_REG_M);
    bitIndex = ((uint16_t)peripheral & SYSCTL_PERIPH_BIT_M) >>
               SYSCTL_PERIPH_BIT_S;

    EALLOW;

    //
    // Turn off the module clock.
    //
    HWREG(CPUSYS_BASE + SYSCTL_O_PCLKCR0 + regIndex) &=
        ~((uint32_t)1U << bitIndex);
    EDIS;
}

//*****************************************************************************
//
//! Resets the device.
//!
//! This function performs a watchdog reset of the device.
//!
//! \return This function does not return.
//
//*****************************************************************************
static inline void
SysCtl_resetDevice(void)
{
    //
    // Write an incorrect check value to the watchdog control register
    // This will cause a device reset
    //
    EALLOW;

    // Enable the watchdog
    HWREGH(WD_BASE + SYSCTL_O_WDCR) = SYSCTL_WD_CHKBITS;

    // Write a bad check value
    HWREGH(WD_BASE + SYSCTL_O_WDCR) = 0U;

    EDIS;

    //
    // The device should have reset, so this should never be reached.  Just in
    // case, loop forever.
    //
    while(1)
    {
    }
}

//*****************************************************************************
//
//! Gets the reason for a reset.
//!
//! This function will return the reason(s) for a reset.  Since the reset
//! reasons are sticky until either cleared by software or an external reset,
//! multiple reset reasons may be returned if multiple resets have occurred.
//! The reset reason will be a logical OR of
//! - \b SYSCTL_CAUSE_POR - Power-on reset
//! - \b SYSCTL_CAUSE_XRS - External reset pin
//! - \b SYSCTL_CAUSE_WDRS - Watchdog reset
//! - \b SYSCTL_CAUSE_NMIWDRS - NMI watchdog reset
//! - \b SYSCTL_CAUSE_SCCRESET - SCCRESETn reset from DCSM
//!
//! \note If you re-purpose the reserved boot ROM RAM, the POR and XRS reset
//! statuses won't be accurate.
//!
//! \return Returns the reason(s) for a reset.
//
//*****************************************************************************
static inline uint32_t
SysCtl_getResetCause(void)
{
    uint32_t resetCauses;

    //
    // Read CPU reset register
    //
    resetCauses = HWREG(CPUSYS_BASE + SYSCTL_O_RESC) &
                  ((uint32_t)SYSCTL_RESC_POR | (uint32_t)SYSCTL_RESC_XRSN |
                   (uint32_t)SYSCTL_RESC_WDRSN |
                   (uint32_t)SYSCTL_RESC_NMIWDRSN |
                   (uint32_t)SYSCTL_RESC_SCCRESETN
                   );

    //
    // Set POR and XRS Causes from boot ROM Status
    //
    if((HWREG(SYSCTL_BOOT_ROM_STATUS) & (uint32_t)SYSCTL_BOOT_ROM_POR) ==
       (uint32_t)SYSCTL_BOOT_ROM_POR)
    {
        resetCauses |= SYSCTL_RESC_POR;
    }
    if((HWREG(SYSCTL_BOOT_ROM_STATUS) & (uint32_t)SYSCTL_BOOT_ROM_XRS) ==
       (uint32_t)SYSCTL_BOOT_ROM_XRS)
    {
        resetCauses |= SYSCTL_RESC_XRSN;
    }

    //
    // Return the reset reasons.
    //
    return(resetCauses);
}

//*****************************************************************************
//
//! Clears reset reasons.
//!
//! \param rstCauses are the reset causes to be cleared; must be a logical
//! OR of \b SYSCTL_CAUSE_POR, \b SYSCTL_CAUSE_XRS, \b SYSCTL_CAUSE_WDRS,
//! \b SYSCTL_CAUSE_NMIWDRS,
//! and/or \b SYSCTL_CAUSE_SCCRESET.
//!
//! This function clears the specified sticky reset reasons.  Once cleared,
//! another reset for the same reason can be detected, and a reset for a
//! different reason can be distinguished (instead of having two reset causes
//! set).  If the reset reason is used by an application, all reset causes
//! should be cleared after they are retrieved with SysCtl_getResetCause().
//!
//! \note Some reset causes are cleared by the boot ROM.
//!
//! \return None.
//
//*****************************************************************************
static inline void
SysCtl_clearResetCause(uint32_t rstCauses)
{
    //
    // Clear the given reset reasons.
    //
    HWREG(CPUSYS_BASE + SYSCTL_O_RESC) = rstCauses;
}

//*****************************************************************************
//
//! Sets the low speed peripheral clock rate prescaler.
//!
//! \param prescaler is the LSPCLK rate relative to SYSCLK
//!
//! This function configures the clock rate of the low speed peripherals. The
//! \e prescaler parameter is the value by which the SYSCLK rate is divided to
//! get the LSPCLK rate. For example, a \e prescaler of
//! \b SYSCTL_LSPCLK_PRESCALE_4 will result in a LSPCLK rate that is a quarter
//! of the SYSCLK rate.
//!
//! \return None.
//
//*****************************************************************************
static inline void
SysCtl_setLowSpeedClock(SysCtl_LSPCLKPrescaler prescaler)
{
    //
    // Write the divider selection to the appropriate register.
    //
    EALLOW;
    HWREG(CLKCFG_BASE + SYSCTL_O_LOSPCP) =
        (HWREG(CLKCFG_BASE + SYSCTL_O_LOSPCP) & ~SYSCTL_LOSPCP_LSPCLKDIV_M) |
        (uint32_t)prescaler;
    EDIS;
}

//*****************************************************************************
//
//! Sets the ePWM clock divider.
//!
//! \param divider is the value by which PLLSYSCLK is divided
//!
//! This function configures the clock rate of the EPWMCLK. The
//! \e divider parameter is the value by which the SYSCLK rate is divided to
//! get the EPWMCLK rate. For example, \b SYSCTL_EPWMCLK_DIV_2 will select an
//! EPWMCLK rate that is half the PLLSYSCLK rate.
//!
//! \return None.
//
//*****************************************************************************
static inline void
SysCtl_setEPWMClockDivider(SysCtl_EPWMCLKDivider divider)
{
    //
    // Write the divider selection to the appropriate register.
    //
    EALLOW;
    HWREGH(CLKCFG_BASE + SYSCTL_O_PERCLKDIVSEL) =
        (HWREGH(CLKCFG_BASE + SYSCTL_O_PERCLKDIVSEL) &
         ~SYSCTL_PERCLKDIVSEL_EPWMCLKDIV_M) | (uint16_t)divider;
    EDIS;
}

//*****************************************************************************
//
//! Sets the EMIF1 clock divider.
//!
//! \param divider is the value by which PLLSYSCLK (or CPU1.SYSCLK on a dual
//! core device) is divided
//!
//! This function configures the clock rate of the EMIF1CLK. The
//! \e divider parameter is the value by which the SYSCLK rate is divided to
//! get the EMIF1CLK rate. For example, \b SYSCTL_EMIF1CLK_DIV_2 will select an
//! EMIF1CLK rate that is half the PLLSYSCLK (or CPU1.SYSCLK on a dual
//! core device) rate.
//!
//! \return None.
//
//*****************************************************************************
static inline void
SysCtl_setEMIF1ClockDivider(SysCtl_EMIF1CLKDivider divider)
{
    //
    // Write the divider selection to the appropriate register.
    //
    EALLOW;
    if(divider == SYSCTL_EMIF1CLK_DIV_2)
    {
        HWREGH(CLKCFG_BASE + SYSCTL_O_PERCLKDIVSEL) |=
            SYSCTL_PERCLKDIVSEL_EMIF1CLKDIV;
    }
    else
    {
        HWREGH(CLKCFG_BASE + SYSCTL_O_PERCLKDIVSEL) &=
            ~SYSCTL_PERCLKDIVSEL_EMIF1CLKDIV;
    }
    EDIS;
}

//*****************************************************************************
//
//! Sets the EMIF2 clock divider.
//!
//! \param divider is the value by which PLLSYSCLK (or CPU1.SYSCLK on a dual
//! core device) is divided
//!
//! This function configures the clock rate of the EMIF2CLK. The
//! \e divider parameter is the value by which the SYSCLK rate is divided to
//! get the EMIF2CLK rate. For example, \b SYSCTL_EMIF2CLK_DIV_2 will select an
//! EMIF2CLK rate that is half the PLLSYSCLK (or CPU1.SYSCLK on a dual
//! core device) rate.
//!
//! \return None.
//
//*****************************************************************************
static inline void
SysCtl_setEMIF2ClockDivider(SysCtl_EMIF2CLKDivider divider)
{
    //
    // Write the divider selection to the appropriate register.
    //
    EALLOW;
    if(divider == SYSCTL_EMIF2CLK_DIV_2)
    {
        HWREGH(CLKCFG_BASE + SYSCTL_O_PERCLKDIVSEL) |=
            SYSCTL_PERCLKDIVSEL_EMIF2CLKDIV;
    }
    else
    {
        HWREGH(CLKCFG_BASE + SYSCTL_O_PERCLKDIVSEL) &=
            ~SYSCTL_PERCLKDIVSEL_EMIF2CLKDIV;
    }
    EDIS;
}

//*****************************************************************************
//
//! Selects a clock source to mux to an external GPIO pin (XCLKOUT).
//!
//! \param source is the internal clock source to be configured.
//!
//! This function configures the specified clock source to be muxed to an
//! external clock out (XCLKOUT) GPIO pin. The \e source parameter may take a
//! value of one of the following values:
//! - \b SYSCTL_CLOCKOUT_PLLSYS
//! - \b SYSCTL_CLOCKOUT_PLLRAW
//! - \b SYSCTL_CLOCKOUT_SYSCLK
//! - \b SYSCTL_CLOCKOUT_INTOSC1
//! - \b SYSCTL_CLOCKOUT_INTOSC2
//! - \b SYSCTL_CLOCKOUT_XTALOSC
//!
//! \return None.
//
//*****************************************************************************
static inline void
SysCtl_selectClockOutSource(SysCtl_ClockOut source)
{
    EALLOW;

    //
    // Clear clock out source
    //
    HWREGH(CLKCFG_BASE + SYSCTL_O_CLKSRCCTL3) &=
        ~SYSCTL_CLKSRCCTL3_XCLKOUTSEL_M;

    //
    // Set clock out source
    //
    HWREGH(CLKCFG_BASE + SYSCTL_O_CLKSRCCTL3) |= (uint16_t)source;

    EDIS;
}

//*****************************************************************************
//
//! Gets the external oscillator counter value.
//!
//! This function returns the X1 clock counter value. When the return value
//! reaches 0x3FF, it freezes. Before switching from INTOSC2 to an external
//! oscillator (XTAL), an application should call this function to make sure
//! the counter is saturated.
//!
//! \return Returns the value of the 10-bit X1 clock counter.
//
//*****************************************************************************
static inline uint16_t
SysCtl_getExternalOscCounterValue(void)
{
    return(HWREGH(CLKCFG_BASE + SYSCTL_O_X1CNT) & SYSCTL_X1CNT_X1CNT_M);
}

//*****************************************************************************
//
//! Turns on the specified oscillator sources.
//!
//! \param oscSource is the oscillator source to be configured.
//!
//! This function turns on the oscillator specified by the \e oscSource
//! parameter which may take a value of  \b SYSCTL_OSCSRC_OSC2 or
//! \b SYSCTL_OSCSRC_XTAL.
//!
//! \note \b SYSCTL_OSCSRC_OSC1 is not a valid value for \e oscSource.
//!
//! \return None.
//
//*****************************************************************************
static inline void
SysCtl_turnOnOsc(uint32_t oscSource)
{
    ASSERT((oscSource == SYSCTL_OSCSRC_OSC2) |
           (oscSource == SYSCTL_OSCSRC_XTAL));

    EALLOW;

    switch(oscSource)
    {
        case SYSCTL_OSCSRC_OSC2:
            // Turn on INTOSC2
            HWREGH(CLKCFG_BASE + SYSCTL_O_CLKSRCCTL1) &=
                ~SYSCTL_CLKSRCCTL1_INTOSC2OFF;
            break;

        case SYSCTL_OSCSRC_XTAL:
            // Turn on XTALOSC
            HWREGH(CLKCFG_BASE + SYSCTL_O_CLKSRCCTL1) &=
                ~SYSCTL_CLKSRCCTL1_XTALOFF;

            break;

        default:
            // Do nothing. Not a valid oscSource value.
            break;
    }

    EDIS;
}

//*****************************************************************************
//
//! Turns off the specified oscillator sources.
//!
//! \param oscSource is the oscillator source to be configured.
//!
//! This function turns off the oscillator specified by the \e oscSource
//! parameter which may take a value of  \b SYSCTL_OSCSRC_OSC2 or
//! \b SYSCTL_OSCSRC_XTAL.
//!
//! \note \b SYSCTL_OSCSRC_OSC1 is not a valid value for \e oscSource.
//!
//! \return None.
//
//*****************************************************************************
static inline void
SysCtl_turnOffOsc(uint32_t oscSource)
{
    ASSERT((oscSource == SYSCTL_OSCSRC_OSC2) |
           (oscSource == SYSCTL_OSCSRC_XTAL));

    EALLOW;

    switch(oscSource)
    {
        case SYSCTL_OSCSRC_OSC2:
            // Turn off INTOSC2
            HWREGH(CLKCFG_BASE + SYSCTL_O_CLKSRCCTL1) |=
                SYSCTL_CLKSRCCTL1_INTOSC2OFF;
            break;

        case SYSCTL_OSCSRC_XTAL:
            // Turn off XTALOSC
            HWREGH(CLKCFG_BASE + SYSCTL_O_CLKSRCCTL1) |=
                SYSCTL_CLKSRCCTL1_XTALOFF;
            break;

        default:
            // Do nothing. Not a valid oscSource value.
            break;
    }

    EDIS;
}

//*****************************************************************************
//
//! Enters IDLE mode.
//!
//! This function puts the device into IDLE mode. The CPU clock is gated while
//! all peripheral clocks are left running. Any enabled interrupt will wake the
//! CPU up from IDLE mode.
//!
//! \return None.
//
//*****************************************************************************
static inline void
SysCtl_enterIdleMode(void)
{
    EALLOW;

    //
    // Configure the device to go into IDLE mode when IDLE is executed.
    //
    HWREG(CPUSYS_BASE + SYSCTL_O_LPMCR) =
        (HWREG(CPUSYS_BASE + SYSCTL_O_LPMCR) & ~SYSCTL_LPMCR_LPM_M) |
        SYSCTL_LPM_IDLE;

    EDIS;

#ifndef _DUAL_HEADERS
    IDLE;
#else
    IDLE_ASM;
#endif
}

//*****************************************************************************
//
//! Enters STANDBY mode.
//!
//! This function puts the device into STANDBY mode. This will gate both the
//! CPU clock and any peripheral clocks derived from SYSCLK. The watchdog is
//! left active, and an NMI or an optional watchdog interrupt will wake the
//! CPU subsystem from STANDBY mode.
//!
//! GPIOs may be configured to wake the CPU subsystem. See
//! SysCtl_enableLPMWakeupPin().
//!
//! The CPU will receive an interrupt (WAKEINT) on wakeup.
//!
//! \return None.
//
//*****************************************************************************
static inline void
SysCtl_enterStandbyMode(void)
{
    EALLOW;

    //
    // Configure the device to go into STANDBY mode when IDLE is executed.
    //
    HWREG(CPUSYS_BASE + SYSCTL_O_LPMCR) =
        (HWREG(CPUSYS_BASE + SYSCTL_O_LPMCR) & ~SYSCTL_LPMCR_LPM_M) |
        SYSCTL_LPM_STANDBY;

    EDIS;

#ifndef _DUAL_HEADERS
    IDLE;
#else
    IDLE_ASM;
#endif
}
//*****************************************************************************
//
//! Enters HALT mode.
//!
//! This function puts the device into HALT mode. This will gate almost all
//! systems and clocks and allows for the power-down of oscillators and analog
//! blocks. The watchdog may be left clocked to produce a reset. See
//! SysCtl_enableWatchdogInHalt() to enable this. GPIOs should be
//! configured to wake the CPU subsystem. See SysCtl_enableLPMWakeupPin().
//!
//! Enter HALT mode (dual CPU). Puts CPU2 in IDLE mode first.
//!
//! The CPU will receive an interrupt (WAKEINT) on wakeup.
//!
//! \return None.
//
//*****************************************************************************
static inline void
SysCtl_enterHaltMode(void)
{

    #if defined(CPU2)
        EALLOW;
        //
        // Configure the device to go into IDLE mode when IDLE is executed.
        //
        HWREG(CPUSYS_BASE + SYSCTL_O_LPMCR) =
            (HWREG(CPUSYS_BASE + SYSCTL_O_LPMCR) & ~SYSCTL_LPMCR_LPM_M) |
            SYSCTL_LPM_IDLE;

        EDIS;
        asm(" IDLE");
    #elif defined(CPU1)
        EALLOW;

        //
        // Configure the device to go into HALT mode when IDLE is executed.
        //
        HWREG(CPUSYS_BASE + SYSCTL_O_LPMCR) =
            (HWREG(CPUSYS_BASE + SYSCTL_O_LPMCR) & ~SYSCTL_LPMCR_LPM_M) |
            SYSCTL_LPM_HALT;

        HWREGH(CLKCFG_BASE +
               SYSCTL_O_SYSPLLCTL1) &= ~(SYSCTL_SYSPLLCTL1_PLLCLKEN |
                                         SYSCTL_SYSPLLCTL1_PLLEN);

        EDIS;

#ifndef _DUAL_HEADERS
        IDLE;
#else
        IDLE_ASM;
#endif
    #endif

}

//*****************************************************************************
//
//! Enters Hibernate mode.
//!
//! This function puts the device into Hibernate mode. Hibernate (HIB) is a
//! global low-power mode that gates the supply voltages to most of the system.
//! This mode affects both CPU subsystems. HIB is essentially a controlled
//! power-down with remote wakeup capability, and can be used to save power
//! during long periods of inactivity.
//!
//! To wake the device from HIB mode:
//!   1. Assert the dedicated GPIOHIBWAKE pin (GPIO41) low to enable the
//!      power-up of the device clock sources.
//!   2. Assert GPIOHIBWAKE pin high again. This triggers the power-up of the
//!      rest of the device.
//!
//! To enter Hibernate mode in dual CPU put CPU2 in STANDBY mode first.
//!
//! \return None.
//
//*****************************************************************************
static inline void
SysCtl_enterHibernateMode(void)
{

    #if defined(CPU2)
        EALLOW;
        //
        // Configure the device to go into STANDBY mode when IDLE is executed.
        //
        HWREG(CPUSYS_BASE + SYSCTL_O_LPMCR) =
            (HWREG(CPUSYS_BASE + SYSCTL_O_LPMCR) & ~SYSCTL_LPMCR_LPM_M) |
            SYSCTL_LPM_STANDBY;

        EDIS;
        asm(" IDLE");
    #elif defined(CPU1)
        EALLOW;

        //
        // Configure the device to go into Hibernate mode when IDLE is executed
        //
        HWREG(CPUSYS_BASE + SYSCTL_O_LPMCR) =
            (HWREG(CPUSYS_BASE + SYSCTL_O_LPMCR) & ~SYSCTL_LPMCR_LPM_M) |
            SYSCTL_LPM_HIB;

        HWREGH(CLKCFG_BASE +
               SYSCTL_O_SYSPLLCTL1) &= ~(SYSCTL_SYSPLLCTL1_PLLCLKEN |
                                         SYSCTL_SYSPLLCTL1_PLLEN);

        EDIS;

#ifndef _DUAL_HEADERS
        IDLE;
#else
        IDLE_ASM;
#endif
    #endif
}

//*****************************************************************************
//! Enables a pin to wake up the device from STANDBY or HALT.
//!
//! \param pin is the identifying number of the pin.
//!
//! This function connects a pin to the LPM circuit, allowing an event on the
//! pin to wake up the device when when it is in STANDBY or HALT mode.
//!
//! The pin is specified by its numerical value. For example, GPIO34 is
//! specified by passing 34 as \e pin. Only GPIOs 0 through 63 are capable of
//! being connected to the LPM circuit.
//!
//! \return None.
//
//*****************************************************************************
static inline void
SysCtl_enableLPMWakeupPin(uint32_t pin)
{
    uint32_t pinMask;

    //
    // Check the arguments.
    //
    ASSERT(pin <= 63U);

    pinMask = (uint32_t)1U << (uint32_t)(pin % 32U);

    EALLOW;

    if(pin < 32U)
    {
        HWREG(CPUSYS_BASE + SYSCTL_O_GPIOLPMSEL0) |= pinMask;
    }
    else
    {
        HWREG(CPUSYS_BASE + SYSCTL_O_GPIOLPMSEL1) |= pinMask;
    }

    EDIS;
}

//*****************************************************************************
//! Disables a pin to wake up the device from STANDBY or HALT.
//!
//! \param pin is the identifying number of the pin.
//!
//! This function disconnects a pin to the LPM circuit, disallowing an event on
//! the pin to wake up the device when when it is in STANDBY or HALT mode.
//!
//! The pin is specified by its numerical value. For example, GPIO34 is
//! specified by passing 34 as \e pin. Only GPIOs 0 through 63 are valid.
//!
//! \return None.
//
//*****************************************************************************
static inline void
SysCtl_disableLPMWakeupPin(uint32_t pin)
{
    uint32_t pinMask;

    //
    // Check the arguments.
    //
    ASSERT(pin <= 63U);

    pinMask = (uint32_t)1U << (uint32_t)(pin % 32U);

    EALLOW;

    if(pin < 32U)
    {
        HWREG(CPUSYS_BASE + SYSCTL_O_GPIOLPMSEL0) &= ~pinMask;
    }
    else
    {
        HWREG(CPUSYS_BASE + SYSCTL_O_GPIOLPMSEL1) &= ~pinMask;
    }

    EDIS;
}

//*****************************************************************************
//
//! Sets the number of cycles to qualify an input on waking from STANDBY mode.
//!
//! \param cycles is the number of OSCCLK cycles.
//!
//! This function sets the number of OSCCLK clock cycles used to qualify the
//! selected inputs when waking from STANDBY mode. The \e cycles parameter
//! should be passed a cycle count between 2 and 65 cycles inclusive.
//!
//! \return None.
//
//*****************************************************************************
static inline void
SysCtl_setStandbyQualificationPeriod(uint16_t cycles)
{
    //
    // Check the arguments.
    //
    ASSERT((cycles >= 2U) && (cycles <= 65U));

    EALLOW;

    HWREGH(CPUSYS_BASE + SYSCTL_O_LPMCR) =
        (HWREGH(CPUSYS_BASE + SYSCTL_O_LPMCR) &
         ~(uint16_t)SYSCTL_LPMCR_QUALSTDBY_M) |
        ((cycles - (uint16_t)2U) << SYSCTL_LPMCR_QUALSTDBY_S);

    EDIS;
}

//*****************************************************************************
//
//! Enable the device to wake from STANDBY mode upon a watchdog interrupt.
//!
//! \note In order to use this option, you must configure the watchdog to
//! generate an interrupt using SysCtl_setWatchdogMode().
//!
//! \return None.
//
//*****************************************************************************
static inline void
SysCtl_enableWatchdogStandbyWakeup(void)
{
    EALLOW;

    //
    // Set the bit enables the watchdog to wake up the device from STANDBY.
    //
    HWREGH(CPUSYS_BASE + SYSCTL_O_LPMCR) |= SYSCTL_LPMCR_WDINTE;

    EDIS;
}

//*****************************************************************************
//
//! Disable the device from waking from STANDBY mode upon a watchdog interrupt.
//!
//! \return None.
//
//*****************************************************************************
static inline void
SysCtl_disableWatchdogStandbyWakeup(void)
{
    EALLOW;

    //
    // Clear the bit enables the watchdog to wake up the device from STANDBY.
    //
    HWREGH(CPUSYS_BASE + SYSCTL_O_LPMCR) &= ~SYSCTL_LPMCR_WDINTE;

    EDIS;
}

//*****************************************************************************
//
//! Enable the watchdog to run while in HALT mode.
//!
//! This function configures the watchdog to continue to run while in HALT
//! mode. Additionally, INTOSC1 and INTOSC2 are not powered down when the
//! system enters HALT mode. By default the watchdog is gated when the system
//! enters HALT.
//!
//! \return None.
//
//*****************************************************************************
static inline void
SysCtl_enableWatchdogInHalt(void)
{
    EALLOW;

    //
    // Set the watchdog HALT mode ignore bit.
    //
    HWREGH(CLKCFG_BASE + SYSCTL_O_CLKSRCCTL1) |= SYSCTL_CLKSRCCTL1_WDHALTI;

    EDIS;
}

//*****************************************************************************
//
//! Disable the watchdog from running while in HALT mode.
//!
//! This function gates the watchdog when the system enters HALT mode. INTOSC1
//! and INTOSC2 will be powered down. This is the default behavior of the
//! device.
//!
//! \return None.
//
//*****************************************************************************
static inline void
SysCtl_disableWatchdogInHalt(void)
{
    EALLOW;

    //
    // Clear the watchdog HALT mode ignore bit.
    //
    HWREGH(CLKCFG_BASE + SYSCTL_O_CLKSRCCTL1) &= ~SYSCTL_CLKSRCCTL1_WDHALTI;

    EDIS;
}

//*****************************************************************************
//
//! Configures whether the watchdog generates a reset or an interrupt signal.
//!
//! \param mode is a flag to select the watchdog mode.
//!
//! This function configures the action taken when the watchdog counter reaches
//! its maximum value. When the \e mode parameter is
//! \b SYSCTL_WD_MODE_INTERRUPT, the watchdog is enabled to generate a watchdog
//! interrupt signal and disables the generation of a reset signal. This will
//! allow the watchdog module to wake up the device from IDLE or STANDBY if
//! desired (see SysCtl_enableWatchdogStandbyWakeup()).
//!
//! When the \e mode parameter is \b SYSCTL_WD_MODE_RESET, the watchdog will
//! be put into reset mode and generation of a watchdog interrupt signal will
//! be disabled. This is how the watchdog is configured by default.
//!
//! \note Check the status of the watchdog interrupt using
//! SysCtl_isWatchdogInterruptActive() before calling this function. If the
//! interrupt is still active, switching from interrupt mode to reset mode will
//! immediately reset the device.
//!
//! \return None.
//
//*****************************************************************************
static inline void
SysCtl_setWatchdogMode(SysCtl_WDMode mode)
{
    EALLOW;

    //
    // Either set or clear the WDENINT bit to that will determine whether the
    // watchdog will generate a reset signal or an interrupt signal. Take care
    // not to write a 1 to WDOVERRIDE.
    //
    if(mode == SYSCTL_WD_MODE_INTERRUPT)
    {
        HWREGH(WD_BASE + SYSCTL_O_SCSR) = (HWREGH(WD_BASE + SYSCTL_O_SCSR) &
                                           ~SYSCTL_SCSR_WDOVERRIDE) |
                                          SYSCTL_SCSR_WDENINT;
    }
    else
    {
        HWREGH(WD_BASE + SYSCTL_O_SCSR) &= ~(SYSCTL_SCSR_WDENINT |
                                             SYSCTL_SCSR_WDOVERRIDE);
    }

    EDIS;
}

//*****************************************************************************
//
//! Gets the status of the watchdog interrupt signal.
//!
//! This function returns the status of the watchdog interrupt signal. If the
//! interrupt is active, this function will return \b true. If \b false, the
//! interrupt is NOT active.
//!
//! \note Make sure to call this function to ensure that the interrupt is not
//! active before making any changes to the configuration of the watchdog to
//! prevent any unexpected behavior. For instance, switching from interrupt
//! mode to reset mode while the interrupt is active will immediately reset the
//! device.
//!
//! \return \b true if the interrupt is active and \b false if it is not.
//
//*****************************************************************************
static inline bool
SysCtl_isWatchdogInterruptActive(void)
{
    //
    // If the status bit is cleared, the WDINTn signal is active.
    //
    return((HWREGH(WD_BASE + SYSCTL_O_SCSR) & SYSCTL_SCSR_WDINTS) == 0U);
}

//*****************************************************************************
//
//! Disables the watchdog.
//!
//! This function disables the watchdog timer. Note that the watchdog timer is
//! enabled on reset.
//!
//! \return None.
//
//*****************************************************************************
static inline void
SysCtl_disableWatchdog(void)
{
    EALLOW;

    //
    // Set the disable bit.
    //
    HWREGH(WD_BASE + SYSCTL_O_WDCR) |= SYSCTL_WD_CHKBITS | SYSCTL_WDCR_WDDIS;

    EDIS;
}

//*****************************************************************************
//
//! Enables the watchdog.
//!
//! This function enables the watchdog timer. Note that the watchdog timer is
//! enabled on reset.
//!
//! \return None.
//
//*****************************************************************************
static inline void
SysCtl_enableWatchdog(void)
{
    EALLOW;

    //
    // Clear the disable bit.
    //
    HWREGH(WD_BASE + SYSCTL_O_WDCR) = (HWREGH(WD_BASE + SYSCTL_O_WDCR) &
                                       ~SYSCTL_WDCR_WDDIS) | SYSCTL_WD_CHKBITS;

    EDIS;
}

//*****************************************************************************
//
//! Services the watchdog.
//!
//! This function resets the watchdog.
//!
//! \return None.
//
//*****************************************************************************
static inline void
SysCtl_serviceWatchdog(void)
{
    EALLOW;

    //
    // Enable the counter to be reset and then reset it.
    //
    HWREGH(WD_BASE + SYSCTL_O_WDKEY) = SYSCTL_WD_ENRSTKEY;
    HWREGH(WD_BASE + SYSCTL_O_WDKEY) = SYSCTL_WD_RSTKEY;

    EDIS;
}

//*****************************************************************************
//
//! Sets up watchdog clock (WDCLK) prescaler.
//!
//! \param prescaler is the value that configures the watchdog clock relative
//! to the value from the pre-divider.
//!
//! This function sets up the watchdog clock (WDCLK) prescaler. The
//! \e prescaler parameter divides INTOSC1 down to WDCLK.
//!
//! \return None.
//
//*****************************************************************************
static inline void
SysCtl_setWatchdogPrescaler(SysCtl_WDPrescaler prescaler)
{
    uint16_t regVal;

    regVal = (uint16_t)prescaler | (uint16_t)SYSCTL_WD_CHKBITS;

    EALLOW;

    //
    // Write the prescaler to the appropriate register.
    //
    HWREGH(WD_BASE + SYSCTL_O_WDCR) = (HWREGH(WD_BASE + SYSCTL_O_WDCR) &
                                       ~(SYSCTL_WDCR_WDPS_M)) | regVal;

    EDIS;
}

//*****************************************************************************
//
//! Gets the watchdog counter value.
//!
//! \return Returns the current value of the 8-bit watchdog counter. If this
//! count value overflows, a watchdog output pulse is generated.
//
//*****************************************************************************
static inline uint16_t
SysCtl_getWatchdogCounterValue(void)
{
    //
    // Read and return the value of the watchdog counter.
    //
    return(HWREGH(WD_BASE + SYSCTL_O_WDCNTR));
}

//*****************************************************************************
//
//! Gets the watchdog reset status.
//!
//! This function returns the watchdog reset status. If this function returns
//! \b true, that indicates that a watchdog reset generated the last reset
//! condition. Otherwise, it was an external device or power-up reset
//! condition.
//!
//! \return Returns \b true if the watchdog generated the last reset condition.
//
//*****************************************************************************
static inline bool
SysCtl_getWatchdogResetStatus(void)
{
    //
    // Read and return the status of the watchdog reset status flag.
    //
    return((HWREGH(CPUSYS_BASE + SYSCTL_O_RESC) & SYSCTL_RESC_WDRSN) != 0U);
}

//*****************************************************************************
//
//! Clears the watchdog reset status.
//!
//! This function clears the watchdog reset status. To check if it was set
//! first, see SysCtl_getWatchdogResetStatus().
//!
//! \return None.
//
//*****************************************************************************
static inline void
SysCtl_clearWatchdogResetStatus(void)
{
    EALLOW;

    //
    // Read and return the status of the watchdog reset status flag.
    //
    HWREGH(CPUSYS_BASE + SYSCTL_O_RESC) = SYSCTL_RESC_WDRSN;

    EDIS;
}

//*****************************************************************************
//
//! Set the minimum threshold value for windowed watchdog
//!
//! \param value is the value to set the window threshold
//!
//! This function sets the minimum threshold value used to define the lower
//! limit of the windowed watchdog functionality.
//!
//! \return None.
//
//*****************************************************************************
static inline void
SysCtl_setWatchdogWindowValue(uint16_t value)
{
    EALLOW;

    //
    // Clear the windowed value
    //
    HWREGH(WD_BASE + SYSCTL_O_WDWCR) &= ~SYSCTL_WDWCR_MIN_M;

    //
    // Set the windowed value
    //
    HWREGH(WD_BASE + SYSCTL_O_WDWCR) |= (value & SYSCTL_WDWCR_MIN_M);

    EDIS;
}

//*****************************************************************************
//
//! Enable the NMI Global interrupt bit
//!
//! \b Note: This bit should be set after the device security related
//! initialization is complete.
//!
//! \return None.
//
//*****************************************************************************
static inline void
SysCtl_enableNMIGlobalInterrupt(void)
{
    EALLOW;

    HWREGH(NMI_BASE + NMI_O_CFG) |= NMI_CFG_NMIE;

    EDIS;
}

//*****************************************************************************
//
//! Read NMI interrupts.
//!
//! Read the current state of NMI interrupt.
//!
//! \return \b true if NMI interrupt is triggered, \b false if not.
//
//*****************************************************************************
static inline bool
SysCtl_getNMIStatus(void)
{
    //
    // Read and return the current value of the NMI flag register, masking out
    // all but the NMI bit.
    //
    return((HWREGH(NMI_BASE + NMI_O_FLG) & NMI_FLG_NMIINT) != 0U);
}

//*****************************************************************************
//
//! Read NMI Flags.
//!
//! Read the current state of individual NMI interrupts
//!
//! \return Value of NMIFLG register. These defines are provided to decode
//! the value:
//! - \b SYSCTL_NMI_NMIINT - Non-maskable interrupt
//! - \b SYSCTL_NMI_CLOCKFAIL - Clock Failure
//! - \b SYSCTL_NMI_RAMUNCERR - Uncorrectable RAM error
//! - \b SYSCTL_NMI_FLUNCERR - Uncorrectable Flash error
//! - \b SYSCTL_NMI_PIEVECTERR - PIE Vector Fetch Error
//! - \b SYSCTL_NMI_CPU2WDRSN - CPU2 WDRSn Reset
//! - \b SYSCTL_NMI_CPU2NMIWDRSN - CPU2 NMIWDRSn Reset

//
//*****************************************************************************
static inline uint16_t
SysCtl_getNMIFlagStatus(void)
{
    //
    // Read and return the current value of the NMI flag register.
    //
    return(HWREGH(NMI_BASE + NMI_O_FLG));
}

//*****************************************************************************
//
//! Check if the individual NMI interrupts are set.
//!
//! \param nmiFlags Bit mask of the NMI interrupts that user wants to clear.
//! The bit format of this parameter is same as of the NMIFLG register. These
//! defines are provided:
//! - \b SYSCTL_NMI_NMIINT - Non-maskable interrupt
//! - \b SYSCTL_NMI_CLOCKFAIL - Clock Failure
//! - \b SYSCTL_NMI_RAMUNCERR - Uncorrectable RAM error
//! - \b SYSCTL_NMI_FLUNCERR - Uncorrectable Flash error
//! - \b SYSCTL_NMI_PIEVECTERR - PIE vector Fetch error
//! - \b SYSCTL_NMI_CPU2WDRSN - CPU2 WDRSn Reset
//! - \b SYSCTL_NMI_CPU2NMIWDRSN - CPU2 NMIWDRSn Reset
//!
//! Check if interrupt flags corresponding to the passed in bit mask are
//! asserted.
//!
//! \return \b true if any of the NMI asked for in the parameter bit mask
//! is set. \b false if none of the NMI requested in the parameter bit mask are
//! set.
//
//*****************************************************************************
static inline bool
SysCtl_isNMIFlagSet(uint32_t nmiFlags)
{
    //
    // Check the arguments.
    // Make sure if reserved bits are not set in nmiFlags.
    //
    ASSERT((nmiFlags & ~(SYSCTL_NMI_NMIINT | SYSCTL_NMI_CLOCKFAIL |
                         SYSCTL_NMI_RAMUNCERR | SYSCTL_NMI_FLUNCERR |
                         SYSCTL_NMI_PIEVECTERR | SYSCTL_NMI_CPU2WDRSN |
                         SYSCTL_NMI_CPU2NMIWDRSN)) == 0);

    //
    // Read the flag register and return true if any of them are set.
    //
    return((HWREGH(NMI_BASE + NMI_O_FLG) & nmiFlags) != 0U);
}

//*****************************************************************************
//
//! Function to clear individual NMI interrupts.
//!
//! \param nmiFlags Bit mask of the NMI interrupts that user wants to clear.
//! The bit format of this parameter is same as of the NMIFLG register. These
//! defines are provided:
//! - \b SYSCTL_NMI_CLOCKFAIL
//! - \b SYSCTL_NMI_RAMUNCERR
//! - \b SYSCTL_NMI_FLUNCERR
//! - \b SYSCTL_NMI_PIEVECTERR
//! - \b SYSCTL_NMI_CPU2WDRSN
//! - \b SYSCTL_NMI_CPU2NMIWDRSN
//!
//! Clear NMI interrupt flags that correspond with the passed in bit mask.
//!
//! \b Note: The NMI Interrupt flag is always cleared by default and
//! therefore doesn't have to be included in the bit mask.
//!
//! \return None.
//
//*****************************************************************************
static inline void
SysCtl_clearNMIStatus(uint32_t nmiFlags)
{
    //
    // Check the arguments.
    // Make sure if reserved bits are not set in nmiFlags.
    //
    ASSERT((nmiFlags & ~(SYSCTL_NMI_NMIINT | SYSCTL_NMI_CLOCKFAIL |
                         SYSCTL_NMI_RAMUNCERR | SYSCTL_NMI_FLUNCERR |
                         SYSCTL_NMI_PIEVECTERR | SYSCTL_NMI_CPU2WDRSN |
                         SYSCTL_NMI_CPU2NMIWDRSN)) == 0);

    EALLOW;

    //
    // Clear the individual flags as well as NMI Interrupt flag
    //
    HWREGH(NMI_BASE + NMI_O_FLGCLR) = nmiFlags;
    HWREGH(NMI_BASE + NMI_O_FLGCLR) = NMI_FLG_NMIINT;

    EDIS;
}

//*****************************************************************************
//
//! Clear all the NMI Flags that are currently set.
//!
//! \return None.
//
//*****************************************************************************
static inline void
SysCtl_clearAllNMIFlags(void)
{
    uint16_t nmiFlags;

    //
    // Read the flag status register and then write to the clear register,
    // clearing all the flags that were returned plus the NMI flag.
    //
    EALLOW;

    nmiFlags = SysCtl_getNMIFlagStatus();
    HWREGH(NMI_BASE + NMI_O_FLGCLR) = nmiFlags;
    HWREGH(NMI_BASE + NMI_O_FLGCLR) = NMI_FLG_NMIINT;

    EDIS;
}

//*****************************************************************************
//
//! Function to force individual NMI interrupt fail flags
//!
//! \param nmiFlags Bit mask of the NMI interrupts that user wants to clear.
//! The bit format of this parameter is same as of the NMIFLG register. These
//! defines are provided:
//! - \b SYSCTL_NMI_CLOCKFAIL
//! - \b SYSCTL_NMI_RAMUNCERR
//! - \b SYSCTL_NMI_FLUNCERR
//! - \b SYSCTL_NMI_PIEVECTERR
//! - \b SYSCTL_NMI_CPU2WDRSN
//! - \b SYSCTL_NMI_CPU2NMIWDRSN
//!
//! \return None.
//
//*****************************************************************************
static inline void
SysCtl_forceNMIFlags(uint32_t nmiFlags)
{
    //
    // Check the arguments.
    // Make sure if reserved bits are not set in nmiFlags.
    //
    ASSERT((nmiFlags & ~(SYSCTL_NMI_NMIINT | SYSCTL_NMI_CLOCKFAIL |
                         SYSCTL_NMI_RAMUNCERR | SYSCTL_NMI_FLUNCERR |
                         SYSCTL_NMI_PIEVECTERR | SYSCTL_NMI_CPU2WDRSN |
                         SYSCTL_NMI_CPU2NMIWDRSN)) == 0);

    EALLOW;

    //
    // Set the Flags for the individual interrupts in the NMI flag
    // force register
    //
    HWREGH(NMI_BASE + NMI_O_FLGFRC) |= nmiFlags;

    EDIS;
}

//*****************************************************************************
//
//! Gets the NMI watchdog counter value.
//!
//! \b Note: The counter is clocked at the SYSCLKOUT rate.
//!
//! \return Returns the NMI watchdog counter register's current value.
//
//*****************************************************************************
static inline uint16_t
SysCtl_getNMIWatchdogCounter(void)
{
    //
    // Read and return the NMI watchdog counter register's value.
    //
    return(HWREGH(NMI_BASE + NMI_O_WDCNT));
}

//*****************************************************************************
//
//! Sets the NMI watchdog period value.
//!
//! \param wdPeriod is the 16-bit value at which a reset is generated.
//!
//! This function writes to the NMI watchdog period register that holds the
//! value to which the NMI watchdog counter is compared. When the two registers
//! match, a reset is generated. By default, the period is 0xFFFF.
//!
//! \note If a value smaller than the current counter value is passed into the
//! \e wdPeriod parameter, a NMIRSn will be forced.
//!
//! \return None.
//
//*****************************************************************************
static inline void
SysCtl_setNMIWatchdogPeriod(uint16_t wdPeriod)
{
    EALLOW;

    //
    // Write to the period register.
    //
    HWREGH(NMI_BASE + NMI_O_WDPRD) = wdPeriod;

    EDIS;
}

//*****************************************************************************
//
//! Gets the NMI watchdog period value.
//!
//! \return Returns the NMI watchdog period register's current value.
//
//*****************************************************************************
static inline uint16_t
SysCtl_getNMIWatchdogPeriod(void)
{
    //
    // Read and return the NMI watchdog period register's value.
    //
    return(HWREGH(NMI_BASE + NMI_O_WDPRD));
}

//*****************************************************************************
//
//! Read NMI Shadow Flags.
//!
//! Read the current state of individual NMI interrupts
//!
//! \return Value of NMISHDFLG register. These defines are provided to decode
//! the value:
//! - \b SYSCTL_NMI_NMIINT - Non-maskable interrupt
//! - \b SYSCTL_NMI_CLOCKFAIL - Clock Failure
//! - \b SYSCTL_NMI_RAMUNCERR - Uncorrectable RAM error
//! - \b SYSCTL_NMI_FLUNCERR - Uncorrectable Flash error
//! - \b SYSCTL_NMI_PIEVECTERR - PIE Vector Fetch Error
//! - \b SYSCTL_NMI_CPU2WDRSN - CPU2 WDRSn Reset
//! - \b SYSCTL_NMI_CPU2NMIWDRSN - CPU2 NMIWDRSn Reset
//
//*****************************************************************************
static inline uint32_t
SysCtl_getNMIShadowFlagStatus(void)
{
    //
    // Read and return the current value of the NMI shadow flag register.
    //
    return(HWREGH(NMI_BASE + NMI_O_SHDFLG));
}

//*****************************************************************************
//
//! Check if the individual NMI shadow flags are set.
//!
//! \param nmiFlags Bit mask of the NMI interrupts that user wants  to clear.
//! The bit format of this parameter is same as of the NMIFLG register. These
//! defines are provided:
//! - \b SYSCTL_NMI_NMIINT
//! - \b SYSCTL_NMI_CLOCKFAIL
//! - \b SYSCTL_NMI_RAMUNCERR
//! - \b SYSCTL_NMI_FLUNCERR
//! - \b SYSCTL_NMI_PIEVECTERR
//! - \b SYSCTL_NMI_CPU2WDRSN
//! - \b SYSCTL_NMI_CPU2NMIWDRSN
//!
//! Check if interrupt flags corresponding to the passed in bit mask are
//! asserted.
//!
//! \return \b true if any of the NMI asked for in the parameter bit mask
//! is set. \b false if none of the NMI requested in the parameter bit mask are
//! set.
//
//*****************************************************************************
static inline bool
SysCtl_isNMIShadowFlagSet(uint32_t nmiFlags)
{
    //
    // Check the arguments.
    // Make sure if reserved bits are not set in nmiFlags.
    //
    ASSERT((nmiFlags & ~(SYSCTL_NMI_NMIINT | SYSCTL_NMI_CLOCKFAIL |
                         SYSCTL_NMI_RAMUNCERR | SYSCTL_NMI_FLUNCERR |
                         SYSCTL_NMI_PIEVECTERR | SYSCTL_NMI_CPU2WDRSN |
                         SYSCTL_NMI_CPU2NMIWDRSN)) == 0);

    //
    // Read the flag register and return true if any of them are set.
    //
    return((HWREGH(NMI_BASE + NMI_O_SHDFLG) & nmiFlags) != 0U);
}

//*****************************************************************************
//
//! Enable the missing clock detection (MCD) Logic
//!
//! \return None.
//
//*****************************************************************************
static inline void
SysCtl_enableMCD(void)
{
    EALLOW;

    HWREGH(CLKCFG_BASE + SYSCTL_O_MCDCR) &= ~(SYSCTL_MCDCR_MCLKOFF);

    EDIS;
}

//*****************************************************************************
//
//! Disable the missing clock detection (MCD) Logic
//!
//! \return None.
//
//*****************************************************************************
static inline void
SysCtl_disableMCD(void)
{
    EALLOW;

    HWREGH(CLKCFG_BASE + SYSCTL_O_MCDCR) |= SYSCTL_MCDCR_MCLKOFF;

    EDIS;
}

//*****************************************************************************
//
//! Get the missing clock detection Failure Status
//!
//! \note A failure means the oscillator clock is missing
//!
//! \return Returns \b true if a failure is detected or \b false if a
//! failure isn't detected
//
//*****************************************************************************
static inline bool
SysCtl_isMCDClockFailureDetected(void)
{
  //
  //  Check the status bit to determine failure
  //
  return((HWREGH(CLKCFG_BASE + SYSCTL_O_MCDCR) & SYSCTL_MCDCR_MCLKSTS) != 0U);
}

//*****************************************************************************
//
//! Reset the missing clock detection logic after clock failure
//!
//! \return None.
//
//*****************************************************************************
static inline void
SysCtl_resetMCD(void)
{
    EALLOW;

    HWREGH(CLKCFG_BASE + SYSCTL_O_MCDCR) |= SYSCTL_MCDCR_MCLKCLR;

    EDIS;
}

//*****************************************************************************
//
//! Re-connect missing clock detection clock source to stop simulating clock
//! failure
//!
//! \return None.
//
//*****************************************************************************
static inline void
SysCtl_connectMCDClockSource(void)
{
    EALLOW;

    HWREGH(CLKCFG_BASE + SYSCTL_O_MCDCR) &= ~(SYSCTL_MCDCR_OSCOFF);

    EDIS;
}

//*****************************************************************************
//
//! Disconnect missing clock detection clock source to simulate clock failure.
//! This is for testing the MCD functionality.
//!
//! \return None.
//
//*****************************************************************************
static inline void
SysCtl_disconnectMCDClockSource(void)
{
    EALLOW;

    HWREGH(CLKCFG_BASE + SYSCTL_O_MCDCR) |= SYSCTL_MCDCR_OSCOFF;

    EDIS;
}

//*****************************************************************************
//
//! Configures the sync input source for the ePWM and eCAP signals.
//!
//! \param syncInput is the sync input being configured
//! \param syncSrc is sync input source selection.
//!
//! This function configures the sync input source for the ePWM and eCAP
//! modules. The \e syncInput parameter is the sync input being configured. It
//! should be passed a value of \b SYSCTL_SYNC_IN_XXXX, where XXXX is the ePWM
//! or eCAP instance the sync signal is entering.
//!
//! The \e syncSrc parameter is the sync signal selected as the source of the
//! sync input. It should be passed a value of \b SYSCTL_SYNC_IN_SRC_XXXX,
//! XXXX is a sync signal coming from an ePWM, eCAP or external sync output.
//! where For example, a \e syncInput value of \b SYSCTL_SYNC_IN_ECAP1 and a
//! \e syncSrc value of \b SYSCTL_SYNC_IN_SRC_EPWM1SYNCOUT will make the
//! EPWM1SYNCOUT signal drive eCAP1's SYNCIN signal.
//!
//! Note that some \e syncSrc values are only valid for certain values of
//! \e syncInput. See device technical reference manual for details on
//! time-base counter synchronization.
//!
//! \return None.
//
//*****************************************************************************
static inline void
SysCtl_setSyncInputConfig(SysCtl_SyncInput syncInput,
                          SysCtl_SyncInputSource syncSrc)
{
    uint32_t clearMask;

    //
    // Write the input sync source selection to the appropriate register.
    //
    EALLOW;
    clearMask = (uint32_t)SYSCTL_SYNCSELECT_SYNCIN_M << (uint32_t)syncInput;

    HWREG(SYNCSOC_BASE + SYSCTL_O_SYNCSELECT) =
        (HWREG(SYNCSOC_BASE + SYSCTL_O_SYNCSELECT) & ~clearMask) |
        ((uint32_t)syncSrc << (uint32_t)syncInput);

    EDIS;
}
//*****************************************************************************
//
//! Configures the sync output source.
//!
//! \param syncSrc is sync output source selection.
//!
//! This function configures the sync output source from the ePWM modules. The
//! \e syncSrc parameter is a value \b SYSCTL_SYNC_OUT_SRC_XXXX, where XXXX is
//! a sync signal coming from an ePWM such as SYSCTL_SYNC_OUT_SRC_EPWM1SYNCOUT
//!
//! \return None.
//
//*****************************************************************************
static inline void
SysCtl_setSyncOutputConfig(SysCtl_SyncOutputSource syncSrc)
{
   //
    // Write the sync output source selection to the appropriate register.
    //
    EALLOW;
    HWREG(SYNCSOC_BASE + SYSCTL_O_SYNCSELECT) =
        (HWREG(SYNCSOC_BASE + SYSCTL_O_SYNCSELECT) &
         ~((uint32_t)SYSCTL_SYNCSELECT_SYNCOUT_M)) |
        ((uint32_t)syncSrc << SYSCTL_SYNCSELECT_SYNCOUT_S);
    EDIS;

}
//*****************************************************************************
//
//! Enables ePWM SOC signals to drive an external (off-chip) ADCSOC signal.
//!
//! \param adcsocSrc is a bit field of the selected signals to be enabled
//!
//! This function configures which ePWM SOC signals are enabled as a source for
//! either ADCSOCAO or ADCSOCBO. The \e adcsocSrc parameter takes a logical OR
//! of \b SYSCTL_ADCSOC_SRC_PWMxSOCA/B values that correspond to different
//! signals.
//!
//! \return None.
//
//*****************************************************************************
static inline void
SysCtl_enableExtADCSOCSource(uint32_t adcsocSrc)
{
    //
    // Set the bits that correspond to signal to be enabled.
    //
    EALLOW;
    HWREG(SYNCSOC_BASE + SYSCTL_O_ADCSOCOUTSELECT) |= adcsocSrc;
    EDIS;
}

//*****************************************************************************
//
//! Disables ePWM SOC signals from driving an external ADCSOC signal.
//!
//! \param adcsocSrc is a bit field of the selected signals to be disabled
//!
//! This function configures which ePWM SOC signals are disabled as a source
//! for either ADCSOCAO or ADCSOCBO. The \e adcsocSrc parameter takes a logical
//! OR of \b SYSCTL_ADCSOC_SRC_PWMxSOCA/B values that correspond to different
//! signals.
//!
//! \return None.
//
//*****************************************************************************
static inline void
SysCtl_disableExtADCSOCSource(uint32_t adcsocSrc)
{
    //
    // Clear the bits that correspond to signal to be disabled.
    //
    EALLOW;
    HWREG(SYNCSOC_BASE + SYSCTL_O_ADCSOCOUTSELECT) &= ~adcsocSrc;
    EDIS;
}

//*****************************************************************************
//
//! Locks the SOC Select of the Trig X-BAR.
//!
//! This function locks the external ADC SOC select of the Trig X-BAR.
//!
//! \return None.
//
//*****************************************************************************
static inline void
SysCtl_lockExtADCSOCSelect(void)
{
    //
    // Lock the ADCSOCOUTSELECT bit of the SYNCSOCLOCK register.
    //
    EALLOW;
    HWREG(SYNCSOC_BASE + SYSCTL_O_SYNCSOCLOCK) =
        SYSCTL_SYNCSOCLOCK_ADCSOCOUTSELECT;
    EDIS;
}
//*****************************************************************************
//
//! Configures whether the dual ported bridge is connected with DMA or
//! CLA as the secondary master.
//!
//! \param periFrame1Config indicates whether CLA or DMA is configured as
//!                         secondary master on peripheral frame 1.
//! \param periFrame2Config indicates whether CLA or DMA is configured as
//!                         secondary master on peripheral frame 2.
//!
//!  One of the following values can be passed as parameter.
//!       \b SYSCTL_SEC_MASTER_CLA
//!       \b SYSCTL_SEC_MASTER_DMA
//!
//! \return None.
//
//*****************************************************************************
static inline void
SysCtl_selectSecMaster(uint16_t periFrame1Config, uint16_t periFrame2Config)
{
    EALLOW;

    HWREG(CPUSYS_BASE + SYSCTL_O_SECMSEL) =
            (((periFrame1Config << SYSCTL_SECMSEL_PF1SEL_S) &
               SYSCTL_SECMSEL_PF1SEL_M) |
             ((periFrame2Config << SYSCTL_SECMSEL_PF2SEL_S) &
                SYSCTL_SECMSEL_PF2SEL_M));

    EDIS;
}
//*****************************************************************************
//
//! Locks the Sync Select of the Trig X-BAR.
//!
//! This function locks Sync Input and Output Select of the Trig X-BAR.
//!
//! \return None.
//
//*****************************************************************************
static inline void
SysCtl_lockSyncSelect(void)
{
    //
    // Lock the SYNCSELECT register.
    //
    EALLOW;
    HWREG(SYNCSOC_BASE + SYSCTL_O_SYNCSOCLOCK) = SYSCTL_SYNCSOCLOCK_SYNCSELECT;
    EDIS;
}
//*****************************************************************************
//
//! Configures whether a peripheral is connected to CPU1 or CPU2.
//!
//! \param peripheral is the peripheral for which CPU needs to be configured.
//! \param peripheralInst is the instance for which CPU needs to be configured.
//! \param cpuInst is the CPU to which the peripheral instance need to be
//!                connected.
//!
//! The \e peripheral parameter can have one enumerated value from
//! SysCtl_CPUSelPeripheral
//!
//! The \e peripheralInst parameter is the instance number for example
//! 1 for EPWM1, 2 for EPWM2 so on.For instances which are named with alphabets
//! (instead of numbers) the following convention needs to be followed.
//! 1 for A (SPI_A), 2 for B (SPI_B), 3 for C (SPI_C) so on...
//!
//! The \e cpuInst parameter can have one the following values:
//! - \b SYSCTL_CPUSEL_CPU1 - to connect to CPU1
//! - \b SYSCTL_CPUSEL_CPU2 - to connect to CPU2
//!
//! \note This API is applicable only for the CPU1 subsystem.
//!
//! \return None.
//
//*****************************************************************************
static inline void
SysCtl_selectCPUForPeripheral(SysCtl_CPUSelPeripheral peripheral,
                              uint16_t peripheralInst, SysCtl_CPUSel cpuInst)
{
    uint32_t tempValue;
    uint16_t shift;

    if(SYSCTL_CPUSEL14_DAC == peripheral)
    {
        shift = peripheralInst + SYSCTL_CPUSEL_DAC_S - 1U;
    }
    else
    {
        shift = peripheralInst - 1U;
    }

    tempValue =
        HWREG(DEVCFG_BASE + SYSCTL_O_CPUSEL0 + ((uint32_t)peripheral * 2U)) &
        (~((uint32_t)1U << shift));

    EALLOW;
    HWREG(DEVCFG_BASE + SYSCTL_O_CPUSEL0 + ((uint32_t)peripheral * 2U)) =
        tempValue | ((uint32_t)cpuInst << shift);
    EDIS;
}
//*****************************************************************************
//
//! Get the Device Silicon Revision ID
//!
//! This function returns the silicon revision ID for the device.
//!
//! \note This API is applicable only for the CPU1 subsystem.
//!
//! \return Returns the silicon revision ID value.
//
//*****************************************************************************
static inline uint32_t
SysCtl_getDeviceRevision(void)
{
    //
    // Returns the device silicon revision ID
    //
    return(HWREG(DEVCFG_BASE + SYSCTL_O_REVID));
}

//*****************************************************************************
//
//! Delays for a fixed number of cycles.
//!
//! \param count is the number of delay loop iterations to perform.
//!
//! This function generates a constant length delay using assembly code. The
//! loop takes 5 cycles per iteration plus 9 cycles of overhead.
//!
//! \note If count is equal to zero, the loop will underflow and run for a
//! very long time.
//!
//! \return None.
//
//*****************************************************************************
extern void
SysCtl_delay(uint32_t count);

//*****************************************************************************
//
//! Calculates the system clock frequency (SYSCLK).
//!
//! \param clockInHz is the frequency of the oscillator clock source (OSCCLK).
//!
//! This function determines the frequency of the system clock based on the
//! frequency of the oscillator clock source (from \e clockInHz) and the PLL
//! and clock divider configuration registers.
//!
//! \return Returns the system clock frequency. If a missing clock is detected,
//! the function will return the INTOSC1 frequency. This needs to be
//! corrected and cleared (see SysCtl_resetMCD()) before trying to call this
//! function again.
//
//*****************************************************************************
extern uint32_t
SysCtl_getClock(uint32_t clockInHz);

//*****************************************************************************
//
//! Calculates the system auxiliary clock frequency (AUXPLLCLK).
//!
//! \param clockInHz is the frequency of the oscillator clock source
//!  (AUXOSCCLK).
//!
//! This function determines the frequency of the auxiliary clock based on the
//! frequency of the oscillator clock source (from \e clockInHz) and the AUXPLL
//! and clock divider configuration registers.
//!
//! \return Returns the auxiliary clock frequency.
//
//*****************************************************************************
extern uint32_t
SysCtl_getAuxClock(uint32_t clockInHz);

//*****************************************************************************
//
//! Configures the clocking of the device.
//!
//! \param config is the required configuration of the device clocking.
//!
//! This function configures the clocking of the device.  The input crystal
//! frequency, oscillator to be used, use of the PLL, and the system clock
//! divider are all configured with this function.
//!
//! The \e config parameter is the OR of several different values, many of
//! which are grouped into sets where only one can be chosen.
//!
//! - The system clock divider is chosen with the macro \b SYSCTL_SYSDIV(x)
//!   where x is either 1 or an even value up to 126.
//!
//! - The use of the PLL is chosen with either \b SYSCTL_PLL_ENABLE or
//!   \b SYSCTL_PLL_DISABLE.
//!
//! - The integer multiplier is chosen \b SYSCTL_IMULT(x) where x is a value
//!   from 1 to 127.
//!
//! - The fractional multiplier is chosen with either \b SYSCTL_FMULT_0,
//!   \b SYSCTL_FMULT_1_4, \b SYSCTL_FMULT_1_2, or \b SYSCTL_FMULT_3_4.
//!
//! - The oscillator source chosen with \b SYSCTL_OSCSRC_OSC2,
//!   \b SYSCTL_OSCSRC_XTAL, or \b SYSCTL_OSCSRC_OSC1.
//!
//! This function uses the watchdog as a monitor for the PLL. The user
//! watchdog settings will be modified and restored upon completion. Make sure
//! that the WDOVERRIDE bit isn't set before calling this function. Re-lock
//! attempt is carried out if either SLIP condition occurs or SYSCLK to input
//! clock ratio is off by 10%.
//!
//! This function uses the following resources to support PLL initialization:
//! - Watchdog
//! - CPU Timer 1
//! - CPU Timer 2
//!
//!
//! \note See your device errata for more details about locking the PLL.
//!
//! \return Returns \b false if a missing clock error is detected. This needs
//! to be cleared (see SysCtl_resetMCD()) before trying to call this function
//! again. Otherwise, returns \b true.
//
//*****************************************************************************
extern bool
SysCtl_setClock(uint32_t config);

//*****************************************************************************
//
//! Selects the oscillator to be used for the clocking of the device.
//!
//! \param oscSource is the oscillator source to be configured.
//!
//! This function configures the oscillator to be used in the clocking of the
//! device. The \e oscSource parameter may take a value of
//! \b SYSCTL_OSCSRC_OSC2, \b SYSCTL_OSCSRC_XTAL, or \b SYSCTL_OSCSRC_OSC1.
//!
//! \sa SysCtl_turnOnOsc()
//!
//! \return None.
//
//*****************************************************************************
extern void
SysCtl_selectOscSource(uint32_t oscSource);

//*****************************************************************************
//
//! Calculates the low-speed peripheral clock frequency (LSPCLK).
//!
//! \param clockInHz is the frequency of the oscillator clock source (OSCCLK).
//!
//! This function determines the frequency of the low-speed peripheral clock
//! based on the frequency of the oscillator clock source (from \e clockInHz)
//! and the PLL and clock divider configuration registers.
//!
//! \return Returns the low-speed peripheral clock frequency.
//
//*****************************************************************************
extern uint32_t
SysCtl_getLowSpeedClock(uint32_t clockInHz);

//*****************************************************************************
//
//! Get the device part parametric value
//!
//! \param parametric is the requested device parametric value
//!
//! This function gets the device part parametric value.
//!
//! The \e parametric parameter can have one the following enumerated values:
//! - \b SYSCTL_DEVICE_QUAL      - Device Qualification Status
//! - \b SYSCTL_DEVICE_PINCOUNT  - Device Pin Count
//! - \b SYSCTL_DEVICE_INSTASPIN - Device InstaSPIN Feature Set
//! - \b SYSCTL_DEVICE_FLASH     - Device Flash size (KB)
//! - \b SYSCTL_DEVICE_PARTID    - Device PARTID Format Revision
//! - \b SYSCTL_DEVICE_FAMILY    - Device Family
//! - \b SYSCTL_DEVICE_PARTNO    - Device Part Number
//! - \b SYSCTL_DEVICE_CLASSID   - Device Class ID
//!
//! \note This API is applicable only for the CPU1 subsystem.
//!
//! \return Returns the specified parametric value.
//
//*****************************************************************************
extern uint16_t
SysCtl_getDeviceParametric(SysCtl_DeviceParametric parametric);

//*****************************************************************************
//
//! Configures the auxiliary PLL for clocking USB.
//!
//! \param config is the required configuration of the device clocking.
//!
//! This function configures the clock source for auxiliary PLL, the integer
//! multiplier, fractional multiplier and divider.
//!
//! The \e config parameter is the OR of several different values, many of
//! which are grouped into sets where only one can be chosen.
//!
//! - The system clock divider is chosen with one of the following macros:
//!    \b SYSCTL_AUXPLL_DIV_1,
//!    \b SYSCTL_AUXPLL_DIV_2,
//!    \b SYSCTL_AUXPLL_DIV_4,
//!    \b SYSCTL_AUXPLL_DIV_8
//!
//! - The use of the PLL is chosen with either \b SYSCTL_AUXPLL_ENABLE or
//!   \b SYSCTL_AUXPLL_DISABLE.
//!
//! - The integer multiplier is chosen with \b SYSCTL_AUXPLL_IMULT(x) where x
//!   is a value from 1 to 127.
//!
//! - The oscillator source chosen with one of
//!     \b SYSCTL_AUXPLL_OSCSRC_OSC2,
//!     \b SYSCTL_AUXPLL_OSCSRC_XTAL,
//!     \b SYSCTL_AUXPLL_OSCSRC_AUXCLKIN,
//!
//! \note This function uses CPU Timer 2 to monitor a successful lock of the
//! AUXPLL. For this function to properly detect the PLL startup
//! SYSCLK >= 2*AUXPLLCLK after the AUXPLL is selected as the clocking source.
//! User configuration of CPU Timer 2 will be backed up and restored.
//! \note See your device errata for more details about locking the PLL.
//!
//! \return None.
//
//*****************************************************************************
extern void
SysCtl_setAuxClock(uint32_t config);

//*****************************************************************************
//
// Close the Doxygen group.
//! @}
//
//****************************************************************************

//*****************************************************************************
//
// Mark the end of the C bindings section for C++ compilers.
//
//*****************************************************************************
#ifdef __cplusplus
}
#endif

#endif // SYSCTL_H

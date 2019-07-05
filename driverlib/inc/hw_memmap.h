//###########################################################################
//
// FILE:    hw_memmap.h
//
// TITLE:   Macros defining the memory map of the C28x.
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

#ifndef HW_MEMMAP_H
#define HW_MEMMAP_H

//*****************************************************************************
//
// The following are defines for the base address of the memories and
// peripherals.
//
//*****************************************************************************
#define ADCARESULT_BASE             0x00000B00U // ADCA Result Registers
#define ADCBRESULT_BASE             0x00000B20U // ADCB Result Registers
#define ADCCRESULT_BASE             0x00000B40U // ADCC Result Registers
#define ADCDRESULT_BASE             0x00000B60U // ADCD Result Registers
#define CPUTIMER0_BASE              0x00000C00U // CPU Timer 0 Registers
#define CPUTIMER1_BASE              0x00000C08U // CPU Timer 1 Registers
#define CPUTIMER2_BASE              0x00000C10U // CPU Timer 2 Registers
#define PIECTRL_BASE                0x00000CE0U // PIE Registers
#define PIEVECTTABLE_BASE           0x00000D00U // PIE Vector Table
#define DMA_BASE                    0x00001000U // DMA Control Registers
#define DMA_CH1_BASE                0x00001020U // DMA Channel Registers
#define DMA_CH2_BASE                0x00001040U // DMA Channel Registers
#define DMA_CH3_BASE                0x00001060U // DMA Channel Registers
#define DMA_CH4_BASE                0x00001080U // DMA Channel Registers
#define DMA_CH5_BASE                0x000010A0U // DMA Channel Registers
#define DMA_CH6_BASE                0x000010C0U // DMA Channel Registers
#define CLA1_BASE                   0x00001400U // CPU1.CLA1 Registers
#define EPWM1_BASE                  0x00004000U // EPWM1
#define EPWM2_BASE                  0x00004100U // EPWM2
#define EPWM3_BASE                  0x00004200U // EPWM3
#define EPWM4_BASE                  0x00004300U // EPWM4
#define EPWM5_BASE                  0x00004400U // EPWM5
#define EPWM6_BASE                  0x00004500U // EPWM6
#define EPWM7_BASE                  0x00004600U // EPWM7
#define EPWM8_BASE                  0x00004700U // EPWM8
#define EPWM9_BASE                  0x00004800U // EPWM9
#define EPWM10_BASE                 0x00004900U // EPWM10
#define EPWM11_BASE                 0x00004A00U // EPWM11
#define EPWM12_BASE                 0x00004B00U // EPWM12
#define ECAP1_BASE                  0x00005000U // ECAP1
#define ECAP2_BASE                  0x00005020U // ECAP2
#define ECAP3_BASE                  0x00005040U // ECAP3
#define ECAP4_BASE                  0x00005060U // ECAP4
#define ECAP5_BASE                  0x00005080U // ECAP5
#define ECAP6_BASE                  0x000050A0U // ECAP6
#define EQEP1_BASE                  0x00005100U // EQEP1
#define EQEP2_BASE                  0x00005140U // EQEP2
#define EQEP3_BASE                  0x00005180U // EQEP3
#define DACA_BASE                   0x00005C00U // BUFDACA
#define DACB_BASE                   0x00005C10U // BUFDACB
#define DACC_BASE                   0x00005C20U // BUFDACC
#define CMPSS1_BASE                 0x00005C80U // CMPSS1
#define CMPSS2_BASE                 0x00005CA0U // CMPSS2
#define CMPSS3_BASE                 0x00005CC0U // CMPSS3
#define CMPSS4_BASE                 0x00005CE0U // CMPSS4
#define CMPSS5_BASE                 0x00005D00U // CMPSS5
#define CMPSS6_BASE                 0x00005D20U // CMPSS6
#define CMPSS7_BASE                 0x00005D40U // CMPSS7
#define CMPSS8_BASE                 0x00005D60U // CMPSS8
#define SDFM1_BASE                  0x00005E00U // SDFM1 Registers
#define SDFM2_BASE                  0x00005E80U // SDFM2 Registers
#define MCBSPA_BASE                 0x00006000U // McBSP A Registers
#define MCBSPB_BASE                 0x00006040U // McBSP B Registers
#define SPIA_BASE                   0x00006100U // SPI A Registers
#define SPIB_BASE                   0x00006110U // SPI B Registers
#define SPIC_BASE                   0x00006120U // SPI C Registers
#define UPP_BASE                    0x00006200U // RFI uPP Configuration Registers
#define UPP_TX_MSG_RAM_BASE         0x00006C00U // RFI uPP TX MSG RAM
#define UPP_RX_MSG_RAM_BASE         0x00006E00U // RFI uPP RX MSG RAM
#define WD_BASE                     0x00007000U // Watchdog Registers
#define NMI_BASE                    0x00007060U // NMI Registers
#define XINT_BASE                   0x00007070U // Interrupt Control Counter Registers
#define SCIA_BASE                   0x00007200U // SCI A Registers
#define SCIB_BASE                   0x00007210U // SCI B Registers
#define SCIC_BASE                   0x00007220U // SCI C Registers
#define SCID_BASE                   0x00007230U // SCI D Registers
#define I2CA_BASE                   0x00007300U // I2C A Registers
#define I2CB_BASE                   0x00007340U // I2C B Registers
#define ADCA_BASE                   0x00007400U // ADCA Configuration Registers
#define ADCB_BASE                   0x00007480U // ADCB Configuration Registers
#define ADCC_BASE                   0x00007500U // ADCC Configuration Registers
#define ADCD_BASE                   0x00007580U // ADCD Configuration Registers
#define INPUTXBAR_BASE              0x00007900U // GPIO Mux GPTRIP Input Select Registers
#define XBAR_BASE                   0x00007920U // X-Bar Registers
#define SYNCSOC_BASE                0x00007940U // SYNC SOC registers
#define DMACLASRCSEL_BASE           0x00007980U // DMA CLA Triggers Source Select Registers
#define EPWMXBAR_BASE               0x00007A00U // EPWM XBAR Configuration Registers
#define OUTPUTXBAR_BASE             0x00007A80U // Output X-BAR Configuration Registers
#define GPIOCTRL_BASE               0x00007C00U // GPIO 0 to 31 Mux A Configuration Registers
#define GPIODATA_BASE               0x00007F00U // GPIO 0 to 31 Mux A Data Registers
#define CPU2_TO_CPU1_MSG_RAM_BASE   0x0003F800U // CPU2 to CPU1 Message RAM
#define CPU1_TO_CPU2_MSG_RAM_BASE   0x0003FC00U // CPU1 to CPU2 Message RAM
#define USBA_BASE                   0x00040000U // USB Registers
#define EMIF1_BASE                  0x00047000U // EMIF-1 Configuration Registers
#define EMIF2_BASE                  0x00047800U // EMIF-2 Configuration Registers
#define CANA_BASE                   0x00048000U // CAN-A Registers
#define CANA_MSG_RAM_BASE           0x00048800U // CAN-A Message RAM
#define CANA_SEDEC_BASE             0x00049800U // CAN-A SEDEC
#define CANB_BASE                   0x0004A000U // CAN-B Registers
#define CANB_MSG_RAM_BASE           0x0004A800U // CAN-B Message RAM
#define CANB_SEDEC_BASE             0x0004B800U // CAN-B SEDEC
#define IPC_BASE                    0x00050000U // IPC Registers
#define FLASHPUMPSEMAPHORE_BASE     0x00050024U // Flash Pump Ownership Register
#define DEVCFG_BASE                 0x0005D000U // Device Configuration Registers
#define ANALOGSUBSYS_BASE           0x0005D180U // Analog System Control Registers
#define CLKCFG_BASE                 0x0005D200U // Clock Configuration Registers
#define CPUSYS_BASE                 0x0005D300U // CPU System Configuration Registers
#define ROMPREFETCH_BASE            0x0005E608U // ROM Prefetch Control
#define ENHANCED_DEBUG_BASE         0x0005E800U // Enhanced Debug Registers
#define DCSM_Z1_BASE                0x0005F000U // Zone 1 DCSM Registers
#define DCSM_Z2_BASE                0x0005F040U // Zone 2 DCSM Registers
#define DCSMCOMMON_BASE             0x0005F070U // Security Registers
#define MEMCFG_BASE                 0x0005F400U // RAM Configuration Registers
#define EMIF1CONFIG_BASE            0x0005F480U // EMIF1 Configuration Registers
#define EMIF2CONFIG_BASE            0x0005F4A0U // EMIF2 Configuration Registers
#define ACCESSPROTECTION_BASE       0x0005F4C0U // Access Protection Registers
#define MEMORYERROR_BASE            0x0005F500U // Memory Error Registers
#define ROMWAITSTATE_BASE           0x0005F540U // ROM Wait State Control
#define FLASH0CTRL_BASE             0x0005F800U // Flash BANK 0 Wrapper Control Registers
#define FLASH0ECC_BASE              0x0005FB00U // Flash BANK 0 Wrapper ECC Error Log Registers
#define DCSM_Z1OTP_BASE             0x00078000U // Zone 1 DCSM OTP
#define DCSM_Z2OTP_BASE             0x00078200U // Zone 2 DCSM OTP

#endif // HW_MEMMAP_H

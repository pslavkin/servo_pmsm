//###########################################################################
//
// FILE:    hw_clbxbar.h
//
// TITLE:   Definitions for the XBAR registers.
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

#ifndef HW_CLBXBAR_H
#define HW_CLBXBAR_H

//*****************************************************************************
//
// The following are defines for the XBAR register offsets
//
//*****************************************************************************
#define XBAR_O_AUXSIG0MUX0TO15CFG  0x0U         // CLB XBAR Mux Configuration
                                               // for Output-0
#define XBAR_O_AUXSIG1MUX0TO15CFG  0x4U         // CLB XBAR Mux Configuration
                                               // for Output-1
#define XBAR_O_AUXSIG2MUX0TO15CFG  0x8U         // CLB XBAR Mux Configuration
                                               // for Output-2
#define XBAR_O_AUXSIG3MUX0TO15CFG  0xCU         // CLB XBAR Mux Configuration
                                               // for Output-3
#define XBAR_O_AUXSIG4MUX0TO15CFG  0x10U        // CLB XBAR Mux Configuration
                                               // for Output-4
#define XBAR_O_AUXSIG5MUX0TO15CFG  0x14U        // CLB XBAR Mux Configuration
                                               // for Output-5
#define XBAR_O_AUXSIG6MUX0TO15CFG  0x18U        // CLB XBAR Mux Configuration
                                               // for Output-6
#define XBAR_O_AUXSIG7MUX0TO15CFG  0x1CU        // CLB XBAR Mux Configuration
                                               // for Output-7
#define XBAR_O_AUXSIG0MUXENABLE   0x20U        // CLB XBAR Mux Enable Register
                                               // for Output-0
#define XBAR_O_AUXSIG1MUXENABLE   0x22U        // CLB XBAR Mux Enable Register
                                               // for Output-1
#define XBAR_O_AUXSIG2MUXENABLE   0x24U        // CLB XBAR Mux Enable Register
                                               // for Output-2
#define XBAR_O_AUXSIG3MUXENABLE   0x26U        // CLB XBAR Mux Enable Register
                                               // for Output-3
#define XBAR_O_AUXSIG4MUXENABLE   0x28U        // CLB XBAR Mux Enable Register
                                               // for Output-4
#define XBAR_O_AUXSIG5MUXENABLE   0x2AU        // CLB XBAR Mux Enable Register
                                               // for Output-5
#define XBAR_O_AUXSIG6MUXENABLE   0x2CU        // CLB XBAR Mux Enable Register
                                               // for Output-6
#define XBAR_O_AUXSIG7MUXENABLE   0x2EU        // CLB XBAR Mux Enable Register
                                               // for Output-7
#define XBAR_O_AUXSIGOUTINV       0x38U        // CLB XBAR Output Inversion
                                               // Register
#define XBAR_O_AUXSIGLOCK         0x3EU        // ClbXbar Configuration Lock
                                               // register

//*****************************************************************************
//
// The following are defines for the bit fields in the AUXSIG0MUX0TO15CFG register
//
//*****************************************************************************
#define XBAR_AUXSIG0MUX0TO15CFG_MUX0_S  0U
#define XBAR_AUXSIG0MUX0TO15CFG_MUX0_M  0x3U         // Mux0 Configuration for
                                               // AUXSIG0 of CLB-XBAR
#define XBAR_AUXSIG0MUX0TO15CFG_MUX1_S  2U
#define XBAR_AUXSIG0MUX0TO15CFG_MUX1_M  0xCU         // Mux1 Configuration for
                                               // AUXSIG0 of CLB-XBAR
#define XBAR_AUXSIG0MUX0TO15CFG_MUX2_S  4U
#define XBAR_AUXSIG0MUX0TO15CFG_MUX2_M  0x30U        // Mux2 Configuration for
                                               // AUXSIG0 of CLB-XBAR
#define XBAR_AUXSIG0MUX0TO15CFG_MUX3_S  6U
#define XBAR_AUXSIG0MUX0TO15CFG_MUX3_M  0xC0U        // Mux3 Configuration for
                                               // AUXSIG0 of CLB-XBAR
#define XBAR_AUXSIG0MUX0TO15CFG_MUX4_S  8U
#define XBAR_AUXSIG0MUX0TO15CFG_MUX4_M  0x300U       // Mux4 Configuration for
                                               // AUXSIG0 of CLB-XBAR
#define XBAR_AUXSIG0MUX0TO15CFG_MUX5_S  10U
#define XBAR_AUXSIG0MUX0TO15CFG_MUX5_M  0xC00U       // Mux5 Configuration for
                                               // AUXSIG0 of CLB-XBAR
#define XBAR_AUXSIG0MUX0TO15CFG_MUX6_S  12U
#define XBAR_AUXSIG0MUX0TO15CFG_MUX6_M  0x3000U      // Mux6 Configuration for
                                               // AUXSIG0 of CLB-XBAR
#define XBAR_AUXSIG0MUX0TO15CFG_MUX7_S  14U
#define XBAR_AUXSIG0MUX0TO15CFG_MUX7_M  0xC000U      // Mux7 Configuration for
                                               // AUXSIG0 of CLB-XBAR
#define XBAR_AUXSIG0MUX0TO15CFG_MUX8_S  16U
#define XBAR_AUXSIG0MUX0TO15CFG_MUX8_M  0x30000U     // Mux8 Configuration for
                                               // AUXSIG0 of CLB-XBAR
#define XBAR_AUXSIG0MUX0TO15CFG_MUX9_S  18U
#define XBAR_AUXSIG0MUX0TO15CFG_MUX9_M  0xC0000U     // Mux9 Configuration for
                                               // AUXSIG0 of CLB-XBAR
#define XBAR_AUXSIG0MUX0TO15CFG_MUX10_S  20U
#define XBAR_AUXSIG0MUX0TO15CFG_MUX10_M  0x300000U    // Mux10 Configuration for
                                               // AUXSIG0 of CLB-XBAR
#define XBAR_AUXSIG0MUX0TO15CFG_MUX11_S  22U
#define XBAR_AUXSIG0MUX0TO15CFG_MUX11_M  0xC00000U    // Mux11 Configuration for
                                               // AUXSIG0 of CLB-XBAR
#define XBAR_AUXSIG0MUX0TO15CFG_MUX12_S  24U
#define XBAR_AUXSIG0MUX0TO15CFG_MUX12_M  0x3000000U   // Mux12 Configuration for
                                               // AUXSIG0 of CLB-XBAR
#define XBAR_AUXSIG0MUX0TO15CFG_MUX13_S  26U
#define XBAR_AUXSIG0MUX0TO15CFG_MUX13_M  0xC000000U   // Mux13 Configuration for
                                               // AUXSIG0 of CLB-XBAR
#define XBAR_AUXSIG0MUX0TO15CFG_MUX14_S  28U
#define XBAR_AUXSIG0MUX0TO15CFG_MUX14_M  0x30000000U  // Mux14 Configuration for
                                               // AUXSIG0 of CLB-XBAR
#define XBAR_AUXSIG0MUX0TO15CFG_MUX15_S  30U
#define XBAR_AUXSIG0MUX0TO15CFG_MUX15_M  0xC0000000U  // Mux15 Configuration for
                                               // AUXSIG0 of CLB-XBAR

//*****************************************************************************
//
// The following are defines for the bit fields in the AUXSIG1MUX0TO15CFG register
//
//*****************************************************************************
#define XBAR_AUXSIG1MUX0TO15CFG_MUX0_S  0U
#define XBAR_AUXSIG1MUX0TO15CFG_MUX0_M  0x3U         // Mux0 Configuration for
                                               // AUXSIG1 of CLB-XBAR
#define XBAR_AUXSIG1MUX0TO15CFG_MUX1_S  2U
#define XBAR_AUXSIG1MUX0TO15CFG_MUX1_M  0xCU         // Mux1 Configuration for
                                               // AUXSIG1 of CLB-XBAR
#define XBAR_AUXSIG1MUX0TO15CFG_MUX2_S  4U
#define XBAR_AUXSIG1MUX0TO15CFG_MUX2_M  0x30U        // Mux2 Configuration for
                                               // AUXSIG1 of CLB-XBAR
#define XBAR_AUXSIG1MUX0TO15CFG_MUX3_S  6U
#define XBAR_AUXSIG1MUX0TO15CFG_MUX3_M  0xC0U        // Mux3 Configuration for
                                               // AUXSIG1 of CLB-XBAR
#define XBAR_AUXSIG1MUX0TO15CFG_MUX4_S  8U
#define XBAR_AUXSIG1MUX0TO15CFG_MUX4_M  0x300U       // Mux4 Configuration for
                                               // AUXSIG1 of CLB-XBAR
#define XBAR_AUXSIG1MUX0TO15CFG_MUX5_S  10U
#define XBAR_AUXSIG1MUX0TO15CFG_MUX5_M  0xC00U       // Mux5 Configuration for
                                               // AUXSIG1 of CLB-XBAR
#define XBAR_AUXSIG1MUX0TO15CFG_MUX6_S  12U
#define XBAR_AUXSIG1MUX0TO15CFG_MUX6_M  0x3000U      // Mux6 Configuration for
                                               // AUXSIG1 of CLB-XBAR
#define XBAR_AUXSIG1MUX0TO15CFG_MUX7_S  14U
#define XBAR_AUXSIG1MUX0TO15CFG_MUX7_M  0xC000U      // Mux7 Configuration for
                                               // AUXSIG1 of CLB-XBAR
#define XBAR_AUXSIG1MUX0TO15CFG_MUX8_S  16U
#define XBAR_AUXSIG1MUX0TO15CFG_MUX8_M  0x30000U     // Mux8 Configuration for
                                               // AUXSIG1 of CLB-XBAR
#define XBAR_AUXSIG1MUX0TO15CFG_MUX9_S  18U
#define XBAR_AUXSIG1MUX0TO15CFG_MUX9_M  0xC0000U     // Mux9 Configuration for
                                               // AUXSIG1 of CLB-XBAR
#define XBAR_AUXSIG1MUX0TO15CFG_MUX10_S  20U
#define XBAR_AUXSIG1MUX0TO15CFG_MUX10_M  0x300000U    // Mux10 Configuration for
                                               // AUXSIG1 of CLB-XBAR
#define XBAR_AUXSIG1MUX0TO15CFG_MUX11_S  22U
#define XBAR_AUXSIG1MUX0TO15CFG_MUX11_M  0xC00000U    // Mux11 Configuration for
                                               // AUXSIG1 of CLB-XBAR
#define XBAR_AUXSIG1MUX0TO15CFG_MUX12_S  24U
#define XBAR_AUXSIG1MUX0TO15CFG_MUX12_M  0x3000000U   // Mux12 Configuration for
                                               // AUXSIG1 of CLB-XBAR
#define XBAR_AUXSIG1MUX0TO15CFG_MUX13_S  26U
#define XBAR_AUXSIG1MUX0TO15CFG_MUX13_M  0xC000000U   // Mux13 Configuration for
                                               // AUXSIG1 of CLB-XBAR
#define XBAR_AUXSIG1MUX0TO15CFG_MUX14_S  28U
#define XBAR_AUXSIG1MUX0TO15CFG_MUX14_M  0x30000000U  // Mux14 Configuration for
                                               // AUXSIG1 of CLB-XBAR
#define XBAR_AUXSIG1MUX0TO15CFG_MUX15_S  30U
#define XBAR_AUXSIG1MUX0TO15CFG_MUX15_M  0xC0000000U  // Mux15 Configuration for
                                               // AUXSIG1 of CLB-XBAR

//*****************************************************************************
//
// The following are defines for the bit fields in the AUXSIG2MUX0TO15CFG register
//
//*****************************************************************************
#define XBAR_AUXSIG2MUX0TO15CFG_MUX0_S  0U
#define XBAR_AUXSIG2MUX0TO15CFG_MUX0_M  0x3U         // Mux0 Configuration for
                                               // AUXSIG2 of CLB-XBAR
#define XBAR_AUXSIG2MUX0TO15CFG_MUX1_S  2U
#define XBAR_AUXSIG2MUX0TO15CFG_MUX1_M  0xCU         // Mux1 Configuration for
                                               // AUXSIG2 of CLB-XBAR
#define XBAR_AUXSIG2MUX0TO15CFG_MUX2_S  4U
#define XBAR_AUXSIG2MUX0TO15CFG_MUX2_M  0x30U        // Mux2 Configuration for
                                               // AUXSIG2 of CLB-XBAR
#define XBAR_AUXSIG2MUX0TO15CFG_MUX3_S  6U
#define XBAR_AUXSIG2MUX0TO15CFG_MUX3_M  0xC0U        // Mux3 Configuration for
                                               // AUXSIG2 of CLB-XBAR
#define XBAR_AUXSIG2MUX0TO15CFG_MUX4_S  8U
#define XBAR_AUXSIG2MUX0TO15CFG_MUX4_M  0x300U       // Mux4 Configuration for
                                               // AUXSIG2 of CLB-XBAR
#define XBAR_AUXSIG2MUX0TO15CFG_MUX5_S  10U
#define XBAR_AUXSIG2MUX0TO15CFG_MUX5_M  0xC00U       // Mux5 Configuration for
                                               // AUXSIG2 of CLB-XBAR
#define XBAR_AUXSIG2MUX0TO15CFG_MUX6_S  12U
#define XBAR_AUXSIG2MUX0TO15CFG_MUX6_M  0x3000U      // Mux6 Configuration for
                                               // AUXSIG2 of CLB-XBAR
#define XBAR_AUXSIG2MUX0TO15CFG_MUX7_S  14U
#define XBAR_AUXSIG2MUX0TO15CFG_MUX7_M  0xC000U      // Mux7 Configuration for
                                               // AUXSIG2 of CLB-XBAR
#define XBAR_AUXSIG2MUX0TO15CFG_MUX8_S  16U
#define XBAR_AUXSIG2MUX0TO15CFG_MUX8_M  0x30000U     // Mux8 Configuration for
                                               // AUXSIG2 of CLB-XBAR
#define XBAR_AUXSIG2MUX0TO15CFG_MUX9_S  18U
#define XBAR_AUXSIG2MUX0TO15CFG_MUX9_M  0xC0000U     // Mux9 Configuration for
                                               // AUXSIG2 of CLB-XBAR
#define XBAR_AUXSIG2MUX0TO15CFG_MUX10_S  20U
#define XBAR_AUXSIG2MUX0TO15CFG_MUX10_M  0x300000U    // Mux10 Configuration for
                                               // AUXSIG2 of CLB-XBAR
#define XBAR_AUXSIG2MUX0TO15CFG_MUX11_S  22U
#define XBAR_AUXSIG2MUX0TO15CFG_MUX11_M  0xC00000U    // Mux11 Configuration for
                                               // AUXSIG2 of CLB-XBAR
#define XBAR_AUXSIG2MUX0TO15CFG_MUX12_S  24U
#define XBAR_AUXSIG2MUX0TO15CFG_MUX12_M  0x3000000U   // Mux12 Configuration for
                                               // AUXSIG2 of CLB-XBAR
#define XBAR_AUXSIG2MUX0TO15CFG_MUX13_S  26U
#define XBAR_AUXSIG2MUX0TO15CFG_MUX13_M  0xC000000U   // Mux13 Configuration for
                                               // AUXSIG2 of CLB-XBAR
#define XBAR_AUXSIG2MUX0TO15CFG_MUX14_S  28U
#define XBAR_AUXSIG2MUX0TO15CFG_MUX14_M  0x30000000U  // Mux14 Configuration for
                                               // AUXSIG2 of CLB-XBAR
#define XBAR_AUXSIG2MUX0TO15CFG_MUX15_S  30U
#define XBAR_AUXSIG2MUX0TO15CFG_MUX15_M  0xC0000000U  // Mux15 Configuration for
                                               // AUXSIG2 of CLB-XBAR

//*****************************************************************************
//
// The following are defines for the bit fields in the AUXSIG3MUX0TO15CFG register
//
//*****************************************************************************
#define XBAR_AUXSIG3MUX0TO15CFG_MUX0_S  0U
#define XBAR_AUXSIG3MUX0TO15CFG_MUX0_M  0x3U         // Mux0 Configuration for
                                               // AUXSIG3 of CLB-XBAR
#define XBAR_AUXSIG3MUX0TO15CFG_MUX1_S  2U
#define XBAR_AUXSIG3MUX0TO15CFG_MUX1_M  0xCU         // Mux1 Configuration for
                                               // AUXSIG3 of CLB-XBAR
#define XBAR_AUXSIG3MUX0TO15CFG_MUX2_S  4U
#define XBAR_AUXSIG3MUX0TO15CFG_MUX2_M  0x30U        // Mux2 Configuration for
                                               // AUXSIG3 of CLB-XBAR
#define XBAR_AUXSIG3MUX0TO15CFG_MUX3_S  6U
#define XBAR_AUXSIG3MUX0TO15CFG_MUX3_M  0xC0U        // Mux3 Configuration for
                                               // AUXSIG3 of CLB-XBAR
#define XBAR_AUXSIG3MUX0TO15CFG_MUX4_S  8U
#define XBAR_AUXSIG3MUX0TO15CFG_MUX4_M  0x300U       // Mux4 Configuration for
                                               // AUXSIG3 of CLB-XBAR
#define XBAR_AUXSIG3MUX0TO15CFG_MUX5_S  10U
#define XBAR_AUXSIG3MUX0TO15CFG_MUX5_M  0xC00U       // Mux5 Configuration for
                                               // AUXSIG3 of CLB-XBAR
#define XBAR_AUXSIG3MUX0TO15CFG_MUX6_S  12U
#define XBAR_AUXSIG3MUX0TO15CFG_MUX6_M  0x3000U      // Mux6 Configuration for
                                               // AUXSIG3 of CLB-XBAR
#define XBAR_AUXSIG3MUX0TO15CFG_MUX7_S  14U
#define XBAR_AUXSIG3MUX0TO15CFG_MUX7_M  0xC000U      // Mux7 Configuration for
                                               // AUXSIG3 of CLB-XBAR
#define XBAR_AUXSIG3MUX0TO15CFG_MUX8_S  16U
#define XBAR_AUXSIG3MUX0TO15CFG_MUX8_M  0x30000U     // Mux8 Configuration for
                                               // AUXSIG3 of CLB-XBAR
#define XBAR_AUXSIG3MUX0TO15CFG_MUX9_S  18U
#define XBAR_AUXSIG3MUX0TO15CFG_MUX9_M  0xC0000U     // Mux9 Configuration for
                                               // AUXSIG3 of CLB-XBAR
#define XBAR_AUXSIG3MUX0TO15CFG_MUX10_S  20U
#define XBAR_AUXSIG3MUX0TO15CFG_MUX10_M  0x300000U    // Mux10 Configuration for
                                               // AUXSIG3 of CLB-XBAR
#define XBAR_AUXSIG3MUX0TO15CFG_MUX11_S  22U
#define XBAR_AUXSIG3MUX0TO15CFG_MUX11_M  0xC00000U    // Mux11 Configuration for
                                               // AUXSIG3 of CLB-XBAR
#define XBAR_AUXSIG3MUX0TO15CFG_MUX12_S  24U
#define XBAR_AUXSIG3MUX0TO15CFG_MUX12_M  0x3000000U   // Mux12 Configuration for
                                               // AUXSIG3 of CLB-XBAR
#define XBAR_AUXSIG3MUX0TO15CFG_MUX13_S  26U
#define XBAR_AUXSIG3MUX0TO15CFG_MUX13_M  0xC000000U   // Mux13 Configuration for
                                               // AUXSIG3 of CLB-XBAR
#define XBAR_AUXSIG3MUX0TO15CFG_MUX14_S  28U
#define XBAR_AUXSIG3MUX0TO15CFG_MUX14_M  0x30000000U  // Mux14 Configuration for
                                               // AUXSIG3 of CLB-XBAR
#define XBAR_AUXSIG3MUX0TO15CFG_MUX15_S  30U
#define XBAR_AUXSIG3MUX0TO15CFG_MUX15_M  0xC0000000U  // Mux15 Configuration for
                                               // AUXSIG3 of CLB-XBAR

//*****************************************************************************
//
// The following are defines for the bit fields in the AUXSIG4MUX0TO15CFG register
//
//*****************************************************************************
#define XBAR_AUXSIG4MUX0TO15CFG_MUX0_S  0U
#define XBAR_AUXSIG4MUX0TO15CFG_MUX0_M  0x3U         // Mux0 Configuration for
                                               // AUXSIG4 of CLB-XBAR
#define XBAR_AUXSIG4MUX0TO15CFG_MUX1_S  2U
#define XBAR_AUXSIG4MUX0TO15CFG_MUX1_M  0xCU         // Mux1 Configuration for
                                               // AUXSIG4 of CLB-XBAR
#define XBAR_AUXSIG4MUX0TO15CFG_MUX2_S  4U
#define XBAR_AUXSIG4MUX0TO15CFG_MUX2_M  0x30U        // Mux2 Configuration for
                                               // AUXSIG4 of CLB-XBAR
#define XBAR_AUXSIG4MUX0TO15CFG_MUX3_S  6U
#define XBAR_AUXSIG4MUX0TO15CFG_MUX3_M  0xC0U        // Mux3 Configuration for
                                               // AUXSIG4 of CLB-XBAR
#define XBAR_AUXSIG4MUX0TO15CFG_MUX4_S  8U
#define XBAR_AUXSIG4MUX0TO15CFG_MUX4_M  0x300U       // Mux4 Configuration for
                                               // AUXSIG4 of CLB-XBAR
#define XBAR_AUXSIG4MUX0TO15CFG_MUX5_S  10U
#define XBAR_AUXSIG4MUX0TO15CFG_MUX5_M  0xC00U       // Mux5 Configuration for
                                               // AUXSIG4 of CLB-XBAR
#define XBAR_AUXSIG4MUX0TO15CFG_MUX6_S  12U
#define XBAR_AUXSIG4MUX0TO15CFG_MUX6_M  0x3000U      // Mux6 Configuration for
                                               // AUXSIG4 of CLB-XBAR
#define XBAR_AUXSIG4MUX0TO15CFG_MUX7_S  14U
#define XBAR_AUXSIG4MUX0TO15CFG_MUX7_M  0xC000U      // Mux7 Configuration for
                                               // AUXSIG4 of CLB-XBAR
#define XBAR_AUXSIG4MUX0TO15CFG_MUX8_S  16U
#define XBAR_AUXSIG4MUX0TO15CFG_MUX8_M  0x30000U     // Mux8 Configuration for
                                               // AUXSIG4 of CLB-XBAR
#define XBAR_AUXSIG4MUX0TO15CFG_MUX9_S  18U
#define XBAR_AUXSIG4MUX0TO15CFG_MUX9_M  0xC0000U     // Mux9 Configuration for
                                               // AUXSIG4 of CLB-XBAR
#define XBAR_AUXSIG4MUX0TO15CFG_MUX10_S  20U
#define XBAR_AUXSIG4MUX0TO15CFG_MUX10_M  0x300000U    // Mux10 Configuration for
                                               // AUXSIG4 of CLB-XBAR
#define XBAR_AUXSIG4MUX0TO15CFG_MUX11_S  22U
#define XBAR_AUXSIG4MUX0TO15CFG_MUX11_M  0xC00000U    // Mux11 Configuration for
                                               // AUXSIG4 of CLB-XBAR
#define XBAR_AUXSIG4MUX0TO15CFG_MUX12_S  24U
#define XBAR_AUXSIG4MUX0TO15CFG_MUX12_M  0x3000000U   // Mux12 Configuration for
                                               // AUXSIG4 of CLB-XBAR
#define XBAR_AUXSIG4MUX0TO15CFG_MUX13_S  26U
#define XBAR_AUXSIG4MUX0TO15CFG_MUX13_M  0xC000000U   // Mux13 Configuration for
                                               // AUXSIG4 of CLB-XBAR
#define XBAR_AUXSIG4MUX0TO15CFG_MUX14_S  28U
#define XBAR_AUXSIG4MUX0TO15CFG_MUX14_M  0x30000000U  // Mux14 Configuration for
                                               // AUXSIG4 of CLB-XBAR
#define XBAR_AUXSIG4MUX0TO15CFG_MUX15_S  30U
#define XBAR_AUXSIG4MUX0TO15CFG_MUX15_M  0xC0000000U  // Mux15 Configuration for
                                               // AUXSIG4 of CLB-XBAR

//*****************************************************************************
//
// The following are defines for the bit fields in the AUXSIG5MUX0TO15CFG register
//
//*****************************************************************************
#define XBAR_AUXSIG5MUX0TO15CFG_MUX0_S  0U
#define XBAR_AUXSIG5MUX0TO15CFG_MUX0_M  0x3U         // Mux0 Configuration for
                                               // AUXSIG5 of CLB-XBAR
#define XBAR_AUXSIG5MUX0TO15CFG_MUX1_S  2U
#define XBAR_AUXSIG5MUX0TO15CFG_MUX1_M  0xCU         // Mux1 Configuration for
                                               // AUXSIG5 of CLB-XBAR
#define XBAR_AUXSIG5MUX0TO15CFG_MUX2_S  4U
#define XBAR_AUXSIG5MUX0TO15CFG_MUX2_M  0x30U        // Mux2 Configuration for
                                               // AUXSIG5 of CLB-XBAR
#define XBAR_AUXSIG5MUX0TO15CFG_MUX3_S  6U
#define XBAR_AUXSIG5MUX0TO15CFG_MUX3_M  0xC0U        // Mux3 Configuration for
                                               // AUXSIG5 of CLB-XBAR
#define XBAR_AUXSIG5MUX0TO15CFG_MUX4_S  8U
#define XBAR_AUXSIG5MUX0TO15CFG_MUX4_M  0x300U       // Mux4 Configuration for
                                               // AUXSIG5 of CLB-XBAR
#define XBAR_AUXSIG5MUX0TO15CFG_MUX5_S  10U
#define XBAR_AUXSIG5MUX0TO15CFG_MUX5_M  0xC00U       // Mux5 Configuration for
                                               // AUXSIG5 of CLB-XBAR
#define XBAR_AUXSIG5MUX0TO15CFG_MUX6_S  12U
#define XBAR_AUXSIG5MUX0TO15CFG_MUX6_M  0x3000U      // Mux6 Configuration for
                                               // AUXSIG5 of CLB-XBAR
#define XBAR_AUXSIG5MUX0TO15CFG_MUX7_S  14U
#define XBAR_AUXSIG5MUX0TO15CFG_MUX7_M  0xC000U      // Mux7 Configuration for
                                               // AUXSIG5 of CLB-XBAR
#define XBAR_AUXSIG5MUX0TO15CFG_MUX8_S  16U
#define XBAR_AUXSIG5MUX0TO15CFG_MUX8_M  0x30000U     // Mux8 Configuration for
                                               // AUXSIG5 of CLB-XBAR
#define XBAR_AUXSIG5MUX0TO15CFG_MUX9_S  18U
#define XBAR_AUXSIG5MUX0TO15CFG_MUX9_M  0xC0000U     // Mux9 Configuration for
                                               // AUXSIG5 of CLB-XBAR
#define XBAR_AUXSIG5MUX0TO15CFG_MUX10_S  20U
#define XBAR_AUXSIG5MUX0TO15CFG_MUX10_M  0x300000U    // Mux10 Configuration for
                                               // AUXSIG5 of CLB-XBAR
#define XBAR_AUXSIG5MUX0TO15CFG_MUX11_S  22U
#define XBAR_AUXSIG5MUX0TO15CFG_MUX11_M  0xC00000U    // Mux11 Configuration for
                                               // AUXSIG5 of CLB-XBAR
#define XBAR_AUXSIG5MUX0TO15CFG_MUX12_S  24U
#define XBAR_AUXSIG5MUX0TO15CFG_MUX12_M  0x3000000U   // Mux12 Configuration for
                                               // AUXSIG5 of CLB-XBAR
#define XBAR_AUXSIG5MUX0TO15CFG_MUX13_S  26U
#define XBAR_AUXSIG5MUX0TO15CFG_MUX13_M  0xC000000U   // Mux13 Configuration for
                                               // AUXSIG5 of CLB-XBAR
#define XBAR_AUXSIG5MUX0TO15CFG_MUX14_S  28U
#define XBAR_AUXSIG5MUX0TO15CFG_MUX14_M  0x30000000U  // Mux14 Configuration for
                                               // AUXSIG5 of CLB-XBAR
#define XBAR_AUXSIG5MUX0TO15CFG_MUX15_S  30U
#define XBAR_AUXSIG5MUX0TO15CFG_MUX15_M  0xC0000000U  // Mux15 Configuration for
                                               // AUXSIG5 of CLB-XBAR

//*****************************************************************************
//
// The following are defines for the bit fields in the AUXSIG6MUX0TO15CFG register
//
//*****************************************************************************
#define XBAR_AUXSIG6MUX0TO15CFG_MUX0_S  0U
#define XBAR_AUXSIG6MUX0TO15CFG_MUX0_M  0x3U         // Mux0 Configuration for
                                               // AUXSIG6 of CLB-XBAR
#define XBAR_AUXSIG6MUX0TO15CFG_MUX1_S  2U
#define XBAR_AUXSIG6MUX0TO15CFG_MUX1_M  0xCU         // Mux1 Configuration for
                                               // AUXSIG6 of CLB-XBAR
#define XBAR_AUXSIG6MUX0TO15CFG_MUX2_S  4U
#define XBAR_AUXSIG6MUX0TO15CFG_MUX2_M  0x30U        // Mux2 Configuration for
                                               // AUXSIG6 of CLB-XBAR
#define XBAR_AUXSIG6MUX0TO15CFG_MUX3_S  6U
#define XBAR_AUXSIG6MUX0TO15CFG_MUX3_M  0xC0U        // Mux3 Configuration for
                                               // AUXSIG6 of CLB-XBAR
#define XBAR_AUXSIG6MUX0TO15CFG_MUX4_S  8U
#define XBAR_AUXSIG6MUX0TO15CFG_MUX4_M  0x300U       // Mux4 Configuration for
                                               // AUXSIG6 of CLB-XBAR
#define XBAR_AUXSIG6MUX0TO15CFG_MUX5_S  10U
#define XBAR_AUXSIG6MUX0TO15CFG_MUX5_M  0xC00U       // Mux5 Configuration for
                                               // AUXSIG6 of CLB-XBAR
#define XBAR_AUXSIG6MUX0TO15CFG_MUX6_S  12U
#define XBAR_AUXSIG6MUX0TO15CFG_MUX6_M  0x3000U      // Mux6 Configuration for
                                               // AUXSIG6 of CLB-XBAR
#define XBAR_AUXSIG6MUX0TO15CFG_MUX7_S  14U
#define XBAR_AUXSIG6MUX0TO15CFG_MUX7_M  0xC000U      // Mux7 Configuration for
                                               // AUXSIG6 of CLB-XBAR
#define XBAR_AUXSIG6MUX0TO15CFG_MUX8_S  16U
#define XBAR_AUXSIG6MUX0TO15CFG_MUX8_M  0x30000U     // Mux8 Configuration for
                                               // AUXSIG6 of CLB-XBAR
#define XBAR_AUXSIG6MUX0TO15CFG_MUX9_S  18U
#define XBAR_AUXSIG6MUX0TO15CFG_MUX9_M  0xC0000U     // Mux9 Configuration for
                                               // AUXSIG6 of CLB-XBAR
#define XBAR_AUXSIG6MUX0TO15CFG_MUX10_S  20U
#define XBAR_AUXSIG6MUX0TO15CFG_MUX10_M  0x300000U    // Mux10 Configuration for
                                               // AUXSIG6 of CLB-XBAR
#define XBAR_AUXSIG6MUX0TO15CFG_MUX11_S  22U
#define XBAR_AUXSIG6MUX0TO15CFG_MUX11_M  0xC00000U    // Mux11 Configuration for
                                               // AUXSIG6 of CLB-XBAR
#define XBAR_AUXSIG6MUX0TO15CFG_MUX12_S  24U
#define XBAR_AUXSIG6MUX0TO15CFG_MUX12_M  0x3000000U   // Mux12 Configuration for
                                               // AUXSIG6 of CLB-XBAR
#define XBAR_AUXSIG6MUX0TO15CFG_MUX13_S  26U
#define XBAR_AUXSIG6MUX0TO15CFG_MUX13_M  0xC000000U   // Mux13 Configuration for
                                               // AUXSIG6 of CLB-XBAR
#define XBAR_AUXSIG6MUX0TO15CFG_MUX14_S  28U
#define XBAR_AUXSIG6MUX0TO15CFG_MUX14_M  0x30000000U  // Mux14 Configuration for
                                               // AUXSIG6 of CLB-XBAR
#define XBAR_AUXSIG6MUX0TO15CFG_MUX15_S  30U
#define XBAR_AUXSIG6MUX0TO15CFG_MUX15_M  0xC0000000U  // Mux15 Configuration for
                                               // AUXSIG6 of CLB-XBAR

//*****************************************************************************
//
// The following are defines for the bit fields in the AUXSIG7MUX0TO15CFG register
//
//*****************************************************************************
#define XBAR_AUXSIG7MUX0TO15CFG_MUX0_S  0U
#define XBAR_AUXSIG7MUX0TO15CFG_MUX0_M  0x3U         // Mux0 Configuration for
                                               // AUXSIG7 of CLB-XBAR
#define XBAR_AUXSIG7MUX0TO15CFG_MUX1_S  2U
#define XBAR_AUXSIG7MUX0TO15CFG_MUX1_M  0xCU         // Mux1 Configuration for
                                               // AUXSIG7 of CLB-XBAR
#define XBAR_AUXSIG7MUX0TO15CFG_MUX2_S  4U
#define XBAR_AUXSIG7MUX0TO15CFG_MUX2_M  0x30U        // Mux2 Configuration for
                                               // AUXSIG7 of CLB-XBAR
#define XBAR_AUXSIG7MUX0TO15CFG_MUX3_S  6U
#define XBAR_AUXSIG7MUX0TO15CFG_MUX3_M  0xC0U        // Mux3 Configuration for
                                               // AUXSIG7 of CLB-XBAR
#define XBAR_AUXSIG7MUX0TO15CFG_MUX4_S  8U
#define XBAR_AUXSIG7MUX0TO15CFG_MUX4_M  0x300U       // Mux4 Configuration for
                                               // AUXSIG7 of CLB-XBAR
#define XBAR_AUXSIG7MUX0TO15CFG_MUX5_S  10U
#define XBAR_AUXSIG7MUX0TO15CFG_MUX5_M  0xC00U       // Mux5 Configuration for
                                               // AUXSIG7 of CLB-XBAR
#define XBAR_AUXSIG7MUX0TO15CFG_MUX6_S  12U
#define XBAR_AUXSIG7MUX0TO15CFG_MUX6_M  0x3000U      // Mux6 Configuration for
                                               // AUXSIG7 of CLB-XBAR
#define XBAR_AUXSIG7MUX0TO15CFG_MUX7_S  14U
#define XBAR_AUXSIG7MUX0TO15CFG_MUX7_M  0xC000U      // Mux7 Configuration for
                                               // AUXSIG7 of CLB-XBAR
#define XBAR_AUXSIG7MUX0TO15CFG_MUX8_S  16U
#define XBAR_AUXSIG7MUX0TO15CFG_MUX8_M  0x30000U     // Mux8 Configuration for
                                               // AUXSIG7 of CLB-XBAR
#define XBAR_AUXSIG7MUX0TO15CFG_MUX9_S  18U
#define XBAR_AUXSIG7MUX0TO15CFG_MUX9_M  0xC0000U     // Mux9 Configuration for
                                               // AUXSIG7 of CLB-XBAR
#define XBAR_AUXSIG7MUX0TO15CFG_MUX10_S  20U
#define XBAR_AUXSIG7MUX0TO15CFG_MUX10_M  0x300000U    // Mux10 Configuration for
                                               // AUXSIG7 of CLB-XBAR
#define XBAR_AUXSIG7MUX0TO15CFG_MUX11_S  22U
#define XBAR_AUXSIG7MUX0TO15CFG_MUX11_M  0xC00000U    // Mux11 Configuration for
                                               // AUXSIG7 of CLB-XBAR
#define XBAR_AUXSIG7MUX0TO15CFG_MUX12_S  24U
#define XBAR_AUXSIG7MUX0TO15CFG_MUX12_M  0x3000000U   // Mux12 Configuration for
                                               // AUXSIG7 of CLB-XBAR
#define XBAR_AUXSIG7MUX0TO15CFG_MUX13_S  26U
#define XBAR_AUXSIG7MUX0TO15CFG_MUX13_M  0xC000000U   // Mux13 Configuration for
                                               // AUXSIG7 of CLB-XBAR
#define XBAR_AUXSIG7MUX0TO15CFG_MUX14_S  28U
#define XBAR_AUXSIG7MUX0TO15CFG_MUX14_M  0x30000000U  // Mux14 Configuration for
                                               // AUXSIG7 of CLB-XBAR
#define XBAR_AUXSIG7MUX0TO15CFG_MUX15_S  30U
#define XBAR_AUXSIG7MUX0TO15CFG_MUX15_M  0xC0000000U  // Mux15 Configuration for
                                               // AUXSIG7 of CLB-XBAR

//*****************************************************************************
//
// The following are defines for the bit fields in the AUXSIG0MUXENABLE register
//
//*****************************************************************************
#define XBAR_AUXSIG0MUXENABLE_MUX0  0x1U         // mux0 to drive AUXSIG0 of
                                               // CLB-XBAR
#define XBAR_AUXSIG0MUXENABLE_MUX1  0x2U         // Mux1 to drive AUXSIG0 of
                                               // CLB-XBAR
#define XBAR_AUXSIG0MUXENABLE_MUX2  0x4U         // Mux2 to drive AUXSIG0 of
                                               // CLB-XBAR
#define XBAR_AUXSIG0MUXENABLE_MUX3  0x8U         // Mux3 to drive AUXSIG0 of
                                               // CLB-XBAR
#define XBAR_AUXSIG0MUXENABLE_MUX4  0x10U        // Mux4 to drive AUXSIG0 of
                                               // CLB-XBAR
#define XBAR_AUXSIG0MUXENABLE_MUX5  0x20U        // Mux5 to drive AUXSIG0 of
                                               // CLB-XBAR
#define XBAR_AUXSIG0MUXENABLE_MUX6  0x40U        // Mux6 to drive AUXSIG0 of
                                               // CLB-XBAR
#define XBAR_AUXSIG0MUXENABLE_MUX7  0x80U        // Mux7 to drive AUXSIG0 of
                                               // CLB-XBAR
#define XBAR_AUXSIG0MUXENABLE_MUX8  0x100U       // Mux8 to drive AUXSIG0 of
                                               // CLB-XBAR
#define XBAR_AUXSIG0MUXENABLE_MUX9  0x200U       // Mux9 to drive AUXSIG0 of
                                               // CLB-XBAR
#define XBAR_AUXSIG0MUXENABLE_MUX10  0x400U       // Mux10 to drive AUXSIG0 of
                                               // CLB-XBAR
#define XBAR_AUXSIG0MUXENABLE_MUX11  0x800U       // Mux11 to drive AUXSIG0 of
                                               // CLB-XBAR
#define XBAR_AUXSIG0MUXENABLE_MUX12  0x1000U      // Mux12 to drive AUXSIG0 of
                                               // CLB-XBAR
#define XBAR_AUXSIG0MUXENABLE_MUX13  0x2000U      // Mux13 to drive AUXSIG0 of
                                               // CLB-XBAR
#define XBAR_AUXSIG0MUXENABLE_MUX14  0x4000U      // Mux14 to drive AUXSIG0 of
                                               // CLB-XBAR
#define XBAR_AUXSIG0MUXENABLE_MUX15  0x8000U      // Mux15 to drive AUXSIG0 of
                                               // CLB-XBAR
#define XBAR_AUXSIG0MUXENABLE_MUX16  0x10000U     // Mux16 to drive AUXSIG0 of
                                               // CLB-XBAR
#define XBAR_AUXSIG0MUXENABLE_MUX17  0x20000U     // Mux17 to drive AUXSIG0 of
                                               // CLB-XBAR
#define XBAR_AUXSIG0MUXENABLE_MUX18  0x40000U     // Mux18 to drive AUXSIG0 of
                                               // CLB-XBAR
#define XBAR_AUXSIG0MUXENABLE_MUX19  0x80000U     // Mux19 to drive AUXSIG0 of
                                               // CLB-XBAR
#define XBAR_AUXSIG0MUXENABLE_MUX20  0x100000U    // Mux20 to drive AUXSIG0 of
                                               // CLB-XBAR
#define XBAR_AUXSIG0MUXENABLE_MUX21  0x200000U    // Mux21 to drive AUXSIG0 of
                                               // CLB-XBAR
#define XBAR_AUXSIG0MUXENABLE_MUX22  0x400000U    // Mux22 to drive AUXSIG0 of
                                               // CLB-XBAR
#define XBAR_AUXSIG0MUXENABLE_MUX23  0x800000U    // Mux23 to drive AUXSIG0 of
                                               // CLB-XBAR
#define XBAR_AUXSIG0MUXENABLE_MUX24  0x1000000U   // Mux24 to drive AUXSIG0 of
                                               // CLB-XBAR
#define XBAR_AUXSIG0MUXENABLE_MUX25  0x2000000U   // Mux25 to drive AUXSIG0 of
                                               // CLB-XBAR
#define XBAR_AUXSIG0MUXENABLE_MUX26  0x4000000U   // Mux26 to drive AUXSIG0 of
                                               // CLB-XBAR
#define XBAR_AUXSIG0MUXENABLE_MUX27  0x8000000U   // Mux27 to drive AUXSIG0 of
                                               // CLB-XBAR
#define XBAR_AUXSIG0MUXENABLE_MUX28  0x10000000U  // Mux28 to drive AUXSIG0 of
                                               // CLB-XBAR
#define XBAR_AUXSIG0MUXENABLE_MUX29  0x20000000U  // Mux29 to drive AUXSIG0 of
                                               // CLB-XBAR
#define XBAR_AUXSIG0MUXENABLE_MUX30  0x40000000U  // Mux30 to drive AUXSIG0 of
                                               // CLB-XBAR
#define XBAR_AUXSIG0MUXENABLE_MUX31  0x80000000U  // Mux31 to drive AUXSIG0 of
                                               // CLB-XBAR

//*****************************************************************************
//
// The following are defines for the bit fields in the AUXSIG1MUXENABLE register
//
//*****************************************************************************
#define XBAR_AUXSIG1MUXENABLE_MUX0  0x1U         // mux0 to drive AUXSIG1 of
                                               // CLB-XBAR
#define XBAR_AUXSIG1MUXENABLE_MUX1  0x2U         // Mux1 to drive AUXSIG1 of
                                               // CLB-XBAR
#define XBAR_AUXSIG1MUXENABLE_MUX2  0x4U         // Mux2 to drive AUXSIG1 of
                                               // CLB-XBAR
#define XBAR_AUXSIG1MUXENABLE_MUX3  0x8U         // Mux3 to drive AUXSIG1 of
                                               // CLB-XBAR
#define XBAR_AUXSIG1MUXENABLE_MUX4  0x10U        // Mux4 to drive AUXSIG1 of
                                               // CLB-XBAR
#define XBAR_AUXSIG1MUXENABLE_MUX5  0x20U        // Mux5 to drive AUXSIG1 of
                                               // CLB-XBAR
#define XBAR_AUXSIG1MUXENABLE_MUX6  0x40U        // Mux6 to drive AUXSIG1 of
                                               // CLB-XBAR
#define XBAR_AUXSIG1MUXENABLE_MUX7  0x80U        // Mux7 to drive AUXSIG1 of
                                               // CLB-XBAR
#define XBAR_AUXSIG1MUXENABLE_MUX8  0x100U       // Mux8 to drive AUXSIG1 of
                                               // CLB-XBAR
#define XBAR_AUXSIG1MUXENABLE_MUX9  0x200U       // Mux9 to drive AUXSIG1 of
                                               // CLB-XBAR
#define XBAR_AUXSIG1MUXENABLE_MUX10  0x400U       // Mux10 to drive AUXSIG1 of
                                               // CLB-XBAR
#define XBAR_AUXSIG1MUXENABLE_MUX11  0x800U       // Mux11 to drive AUXSIG1 of
                                               // CLB-XBAR
#define XBAR_AUXSIG1MUXENABLE_MUX12  0x1000U      // Mux12 to drive AUXSIG1 of
                                               // CLB-XBAR
#define XBAR_AUXSIG1MUXENABLE_MUX13  0x2000U      // Mux13 to drive AUXSIG1 of
                                               // CLB-XBAR
#define XBAR_AUXSIG1MUXENABLE_MUX14  0x4000U      // Mux14 to drive AUXSIG1 of
                                               // CLB-XBAR
#define XBAR_AUXSIG1MUXENABLE_MUX15  0x8000U      // Mux15 to drive AUXSIG1 of
                                               // CLB-XBAR
#define XBAR_AUXSIG1MUXENABLE_MUX16  0x10000U     // Mux16 to drive AUXSIG1 of
                                               // CLB-XBAR
#define XBAR_AUXSIG1MUXENABLE_MUX17  0x20000U     // Mux17 to drive AUXSIG1 of
                                               // CLB-XBAR
#define XBAR_AUXSIG1MUXENABLE_MUX18  0x40000U     // Mux18 to drive AUXSIG1 of
                                               // CLB-XBAR
#define XBAR_AUXSIG1MUXENABLE_MUX19  0x80000U     // Mux19 to drive AUXSIG1 of
                                               // CLB-XBAR
#define XBAR_AUXSIG1MUXENABLE_MUX20  0x100000U    // Mux20 to drive AUXSIG1 of
                                               // CLB-XBAR
#define XBAR_AUXSIG1MUXENABLE_MUX21  0x200000U    // Mux21 to drive AUXSIG1 of
                                               // CLB-XBAR
#define XBAR_AUXSIG1MUXENABLE_MUX22  0x400000U    // Mux22 to drive AUXSIG1 of
                                               // CLB-XBAR
#define XBAR_AUXSIG1MUXENABLE_MUX23  0x800000U    // Mux23 to drive AUXSIG1 of
                                               // CLB-XBAR
#define XBAR_AUXSIG1MUXENABLE_MUX24  0x1000000U   // Mux24 to drive AUXSIG1 of
                                               // CLB-XBAR
#define XBAR_AUXSIG1MUXENABLE_MUX25  0x2000000U   // Mux25 to drive AUXSIG1 of
                                               // CLB-XBAR
#define XBAR_AUXSIG1MUXENABLE_MUX26  0x4000000U   // Mux26 to drive AUXSIG1 of
                                               // CLB-XBAR
#define XBAR_AUXSIG1MUXENABLE_MUX27  0x8000000U   // Mux27 to drive AUXSIG1 of
                                               // CLB-XBAR
#define XBAR_AUXSIG1MUXENABLE_MUX28  0x10000000U  // Mux28 to drive AUXSIG1 of
                                               // CLB-XBAR
#define XBAR_AUXSIG1MUXENABLE_MUX29  0x20000000U  // Mux29 to drive AUXSIG1 of
                                               // CLB-XBAR
#define XBAR_AUXSIG1MUXENABLE_MUX30  0x40000000U  // Mux30 to drive AUXSIG1 of
                                               // CLB-XBAR
#define XBAR_AUXSIG1MUXENABLE_MUX31  0x80000000U  // Mux31 to drive AUXSIG1 of
                                               // CLB-XBAR

//*****************************************************************************
//
// The following are defines for the bit fields in the AUXSIG2MUXENABLE register
//
//*****************************************************************************
#define XBAR_AUXSIG2MUXENABLE_MUX0  0x1U         // mux0 to drive AUXSIG2 of
                                               // CLB-XBAR
#define XBAR_AUXSIG2MUXENABLE_MUX1  0x2U         // Mux1 to drive AUXSIG2 of
                                               // CLB-XBAR
#define XBAR_AUXSIG2MUXENABLE_MUX2  0x4U         // Mux2 to drive AUXSIG2 of
                                               // CLB-XBAR
#define XBAR_AUXSIG2MUXENABLE_MUX3  0x8U         // Mux3 to drive AUXSIG2 of
                                               // CLB-XBAR
#define XBAR_AUXSIG2MUXENABLE_MUX4  0x10U        // Mux4 to drive AUXSIG2 of
                                               // CLB-XBAR
#define XBAR_AUXSIG2MUXENABLE_MUX5  0x20U        // Mux5 to drive AUXSIG2 of
                                               // CLB-XBAR
#define XBAR_AUXSIG2MUXENABLE_MUX6  0x40U        // Mux6 to drive AUXSIG2 of
                                               // CLB-XBAR
#define XBAR_AUXSIG2MUXENABLE_MUX7  0x80U        // Mux7 to drive AUXSIG2 of
                                               // CLB-XBAR
#define XBAR_AUXSIG2MUXENABLE_MUX8  0x100U       // Mux8 to drive AUXSIG2 of
                                               // CLB-XBAR
#define XBAR_AUXSIG2MUXENABLE_MUX9  0x200U       // Mux9 to drive AUXSIG2 of
                                               // CLB-XBAR
#define XBAR_AUXSIG2MUXENABLE_MUX10  0x400U       // Mux10 to drive AUXSIG2 of
                                               // CLB-XBAR
#define XBAR_AUXSIG2MUXENABLE_MUX11  0x800U       // Mux11 to drive AUXSIG2 of
                                               // CLB-XBAR
#define XBAR_AUXSIG2MUXENABLE_MUX12  0x1000U      // Mux12 to drive AUXSIG2 of
                                               // CLB-XBAR
#define XBAR_AUXSIG2MUXENABLE_MUX13  0x2000U      // Mux13 to drive AUXSIG2 of
                                               // CLB-XBAR
#define XBAR_AUXSIG2MUXENABLE_MUX14  0x4000U      // Mux14 to drive AUXSIG2 of
                                               // CLB-XBAR
#define XBAR_AUXSIG2MUXENABLE_MUX15  0x8000U      // Mux15 to drive AUXSIG2 of
                                               // CLB-XBAR
#define XBAR_AUXSIG2MUXENABLE_MUX16  0x10000U     // Mux16 to drive AUXSIG2 of
                                               // CLB-XBAR
#define XBAR_AUXSIG2MUXENABLE_MUX17  0x20000U     // Mux17 to drive AUXSIG2 of
                                               // CLB-XBAR
#define XBAR_AUXSIG2MUXENABLE_MUX18  0x40000U     // Mux18 to drive AUXSIG2 of
                                               // CLB-XBAR
#define XBAR_AUXSIG2MUXENABLE_MUX19  0x80000U     // Mux19 to drive AUXSIG2 of
                                               // CLB-XBAR
#define XBAR_AUXSIG2MUXENABLE_MUX20  0x100000U    // Mux20 to drive AUXSIG2 of
                                               // CLB-XBAR
#define XBAR_AUXSIG2MUXENABLE_MUX21  0x200000U    // Mux21 to drive AUXSIG2 of
                                               // CLB-XBAR
#define XBAR_AUXSIG2MUXENABLE_MUX22  0x400000U    // Mux22 to drive AUXSIG2 of
                                               // CLB-XBAR
#define XBAR_AUXSIG2MUXENABLE_MUX23  0x800000U    // Mux23 to drive AUXSIG2 of
                                               // CLB-XBAR
#define XBAR_AUXSIG2MUXENABLE_MUX24  0x1000000U   // Mux24 to drive AUXSIG2 of
                                               // CLB-XBAR
#define XBAR_AUXSIG2MUXENABLE_MUX25  0x2000000U   // Mux25 to drive AUXSIG2 of
                                               // CLB-XBAR
#define XBAR_AUXSIG2MUXENABLE_MUX26  0x4000000U   // Mux26 to drive AUXSIG2 of
                                               // CLB-XBAR
#define XBAR_AUXSIG2MUXENABLE_MUX27  0x8000000U   // Mux27 to drive AUXSIG2 of
                                               // CLB-XBAR
#define XBAR_AUXSIG2MUXENABLE_MUX28  0x10000000U  // Mux28 to drive AUXSIG2 of
                                               // CLB-XBAR
#define XBAR_AUXSIG2MUXENABLE_MUX29  0x20000000U  // Mux29 to drive AUXSIG2 of
                                               // CLB-XBAR
#define XBAR_AUXSIG2MUXENABLE_MUX30  0x40000000U  // Mux30 to drive AUXSIG2 of
                                               // CLB-XBAR
#define XBAR_AUXSIG2MUXENABLE_MUX31  0x80000000U  // Mux31 to drive AUXSIG2 of
                                               // CLB-XBAR

//*****************************************************************************
//
// The following are defines for the bit fields in the AUXSIG3MUXENABLE register
//
//*****************************************************************************
#define XBAR_AUXSIG3MUXENABLE_MUX0  0x1U         // mux0 to drive AUXSIG3 of
                                               // CLB-XBAR
#define XBAR_AUXSIG3MUXENABLE_MUX1  0x2U         // Mux1 to drive AUXSIG3 of
                                               // CLB-XBAR
#define XBAR_AUXSIG3MUXENABLE_MUX2  0x4U         // Mux2 to drive AUXSIG3 of
                                               // CLB-XBAR
#define XBAR_AUXSIG3MUXENABLE_MUX3  0x8U         // Mux3 to drive AUXSIG3 of
                                               // CLB-XBAR
#define XBAR_AUXSIG3MUXENABLE_MUX4  0x10U        // Mux4 to drive AUXSIG3 of
                                               // CLB-XBAR
#define XBAR_AUXSIG3MUXENABLE_MUX5  0x20U        // Mux5 to drive AUXSIG3 of
                                               // CLB-XBAR
#define XBAR_AUXSIG3MUXENABLE_MUX6  0x40U        // Mux6 to drive AUXSIG3 of
                                               // CLB-XBAR
#define XBAR_AUXSIG3MUXENABLE_MUX7  0x80U        // Mux7 to drive AUXSIG3 of
                                               // CLB-XBAR
#define XBAR_AUXSIG3MUXENABLE_MUX8  0x100U       // Mux8 to drive AUXSIG3 of
                                               // CLB-XBAR
#define XBAR_AUXSIG3MUXENABLE_MUX9  0x200U       // Mux9 to drive AUXSIG3 of
                                               // CLB-XBAR
#define XBAR_AUXSIG3MUXENABLE_MUX10  0x400U       // Mux10 to drive AUXSIG3 of
                                               // CLB-XBAR
#define XBAR_AUXSIG3MUXENABLE_MUX11  0x800U       // Mux11 to drive AUXSIG3 of
                                               // CLB-XBAR
#define XBAR_AUXSIG3MUXENABLE_MUX12  0x1000U      // Mux12 to drive AUXSIG3 of
                                               // CLB-XBAR
#define XBAR_AUXSIG3MUXENABLE_MUX13  0x2000U      // Mux13 to drive AUXSIG3 of
                                               // CLB-XBAR
#define XBAR_AUXSIG3MUXENABLE_MUX14  0x4000U      // Mux14 to drive AUXSIG3 of
                                               // CLB-XBAR
#define XBAR_AUXSIG3MUXENABLE_MUX15  0x8000U      // Mux15 to drive AUXSIG3 of
                                               // CLB-XBAR
#define XBAR_AUXSIG3MUXENABLE_MUX16  0x10000U     // Mux16 to drive AUXSIG3 of
                                               // CLB-XBAR
#define XBAR_AUXSIG3MUXENABLE_MUX17  0x20000U     // Mux17 to drive AUXSIG3 of
                                               // CLB-XBAR
#define XBAR_AUXSIG3MUXENABLE_MUX18  0x40000U     // Mux18 to drive AUXSIG3 of
                                               // CLB-XBAR
#define XBAR_AUXSIG3MUXENABLE_MUX19  0x80000U     // Mux19 to drive AUXSIG3 of
                                               // CLB-XBAR
#define XBAR_AUXSIG3MUXENABLE_MUX20  0x100000U    // Mux20 to drive AUXSIG3 of
                                               // CLB-XBAR
#define XBAR_AUXSIG3MUXENABLE_MUX21  0x200000U    // Mux21 to drive AUXSIG3 of
                                               // CLB-XBAR
#define XBAR_AUXSIG3MUXENABLE_MUX22  0x400000U    // Mux22 to drive AUXSIG3 of
                                               // CLB-XBAR
#define XBAR_AUXSIG3MUXENABLE_MUX23  0x800000U    // Mux23 to drive AUXSIG3 of
                                               // CLB-XBAR
#define XBAR_AUXSIG3MUXENABLE_MUX24  0x1000000U   // Mux24 to drive AUXSIG3 of
                                               // CLB-XBAR
#define XBAR_AUXSIG3MUXENABLE_MUX25  0x2000000U   // Mux25 to drive AUXSIG3 of
                                               // CLB-XBAR
#define XBAR_AUXSIG3MUXENABLE_MUX26  0x4000000U   // Mux26 to drive AUXSIG3 of
                                               // CLB-XBAR
#define XBAR_AUXSIG3MUXENABLE_MUX27  0x8000000U   // Mux27 to drive AUXSIG3 of
                                               // CLB-XBAR
#define XBAR_AUXSIG3MUXENABLE_MUX28  0x10000000U  // Mux28 to drive AUXSIG3 of
                                               // CLB-XBAR
#define XBAR_AUXSIG3MUXENABLE_MUX29  0x20000000U  // Mux29 to drive AUXSIG3 of
                                               // CLB-XBAR
#define XBAR_AUXSIG3MUXENABLE_MUX30  0x40000000U  // Mux30 to drive AUXSIG3 of
                                               // CLB-XBAR
#define XBAR_AUXSIG3MUXENABLE_MUX31  0x80000000U  // Mux31 to drive AUXSIG3 of
                                               // CLB-XBAR

//*****************************************************************************
//
// The following are defines for the bit fields in the AUXSIG4MUXENABLE register
//
//*****************************************************************************
#define XBAR_AUXSIG4MUXENABLE_MUX0  0x1U         // mux0 to drive AUXSIG4 of
                                               // CLB-XBAR
#define XBAR_AUXSIG4MUXENABLE_MUX1  0x2U         // Mux1 to drive AUXSIG4 of
                                               // CLB-XBAR
#define XBAR_AUXSIG4MUXENABLE_MUX2  0x4U         // Mux2 to drive AUXSIG4 of
                                               // CLB-XBAR
#define XBAR_AUXSIG4MUXENABLE_MUX3  0x8U         // Mux3 to drive AUXSIG4 of
                                               // CLB-XBAR
#define XBAR_AUXSIG4MUXENABLE_MUX4  0x10U        // Mux4 to drive AUXSIG4 of
                                               // CLB-XBAR
#define XBAR_AUXSIG4MUXENABLE_MUX5  0x20U        // Mux5 to drive AUXSIG4 of
                                               // CLB-XBAR
#define XBAR_AUXSIG4MUXENABLE_MUX6  0x40U        // Mux6 to drive AUXSIG4 of
                                               // CLB-XBAR
#define XBAR_AUXSIG4MUXENABLE_MUX7  0x80U        // Mux7 to drive AUXSIG4 of
                                               // CLB-XBAR
#define XBAR_AUXSIG4MUXENABLE_MUX8  0x100U       // Mux8 to drive AUXSIG4 of
                                               // CLB-XBAR
#define XBAR_AUXSIG4MUXENABLE_MUX9  0x200U       // Mux9 to drive AUXSIG4 of
                                               // CLB-XBAR
#define XBAR_AUXSIG4MUXENABLE_MUX10  0x400U       // Mux10 to drive AUXSIG4 of
                                               // CLB-XBAR
#define XBAR_AUXSIG4MUXENABLE_MUX11  0x800U       // Mux11 to drive AUXSIG4 of
                                               // CLB-XBAR
#define XBAR_AUXSIG4MUXENABLE_MUX12  0x1000U      // Mux12 to drive AUXSIG4 of
                                               // CLB-XBAR
#define XBAR_AUXSIG4MUXENABLE_MUX13  0x2000U      // Mux13 to drive AUXSIG4 of
                                               // CLB-XBAR
#define XBAR_AUXSIG4MUXENABLE_MUX14  0x4000U      // Mux14 to drive AUXSIG4 of
                                               // CLB-XBAR
#define XBAR_AUXSIG4MUXENABLE_MUX15  0x8000U      // Mux15 to drive AUXSIG4 of
                                               // CLB-XBAR
#define XBAR_AUXSIG4MUXENABLE_MUX16  0x10000U     // Mux16 to drive AUXSIG4 of
                                               // CLB-XBAR
#define XBAR_AUXSIG4MUXENABLE_MUX17  0x20000U     // Mux17 to drive AUXSIG4 of
                                               // CLB-XBAR
#define XBAR_AUXSIG4MUXENABLE_MUX18  0x40000U     // Mux18 to drive AUXSIG4 of
                                               // CLB-XBAR
#define XBAR_AUXSIG4MUXENABLE_MUX19  0x80000U     // Mux19 to drive AUXSIG4 of
                                               // CLB-XBAR
#define XBAR_AUXSIG4MUXENABLE_MUX20  0x100000U    // Mux20 to drive AUXSIG4 of
                                               // CLB-XBAR
#define XBAR_AUXSIG4MUXENABLE_MUX21  0x200000U    // Mux21 to drive AUXSIG4 of
                                               // CLB-XBAR
#define XBAR_AUXSIG4MUXENABLE_MUX22  0x400000U    // Mux22 to drive AUXSIG4 of
                                               // CLB-XBAR
#define XBAR_AUXSIG4MUXENABLE_MUX23  0x800000U    // Mux23 to drive AUXSIG4 of
                                               // CLB-XBAR
#define XBAR_AUXSIG4MUXENABLE_MUX24  0x1000000U   // Mux24 to drive AUXSIG4 of
                                               // CLB-XBAR
#define XBAR_AUXSIG4MUXENABLE_MUX25  0x2000000U   // Mux25 to drive AUXSIG4 of
                                               // CLB-XBAR
#define XBAR_AUXSIG4MUXENABLE_MUX26  0x4000000U   // Mux26 to drive AUXSIG4 of
                                               // CLB-XBAR
#define XBAR_AUXSIG4MUXENABLE_MUX27  0x8000000U   // Mux27 to drive AUXSIG4 of
                                               // CLB-XBAR
#define XBAR_AUXSIG4MUXENABLE_MUX28  0x10000000U  // Mux28 to drive AUXSIG4 of
                                               // CLB-XBAR
#define XBAR_AUXSIG4MUXENABLE_MUX29  0x20000000U  // Mux29 to drive AUXSIG4 of
                                               // CLB-XBAR
#define XBAR_AUXSIG4MUXENABLE_MUX30  0x40000000U  // Mux30 to drive AUXSIG4 of
                                               // CLB-XBAR
#define XBAR_AUXSIG4MUXENABLE_MUX31  0x80000000U  // Mux31 to drive AUXSIG4 of
                                               // CLB-XBAR

//*****************************************************************************
//
// The following are defines for the bit fields in the AUXSIG5MUXENABLE register
//
//*****************************************************************************
#define XBAR_AUXSIG5MUXENABLE_MUX0  0x1U         // mux0 to drive AUXSIG5 of
                                               // CLB-XBAR
#define XBAR_AUXSIG5MUXENABLE_MUX1  0x2U         // Mux1 to drive AUXSIG5 of
                                               // CLB-XBAR
#define XBAR_AUXSIG5MUXENABLE_MUX2  0x4U         // Mux2 to drive AUXSIG5 of
                                               // CLB-XBAR
#define XBAR_AUXSIG5MUXENABLE_MUX3  0x8U         // Mux3 to drive AUXSIG5 of
                                               // CLB-XBAR
#define XBAR_AUXSIG5MUXENABLE_MUX4  0x10U        // Mux4 to drive AUXSIG5 of
                                               // CLB-XBAR
#define XBAR_AUXSIG5MUXENABLE_MUX5  0x20U        // Mux5 to drive AUXSIG5 of
                                               // CLB-XBAR
#define XBAR_AUXSIG5MUXENABLE_MUX6  0x40U        // Mux6 to drive AUXSIG5 of
                                               // CLB-XBAR
#define XBAR_AUXSIG5MUXENABLE_MUX7  0x80U        // Mux7 to drive AUXSIG5 of
                                               // CLB-XBAR
#define XBAR_AUXSIG5MUXENABLE_MUX8  0x100U       // Mux8 to drive AUXSIG5 of
                                               // CLB-XBAR
#define XBAR_AUXSIG5MUXENABLE_MUX9  0x200U       // Mux9 to drive AUXSIG5 of
                                               // CLB-XBAR
#define XBAR_AUXSIG5MUXENABLE_MUX10  0x400U       // Mux10 to drive AUXSIG5 of
                                               // CLB-XBAR
#define XBAR_AUXSIG5MUXENABLE_MUX11  0x800U       // Mux11 to drive AUXSIG5 of
                                               // CLB-XBAR
#define XBAR_AUXSIG5MUXENABLE_MUX12  0x1000U      // Mux12 to drive AUXSIG5 of
                                               // CLB-XBAR
#define XBAR_AUXSIG5MUXENABLE_MUX13  0x2000U      // Mux13 to drive AUXSIG5 of
                                               // CLB-XBAR
#define XBAR_AUXSIG5MUXENABLE_MUX14  0x4000U      // Mux14 to drive AUXSIG5 of
                                               // CLB-XBAR
#define XBAR_AUXSIG5MUXENABLE_MUX15  0x8000U      // Mux15 to drive AUXSIG5 of
                                               // CLB-XBAR
#define XBAR_AUXSIG5MUXENABLE_MUX16  0x10000U     // Mux16 to drive AUXSIG5 of
                                               // CLB-XBAR
#define XBAR_AUXSIG5MUXENABLE_MUX17  0x20000U     // Mux17 to drive AUXSIG5 of
                                               // CLB-XBAR
#define XBAR_AUXSIG5MUXENABLE_MUX18  0x40000U     // Mux18 to drive AUXSIG5 of
                                               // CLB-XBAR
#define XBAR_AUXSIG5MUXENABLE_MUX19  0x80000U     // Mux19 to drive AUXSIG5 of
                                               // CLB-XBAR
#define XBAR_AUXSIG5MUXENABLE_MUX20  0x100000U    // Mux20 to drive AUXSIG5 of
                                               // CLB-XBAR
#define XBAR_AUXSIG5MUXENABLE_MUX21  0x200000U    // Mux21 to drive AUXSIG5 of
                                               // CLB-XBAR
#define XBAR_AUXSIG5MUXENABLE_MUX22  0x400000U    // Mux22 to drive AUXSIG5 of
                                               // CLB-XBAR
#define XBAR_AUXSIG5MUXENABLE_MUX23  0x800000U    // Mux23 to drive AUXSIG5 of
                                               // CLB-XBAR
#define XBAR_AUXSIG5MUXENABLE_MUX24  0x1000000U   // Mux24 to drive AUXSIG5 of
                                               // CLB-XBAR
#define XBAR_AUXSIG5MUXENABLE_MUX25  0x2000000U   // Mux25 to drive AUXSIG5 of
                                               // CLB-XBAR
#define XBAR_AUXSIG5MUXENABLE_MUX26  0x4000000U   // Mux26 to drive AUXSIG5 of
                                               // CLB-XBAR
#define XBAR_AUXSIG5MUXENABLE_MUX27  0x8000000U   // Mux27 to drive AUXSIG5 of
                                               // CLB-XBAR
#define XBAR_AUXSIG5MUXENABLE_MUX28  0x10000000U  // Mux28 to drive AUXSIG5 of
                                               // CLB-XBAR
#define XBAR_AUXSIG5MUXENABLE_MUX29  0x20000000U  // Mux29 to drive AUXSIG5 of
                                               // CLB-XBAR
#define XBAR_AUXSIG5MUXENABLE_MUX30  0x40000000U  // Mux30 to drive AUXSIG5 of
                                               // CLB-XBAR
#define XBAR_AUXSIG5MUXENABLE_MUX31  0x80000000U  // Mux31 to drive AUXSIG5 of
                                               // CLB-XBAR

//*****************************************************************************
//
// The following are defines for the bit fields in the AUXSIG6MUXENABLE register
//
//*****************************************************************************
#define XBAR_AUXSIG6MUXENABLE_MUX0  0x1U         // mux0 to drive AUXSIG6 of
                                               // CLB-XBAR
#define XBAR_AUXSIG6MUXENABLE_MUX1  0x2U         // Mux1 to drive AUXSIG6 of
                                               // CLB-XBAR
#define XBAR_AUXSIG6MUXENABLE_MUX2  0x4U         // Mux2 to drive AUXSIG6 of
                                               // CLB-XBAR
#define XBAR_AUXSIG6MUXENABLE_MUX3  0x8U         // Mux3 to drive AUXSIG6 of
                                               // CLB-XBAR
#define XBAR_AUXSIG6MUXENABLE_MUX4  0x10U        // Mux4 to drive AUXSIG6 of
                                               // CLB-XBAR
#define XBAR_AUXSIG6MUXENABLE_MUX5  0x20U        // Mux5 to drive AUXSIG6 of
                                               // CLB-XBAR
#define XBAR_AUXSIG6MUXENABLE_MUX6  0x40U        // Mux6 to drive AUXSIG6 of
                                               // CLB-XBAR
#define XBAR_AUXSIG6MUXENABLE_MUX7  0x80U        // Mux7 to drive AUXSIG6 of
                                               // CLB-XBAR
#define XBAR_AUXSIG6MUXENABLE_MUX8  0x100U       // Mux8 to drive AUXSIG6 of
                                               // CLB-XBAR
#define XBAR_AUXSIG6MUXENABLE_MUX9  0x200U       // Mux9 to drive AUXSIG6 of
                                               // CLB-XBAR
#define XBAR_AUXSIG6MUXENABLE_MUX10  0x400U       // Mux10 to drive AUXSIG6 of
                                               // CLB-XBAR
#define XBAR_AUXSIG6MUXENABLE_MUX11  0x800U       // Mux11 to drive AUXSIG6 of
                                               // CLB-XBAR
#define XBAR_AUXSIG6MUXENABLE_MUX12  0x1000U      // Mux12 to drive AUXSIG6 of
                                               // CLB-XBAR
#define XBAR_AUXSIG6MUXENABLE_MUX13  0x2000U      // Mux13 to drive AUXSIG6 of
                                               // CLB-XBAR
#define XBAR_AUXSIG6MUXENABLE_MUX14  0x4000U      // Mux14 to drive AUXSIG6 of
                                               // CLB-XBAR
#define XBAR_AUXSIG6MUXENABLE_MUX15  0x8000U      // Mux15 to drive AUXSIG6 of
                                               // CLB-XBAR
#define XBAR_AUXSIG6MUXENABLE_MUX16  0x10000U     // Mux16 to drive AUXSIG6 of
                                               // CLB-XBAR
#define XBAR_AUXSIG6MUXENABLE_MUX17  0x20000U     // Mux17 to drive AUXSIG6 of
                                               // CLB-XBAR
#define XBAR_AUXSIG6MUXENABLE_MUX18  0x40000U     // Mux18 to drive AUXSIG6 of
                                               // CLB-XBAR
#define XBAR_AUXSIG6MUXENABLE_MUX19  0x80000U     // Mux19 to drive AUXSIG6 of
                                               // CLB-XBAR
#define XBAR_AUXSIG6MUXENABLE_MUX20  0x100000U    // Mux20 to drive AUXSIG6 of
                                               // CLB-XBAR
#define XBAR_AUXSIG6MUXENABLE_MUX21  0x200000U    // Mux21 to drive AUXSIG6 of
                                               // CLB-XBAR
#define XBAR_AUXSIG6MUXENABLE_MUX22  0x400000U    // Mux22 to drive AUXSIG6 of
                                               // CLB-XBAR
#define XBAR_AUXSIG6MUXENABLE_MUX23  0x800000U    // Mux23 to drive AUXSIG6 of
                                               // CLB-XBAR
#define XBAR_AUXSIG6MUXENABLE_MUX24  0x1000000U   // Mux24 to drive AUXSIG6 of
                                               // CLB-XBAR
#define XBAR_AUXSIG6MUXENABLE_MUX25  0x2000000U   // Mux25 to drive AUXSIG6 of
                                               // CLB-XBAR
#define XBAR_AUXSIG6MUXENABLE_MUX26  0x4000000U   // Mux26 to drive AUXSIG6 of
                                               // CLB-XBAR
#define XBAR_AUXSIG6MUXENABLE_MUX27  0x8000000U   // Mux27 to drive AUXSIG6 of
                                               // CLB-XBAR
#define XBAR_AUXSIG6MUXENABLE_MUX28  0x10000000U  // Mux28 to drive AUXSIG6 of
                                               // CLB-XBAR
#define XBAR_AUXSIG6MUXENABLE_MUX29  0x20000000U  // Mux29 to drive AUXSIG6 of
                                               // CLB-XBAR
#define XBAR_AUXSIG6MUXENABLE_MUX30  0x40000000U  // Mux30 to drive AUXSIG6 of
                                               // CLB-XBAR
#define XBAR_AUXSIG6MUXENABLE_MUX31  0x80000000U  // Mux31 to drive AUXSIG6 of
                                               // CLB-XBAR

//*****************************************************************************
//
// The following are defines for the bit fields in the AUXSIG7MUXENABLE register
//
//*****************************************************************************
#define XBAR_AUXSIG7MUXENABLE_MUX0  0x1U         // mux0 to drive AUXSIG7 of
                                               // CLB-XBAR
#define XBAR_AUXSIG7MUXENABLE_MUX1  0x2U         // Mux1 to drive AUXSIG7 of
                                               // CLB-XBAR
#define XBAR_AUXSIG7MUXENABLE_MUX2  0x4U         // Mux2 to drive AUXSIG7 of
                                               // CLB-XBAR
#define XBAR_AUXSIG7MUXENABLE_MUX3  0x8U         // Mux3 to drive AUXSIG7 of
                                               // CLB-XBAR
#define XBAR_AUXSIG7MUXENABLE_MUX4  0x10U        // Mux4 to drive AUXSIG7 of
                                               // CLB-XBAR
#define XBAR_AUXSIG7MUXENABLE_MUX5  0x20U        // Mux5 to drive AUXSIG7 of
                                               // CLB-XBAR
#define XBAR_AUXSIG7MUXENABLE_MUX6  0x40U        // Mux6 to drive AUXSIG7 of
                                               // CLB-XBAR
#define XBAR_AUXSIG7MUXENABLE_MUX7  0x80U        // Mux7 to drive AUXSIG7 of
                                               // CLB-XBAR
#define XBAR_AUXSIG7MUXENABLE_MUX8  0x100U       // Mux8 to drive AUXSIG7 of
                                               // CLB-XBAR
#define XBAR_AUXSIG7MUXENABLE_MUX9  0x200U       // Mux9 to drive AUXSIG7 of
                                               // CLB-XBAR
#define XBAR_AUXSIG7MUXENABLE_MUX10  0x400U       // Mux10 to drive AUXSIG7 of
                                               // CLB-XBAR
#define XBAR_AUXSIG7MUXENABLE_MUX11  0x800U       // Mux11 to drive AUXSIG7 of
                                               // CLB-XBAR
#define XBAR_AUXSIG7MUXENABLE_MUX12  0x1000U      // Mux12 to drive AUXSIG7 of
                                               // CLB-XBAR
#define XBAR_AUXSIG7MUXENABLE_MUX13  0x2000U      // Mux13 to drive AUXSIG7 of
                                               // CLB-XBAR
#define XBAR_AUXSIG7MUXENABLE_MUX14  0x4000U      // Mux14 to drive AUXSIG7 of
                                               // CLB-XBAR
#define XBAR_AUXSIG7MUXENABLE_MUX15  0x8000U      // Mux15 to drive AUXSIG7 of
                                               // CLB-XBAR
#define XBAR_AUXSIG7MUXENABLE_MUX16  0x10000U     // Mux16 to drive AUXSIG7 of
                                               // CLB-XBAR
#define XBAR_AUXSIG7MUXENABLE_MUX17  0x20000U     // Mux17 to drive AUXSIG7 of
                                               // CLB-XBAR
#define XBAR_AUXSIG7MUXENABLE_MUX18  0x40000U     // Mux18 to drive AUXSIG7 of
                                               // CLB-XBAR
#define XBAR_AUXSIG7MUXENABLE_MUX19  0x80000U     // Mux19 to drive AUXSIG7 of
                                               // CLB-XBAR
#define XBAR_AUXSIG7MUXENABLE_MUX20  0x100000U    // Mux20 to drive AUXSIG7 of
                                               // CLB-XBAR
#define XBAR_AUXSIG7MUXENABLE_MUX21  0x200000U    // Mux21 to drive AUXSIG7 of
                                               // CLB-XBAR
#define XBAR_AUXSIG7MUXENABLE_MUX22  0x400000U    // Mux22 to drive AUXSIG7 of
                                               // CLB-XBAR
#define XBAR_AUXSIG7MUXENABLE_MUX23  0x800000U    // Mux23 to drive AUXSIG7 of
                                               // CLB-XBAR
#define XBAR_AUXSIG7MUXENABLE_MUX24  0x1000000U   // Mux24 to drive AUXSIG7 of
                                               // CLB-XBAR
#define XBAR_AUXSIG7MUXENABLE_MUX25  0x2000000U   // Mux25 to drive AUXSIG7 of
                                               // CLB-XBAR
#define XBAR_AUXSIG7MUXENABLE_MUX26  0x4000000U   // Mux26 to drive AUXSIG7 of
                                               // CLB-XBAR
#define XBAR_AUXSIG7MUXENABLE_MUX27  0x8000000U   // Mux27 to drive AUXSIG7 of
                                               // CLB-XBAR
#define XBAR_AUXSIG7MUXENABLE_MUX28  0x10000000U  // Mux28 to drive AUXSIG7 of
                                               // CLB-XBAR
#define XBAR_AUXSIG7MUXENABLE_MUX29  0x20000000U  // Mux29 to drive AUXSIG7 of
                                               // CLB-XBAR
#define XBAR_AUXSIG7MUXENABLE_MUX30  0x40000000U  // Mux30 to drive AUXSIG7 of
                                               // CLB-XBAR
#define XBAR_AUXSIG7MUXENABLE_MUX31  0x80000000U  // Mux31 to drive AUXSIG7 of
                                               // CLB-XBAR

//*****************************************************************************
//
// The following are defines for the bit fields in the AUXSIGOUTINV register
//
//*****************************************************************************
#define XBAR_AUXSIGOUTINV_OUT0    0x1U         // Selects polarity for AUXSIG0
                                               // of CLB-XBAR
#define XBAR_AUXSIGOUTINV_OUT1    0x2U         // Selects polarity for AUXSIG1
                                               // of CLB-XBAR
#define XBAR_AUXSIGOUTINV_OUT2    0x4U         // Selects polarity for AUXSIG2
                                               // of CLB-XBAR
#define XBAR_AUXSIGOUTINV_OUT3    0x8U         // Selects polarity for AUXSIG3
                                               // of CLB-XBAR
#define XBAR_AUXSIGOUTINV_OUT4    0x10U        // Selects polarity for AUXSIG4
                                               // of CLB-XBAR
#define XBAR_AUXSIGOUTINV_OUT5    0x20U        // Selects polarity for AUXSIG5
                                               // of CLB-XBAR
#define XBAR_AUXSIGOUTINV_OUT6    0x40U        // Selects polarity for AUXSIG6
                                               // of CLB-XBAR
#define XBAR_AUXSIGOUTINV_OUT7    0x80U        // Selects polarity for AUXSIG7
                                               // of CLB-XBAR

//*****************************************************************************
//
// The following are defines for the bit fields in the AUXSIGLOCK register
//
//*****************************************************************************
#define XBAR_AUXSIGLOCK_LOCK      0x1U         // Locks the configuration for
                                               // CLB-XBAR
#define XBAR_AUXSIGLOCK_KEY_S     16U
#define XBAR_AUXSIGLOCK_KEY_M     0xFFFF0000U  // Write Protection KEY
#endif

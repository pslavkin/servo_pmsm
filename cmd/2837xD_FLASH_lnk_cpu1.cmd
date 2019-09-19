//#############################################################################
//
// FILE:    iddk_servo_2837x_flash_lnk_cpu1.cmd
//
//#############################################################################
// $TI Release: MotorControl SDK v2.00.00.00 $
// $Release Date: Wed Jun 19 14:21:52 CDT 2019 $
// $Copyright:
// Copyright (C) 2017-2019 Texas Instruments Incorporated
//
//     http://www.ti.com/ ALL RIGHTS RESERVED
// $
//#############################################################################

/* ======================================================
// In addition to this memory linker command file,
// add the header linker command file directly to the project.
// The header linker command file is required to link the
// peripheral structures to the proper locations within
// the memory map.
//
// The header linker files are found in <base>\28M35x_headers\cmd
//
// For BIOS applications add:      F2837x_Headers_BIOS.cmd
// For nonBIOS applications add:   F2837x_Headers_nonBIOS.cmd
========================================================= */



/* Define the memory block start/length for the 28M35n
   PAGE 0 will be used to organize program sections
   PAGE 1 will be used to organize data sections

   Notes:
         Memory blocks on F2837x are uniform (ie same
         physical memory) in both PAGE 0 and PAGE 1.
         That is the same memory region should not be
         defined for both PAGE 0 and PAGE 1.
         Doing so will result in corruption of program
         and/or data.

         L0 block is mirrored - that is it
         can be accessed in high memory or low memory.
         For simplicity only one instance is used in this
         linker file.

         Contiguous SARAM memory blocks can be combined
         if required to create a larger memory block.
*/
CLA_SCRATCHPAD_SIZE = 0x100;
--undef_sym=__cla_scratchpad_end
--undef_sym=__cla_scratchpad_start

MEMORY
{
PAGE 0 :
   /* BEGIN is used for the "boot to SARAM" bootloader mode   */

   BEGIN       : origin = 0x080000, length = 0x000002
   RAMLS0LS1   : origin = 0x008000, length = 0x001000
   RAMLS4LS5         : origin = 0x00A000, length = 0x001000
   RESET       : origin = 0x3FFFC0, length = 0x000002
   IQTABLES    : origin = 0x3FE000, length = 0x000B50     /* IQ Math Tables in Boot ROM */
   IQTABLES2   : origin = 0x3FEB50, length = 0x00008C     /* IQ Math Tables in Boot ROM */
   IQTABLES3   : origin = 0x3FEBDC, length = 0x0000AA   /* IQ Math Tables in Boot ROM */

   FLASHN      : origin = 0x80002, length = 0x001FFD     /* on-chip FLASH */
   FLASHML      : origin = 0x82000, length = 0x004000     /* on-chip FLASH */
   /*FLASHL      : origin = 0x84000, length = 0x002000*/     /* on-chip FLASH */
   FLASHK      : origin = 0x86000, length = 0x002000     /* on-chip FLASH */
   FLASHJ      : origin = 0x88000, length = 0x008000     /* on-chip FLASH */
   FLASHI      : origin = 0x90000, length = 0x008000     /* on-chip FLASH */
   FLASHH      : origin = 0x98000, length = 0x008000     /* on-chip FLASH */
   FLASHG      : origin = 0xA0000, length = 0x008000     /* on-chip FLASH */
   FLASHF      : origin = 0xA8000, length = 0x008000     /* on-chip FLASH */
   FLASHE      : origin = 0xB0000, length = 0x008000      /* on-chip FLASH */
   FLASHD      : origin = 0xB8000, length = 0x002000      /* on-chip FLASH */
   FLASHC      : origin = 0xBA000, length = 0x002000      /* on-chip FLASH */
   FLASHB      : origin = 0xBC000, length = 0x002000     /* on-chip FLASH */

   FLASHN1      : origin = 0xC0000, length = 0x002000     /* on-chip FLASH */
   FLASHM1      : origin = 0xC2000, length = 0x002000     /* on-chip FLASH */
   FLASHL1      : origin = 0xC4000, length = 0x002000     /* on-chip FLASH */
   FLASHK1      : origin = 0xC6000, length = 0x002000     /* on-chip FLASH */
   FLASHJ1      : origin = 0xC8000, length = 0x008000     /* on-chip FLASH */
   FLASHI1      : origin = 0xD0000, length = 0x008000     /* on-chip FLASH */
   FLASHH1      : origin = 0xD8000, length = 0x008000     /* on-chip FLASH */
   FLASHG1      : origin = 0xE0000, length = 0x008000     /* on-chip FLASH */
   FLASHF1      : origin = 0xE8000, length = 0x008000     /* on-chip FLASH */
   FLASHE1      : origin = 0xF0000, length = 0x008000      /* on-chip FLASH */
   FLASHD1      : origin = 0xF8000, length = 0x002000      /* on-chip FLASH */
   FLASHC1      : origin = 0xFA000, length = 0x002000      /* on-chip FLASH */
   FLASHB1      : origin = 0xFC000, length = 0x002000     /* on-chip FLASH */
   FLASHA1      : origin = 0xFE000, length = 0x002000     /* on-chip FLASH */



   BOOTROM     : origin = 0x3FF27C, length = 0x000D44


PAGE 1 :

   RAMM0       : origin = 0x000004, length = 0x000250
   RAMM1       : origin = 0x000400, length = 0x000400     /* on-chip RAM block M1 */
   RAMD0D1     : origin = 0x00B000, length = 0x001000
   CLA1_MSGRAMLOW  : origin = 0x001480, length = 0x000080
   CLA1_MSGRAMHIGH : origin = 0x001500, length = 0x000080

   RAMLS2      : origin = 0x009000, length = 0x000800
   RAMLS3      : origin = 0x009800, length = 0x000800


   RAMGS0GS1  : origin = 0x00C000, length = 0x002000
   RAMGS3      : origin = 0x00F000, length = 0x000500
   RAMGS4      : origin = 0x010000, length = 0x000500
   RAMGS5      : origin = 0x011000, length = 0x000500
   RAMGS6      : origin = 0x012000, length = 0x000500
   RAMGS7      : origin = 0x013000, length = 0x000500
   RAMGS8      : origin = 0x014000, length = 0x000500
   RAMGS9      : origin = 0x015000, length = 0x000500
   RAMGS10     : origin = 0x016000, length = 0x000500
   RAMGS11     : origin = 0x017000, length = 0x000500
   RAMGS12     : origin = 0x018000, length = 0x000500
   RAMGS13     : origin = 0x019000, length = 0x000500
   RAMGS14     : origin = 0x01A000, length = 0x000500
   RAMGS15     : origin = 0x01B000, length = 0x000500

   FLASHA      : origin = 0xBE000, length = 0x002000      /* on-chip FLASH */
   CLA1DEBUG    : origin = 0x001440, length = 0x000040     /* CLA Debug registers */

}


SECTIONS
{
   /* Setup for "boot to SARAM" mode:
      The codestart section (found in DSP28_CodeStartBranch.asm)
      re-directs execution to the start of user code.  */
   codestart        : > BEGIN,     PAGE = 0

#ifdef __TI_COMPILER_VERSION__
   #if __TI_COMPILER_VERSION__ >= 15009000
    .TI.ramfunc : {} LOAD = FLASHML,
                     RUN = RAMLS0LS1,
                     LOAD_START(_RamfuncsLoadStart),
                     LOAD_SIZE(_RamfuncsLoadSize),
                     LOAD_END(_RamfuncsLoadEnd),
                     RUN_START(_RamfuncsRunStart),
                     RUN_SIZE(_RamfuncsRunSize),
                     RUN_END(_RamfuncsRunEnd),
                PAGE = 0, ALIGN(4)
   #else
    ramfuncs : {} LOAD = FLASHML,
                     RUN = RAMLS0LS1,
                     LOAD_START(_RamfuncsLoadStart),
                     LOAD_SIZE(_RamfuncsLoadSize),
                     LOAD_END(_RamfuncsLoadEnd),
                     RUN_START(_RamfuncsRunStart),
                     RUN_SIZE(_RamfuncsRunSize),
                     RUN_END(_RamfuncsRunEnd),
                PAGE = 0, ALIGN(4)
   #endif
#endif

   .text            : > FLASHML           ,PAGE = 0
   .cinit           : > FLASHN|FLASHML    ,PAGE = 0
   .pinit           : > FLASHN            ,PAGE = 0
   .switch          : > FLASHML           ,PAGE = 0
   .reset           : > RESET             ,PAGE = 0 ,TYPE = DSECT /* not used ,*/

   .stack           : > RAMM1             ,PAGE = 1
   .ebss            : > RAMD0D1|RAMGS0GS1 ,PAGE = 1
   /*.econst          : > FLASHML           ,PAGE = 0
   */
   .econst          : > FLASHK           ,PAGE = 0
   .esysmem         : > RAMGS0GS1         ,PAGE = 1

    /* CLA specific sections */
   Cla1Prog         : LOAD = FLASHD,
                      RUN = RAMLS4LS5,
                      LOAD_START(_Cla1funcsLoadStart),
                      LOAD_END(_Cla1funcsLoadEnd),
                      RUN_START(_Cla1funcsRunStart),
                      LOAD_SIZE(_Cla1funcsLoadSize),
                      PAGE = 0, ALIGN(4)

   ClaData          : > RAMLS3, PAGE=1, ALIGN=2

   Cla1ToCpuMsgRAM  : > CLA1_MSGRAMLOW,   PAGE = 1
   CpuToCla1MsgRAM  : > CLA1_MSGRAMHIGH,  PAGE = 1

    /* SFRA specific sections */
   SFRA_F32_Data    : > RAMGS11, PAGE = 1, ALIGN = 64
   
  /* CLA C compiler sections */
   //
   // Must be allocated to memory the CLA has write access to
   //
   CLAscratch       :
                        { *.obj(CLAscratch)
                        . += CLA_SCRATCHPAD_SIZE;
                        *.obj(CLAscratch_end) } >  RAMLS2,  PAGE = 1, ALIGN=2

   .scratchpad      : > RAMLS2,       PAGE = 1
   .bss_cla        : > RAMLS2,       PAGE = 1
   .const_cla      :  LOAD = FLASHB,
                       RUN = RAMLS2,
                       RUN_START(_Cla1ConstRunStart),
                       LOAD_START(_Cla1ConstLoadStart),
                       LOAD_SIZE(_Cla1ConstLoadSize),
                       PAGE = 1
   //
   // Must be allocated to memory the CLA has write access to
   //

   Cla1DebugRegsFile     : > CLA1DEBUG,    PAGE = 1



   //IQmath           : > RAML0,     PAGE = 0
   //IQmathTables     : > IQTABLES,  PAGE = 0, TYPE = NOLOAD

  /* Uncomment the section below if calling the IQNexp() or IQexp()
      functions from the IQMath.lib library in order to utilize the
      relevant IQ Math table in Boot ROM (This saves space and Boot ROM
      is 1 wait-state). If this section is not uncommented, IQmathTables2
      will be loaded into other memory (SARAM, Flash, etc.) and will take
      up space, but 0 wait-state is possible.
   */
   /*
   IQmathTables2    : > IQTABLES2, PAGE = 0, TYPE = NOLOAD
   {

              IQmath.lib<IQNexpTable.obj> (IQmathTablesRam)

   }
   */
   /* Uncomment the section below if calling the IQNasin() or IQasin()
      functions from the IQMath.lib library in order to utilize the
      relevant IQ Math table in Boot ROM (This saves space and Boot ROM
      is 1 wait-state). If this section is not uncommented, IQmathTables2
      will be loaded into other memory (SARAM, Flash, etc.) and will take
      up space, but 0 wait-state is possible.
   */
   /*
   IQmathTables3    : > IQTABLES3, PAGE = 0, TYPE = NOLOAD
   {

              IQmath.lib<IQNasinTable.obj> (IQmathTablesRam)

   }
   */

}

/*
//===========================================================================
// End of file.
//===========================================================================
*/

#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
#include "schedule.h"
#include "scia.h"
#include "overcurrent.h"
#include "opt.h"
#include "cla1.h"
#include "fcl.h"

// Cla1Task function externs (tasks 1-4 are owned by the FCL library)
extern __interrupt void Cla1Task1(void);
extern __interrupt void Cla1Task2(void);
extern __interrupt void Cla1Task3(void);
extern __interrupt void Cla1Task4(void);

interrupt void Cla1Task5 ( void ) { }
interrupt void Cla1Task6 ( void ) { }
interrupt void Cla1Task7 ( void ) { }
interrupt void Cla1Task8 ( void ) { }

// These are defined by the linker file
extern uint32_t Cla1funcsLoadStart;
extern uint32_t Cla1funcsLoadSize;
extern uint32_t Cla1funcsRunStart;
extern uint32_t Cla1funcsLoadEnd;   // not used in code

// init CLA1
void initCLA1(void)/*{{{*/
{
   // Initialize CLA module
   // make sure QEP access is given to CLA as Secondary master
   SysCtl_selectSecMaster(SYSCTL_SEC_MASTER_CLA, SYSCTL_SEC_MASTER_CLA);

   // initialize CLA, QEP for FCL library
   configureCLA();

   // Enable EPWM1 INT trigger for CLA TASK1
   CLA_setTriggerSource(CLA_TASK_1, CLA_TRIGGER_EPWM1INT);
}/*}}}*/
// Configure CLA
void configureCLA(void)/*{{{*/
{
#ifdef _FLASH
    //
    // Copy CLA code from its load address (FLASH) to CLA program RAM
    //
    // Note: during debug the load and run addresses can be
    // the same as Code Composer Studio can load the CLA program
    // RAM directly.
    //
    // The ClafuncsLoadStart, ClafuncsLoadEnd, and ClafuncsRunStart
    // symbols are created by the linker.
    //
    memcpy((uint32_t *)&Cla1funcsRunStart, (uint32_t *)&Cla1funcsLoadStart,
            (uint32_t)&Cla1funcsLoadSize);
#endif //_FLASH

    // Initialize and wait for CLA1ToCPUMsgRAM

    MemCfg_initSections(MEMCFG_SECT_MSGCLA1TOCPU);
    while(MemCfg_getInitStatus(MEMCFG_SECT_MSGCLA1TOCPU) != 1)
       ;

    // Initialize and wait for CPUToCLA1MsgRAM
    MemCfg_initSections(MEMCFG_SECT_MSGCPUTOCLA1);
    while(MemCfg_getInitStatus(MEMCFG_SECT_MSGCPUTOCLA1) != 1)
       ;

    // Select LS5RAM to be the programming space for the CLA
    // First configure the CLA to be the master for LS5 and then
    // set the space to be a program block
    MemCfg_setLSRAMMasterSel ( MEMCFG_SECT_LS4, MEMCFG_LSRAMMASTER_CPU_CLA1 );
    MemCfg_setCLAMemType     ( MEMCFG_SECT_LS4, MEMCFG_CLA_MEM_PROGRAM      );

    MemCfg_setLSRAMMasterSel ( MEMCFG_SECT_LS5, MEMCFG_LSRAMMASTER_CPU_CLA1 );
    MemCfg_setCLAMemType     ( MEMCFG_SECT_LS5, MEMCFG_CLA_MEM_PROGRAM      );

    // Next configure LS2RAM and LS3RAM as data spaces for the CLA
    // First configure the CLA to be the master and then
    // set the spaces to be code blocks
    MemCfg_setLSRAMMasterSel ( MEMCFG_SECT_LS2, MEMCFG_LSRAMMASTER_CPU_CLA1 );
    MemCfg_setCLAMemType     ( MEMCFG_SECT_LS2, MEMCFG_CLA_MEM_DATA         );

    MemCfg_setLSRAMMasterSel ( MEMCFG_SECT_LS3, MEMCFG_LSRAMMASTER_CPU_CLA1 );
    MemCfg_setCLAMemType     ( MEMCFG_SECT_LS3, MEMCFG_CLA_MEM_DATA         );

    // Compute all CLA task vectors
    // On Type-1 CLAs the MVECT registers accept full 16-bit task addresses as
    // opposed to offsets used on older Type-0 CLAs
#pragma diag_suppress=770
    CLA_mapTaskVector(CLA1_BASE, CLA_MVECT_1, (uint16_t)(&Cla1Task1));
    CLA_mapTaskVector(CLA1_BASE, CLA_MVECT_2, (uint16_t)(&Cla1Task2));
    CLA_mapTaskVector(CLA1_BASE, CLA_MVECT_3, (uint16_t)(&Cla1Task3));
    CLA_mapTaskVector(CLA1_BASE, CLA_MVECT_4, (uint16_t)(&Cla1Task4));
    CLA_mapTaskVector(CLA1_BASE, CLA_MVECT_5, (uint16_t)(&Cla1Task5));
    CLA_mapTaskVector(CLA1_BASE, CLA_MVECT_6, (uint16_t)(&Cla1Task6));
    CLA_mapTaskVector(CLA1_BASE, CLA_MVECT_7, (uint16_t)(&Cla1Task7));
    CLA_mapTaskVector(CLA1_BASE, CLA_MVECT_8, (uint16_t)(&Cla1Task8));
#pragma diag_suppress=770

    // Enable the IACK instruction to start a task on CLA in software
    // for all  8 CLA tasks. Also, globally enable all 8 tasks (or a
    // subset of tasks) by writing to their respective bits in the
    // MIER register
    CLA_enableIACK  ( CLA1_BASE                   );
    CLA_enableTasks ( CLA1_BASE, CLA_TASKFLAG_ALL );

    return;
}/*}}}*/



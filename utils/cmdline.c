#include <stdint.h>
#include <stdbool.h>
#include <string.h>
#include <stdlib.h>
#include "scia.h"
#include "opt.h"
#include "sm.h"
#include "cmdline.h"
#include "wdog.h"
#include "adc_.h"
#include "eqep_.h"
#include "pwm.h"

tCmdLineEntry Login_Cmd_Table[ ];
tCmdLineEntry adcCmdTable    [ ];
tCmdLineEntry pwmCmdTable    [ ];
tCmdLineEntry eqepCmdTable   [ ];

char *         g_ppcArgv[CMDLINE_MAX_ARGS + 1];
tCmdLineEntry* actualCmdTable=Login_Cmd_Table;

//--------------------------------------------------------------------------------
tCmdLineEntry Login_Cmd_Table[] =
{
   { "login"  ,Cmd_login       ,": login"      },
   { "adc"    ,Cmd_login2adc   ,": adc setup"  },
   { "pwm"    ,Cmd_login2pwm   ,": pwm setup"  },
   { "eqep"   ,Cmd_login2eqep  ,": eqep setup" },
   { "uptime" ,Cmd_Uptime      ,": upteim"     },
   { "p"      ,Cmd_readEqepPos ,": read posx"  },//debug
   { "v"      ,Cmd_version     ,": version"    },
   { "?"      ,Cmd_Help        ,": help"       },
   { 0        ,0               ,0              }
};

void Cmd_login      ( uint16_t argc, char *argv[] ) { sciPrintf("login\r\n")    ;}
void Cmd_version    ( uint16_t argc, char *argv[] ) { sciPrintf("PMSM C2000 V1.0 - Pablo Slavkin\r\n")    ;}
void Cmd_login2adc  ( uint16_t argc, char *argv[] ) { actualCmdTable=adcCmdTable;}
void Cmd_login2pwm  ( uint16_t argc, char *argv[] ) { actualCmdTable=pwmCmdTable;}
void Cmd_login2eqep ( uint16_t argc, char *argv[] ) { actualCmdTable=eqepCmdTable;}
//--------------------------------------------------------------------------------
tCmdLineEntry adcCmdTable[] =
{
    { "a" ,Cmd_readAdc    ,": print adc channel x" } ,
    { "<" ,Cmd_back2login ,": back to login table" } ,
    { "?" ,Cmd_Help       ,": help"                } ,
    { 0   ,0              ,0                       }
};

void Cmd_readAdc(uint16_t argc, char *argv[])
{
   if(argc>1) {
      uint32_t channel=atoi(argv[1]);
      float r=readAdc(channel);
      sciPrintf("adc channel%d = %f\r\n",channel,r);
   }
}
//--------------------------------------------------------------------------------
tCmdLineEntry pwmCmdTable[] =
{
    { "pwm" ,Cmd_setPwmPeriod ,": set pwm period for eqep simulation" },
    { "+"   ,Cmd_incPwmPeriod ,": inc pwm period for eqep simulation" },
    { "-"   ,Cmd_decPwmPeriod ,": dec pwm period for eqep simulation" },
    { "p"   ,Cmd_readEqepPos  ,": read posx"                          },//debug
    { "<"   ,Cmd_back2login   ,": back to login table"                },
    { "?"   ,Cmd_Help         ,": help"                               },
    { 0     ,0                ,0                                      }
};

void Cmd_setPwmPeriod(uint16_t argc, char *argv[])
{
   if(argc>1) {
      uint32_t newPeriod=atoi(argv[1]);
      setPwmPeriod(newPeriod);
      sciPrintf("pwm period=%10d\r\n",getPwmPeriod());
   }
}
void Cmd_incPwmPeriod(uint16_t argc, char *argv[])
{
   setPwmPeriod(getPwmPeriod()+109);
   sciPrintf("pwm period=%10d\r\n",getPwmPeriod());
}
void Cmd_decPwmPeriod(uint16_t argc, char *argv[])
{
   setPwmPeriod(getPwmPeriod()-100);
   sciPrintf("pwm period=%10d\r\n",getPwmPeriod());
}
//--------------------------------------------------------------------------------
tCmdLineEntry eqepCmdTable[] =
{
   { "p" ,Cmd_readEqepPos ,": read posx"           },
   { "<" ,Cmd_back2login  ,": back to login table" },
   { "?" ,Cmd_Help        ,": help"                },
   { 0   ,0               ,0                       }
};

void Cmd_readEqepPos(uint16_t argc, char *argv[])
{
   posCalc      ( );
   speedLowCalc ( );
   sciPrintf (
         "posActual       =%10d\r\n"
         "dirActual       =%10d\r\n"
         "pos             =%10d\r\n"
         "dir             =%10d\r\n"
         "possDiff        =%10d\r\n"
         "speedFastLinear =%f\r\n"
         "speedFastRps    =%f\r\n"
         "speedFastRpm    =%f\r\n"
         "speedLowPeriod  =%10d\r\n"
         "speedLowRps     =%f\r\n"
         "speedLowRpm     =%f\r\n",
         posSpeed.posActual,
         posSpeed.dirActual,
         posSpeed.pos,
         posSpeed.dir,
         posSpeed.posDiff,
         posSpeed.speedFastLinear,
         posSpeed.speedFastRps,
         posSpeed.speedFastRpm,
         posSpeed.speedLowPeriod,
         posSpeed.speedLowRps,
         posSpeed.speedLowRpm
         );

//   sciprintf (
//         "thetaelec     =%10d\r\n"
//         "thetamech     =%10d\r\n"
//         "directionQEP  =%10d\r\n"
//         "thetaRaw      =%10d\r\n"
//         "mechScaler    =%10d\r\n"
//         "polePairs     =%10d\r\n"
//         "calAngle      =%10d\r\n"
//         "speedScaler   =%10d\r\n"
//         "speedPR       =%10d\r\n"
//         "baseRPM       =%10d\r\n"
//         "speedRPMPR    =%10d\r\n"
//         "oldPos        =%10d\r\n"
//         "speedFR       =%10d\r\n"
//         "speedRPMFR    =%10d\r\n",
//         (uint32_t)posSpeed.thetaElec,
//         (uint32_t)posSpeed.thetaMech,
//         (uint32_t)posSpeed.directionQEP,
//         (uint32_t)posSpeed.thetaRaw,
//         (uint32_t)posSpeed.mechScaler,
//         (uint32_t)posSpeed.polePairs,
//         (uint32_t)posSpeed.calAngle,
//         (uint32_t)posSpeed.speedScaler,
//         (uint32_t)posSpeed.speedPR,
//         (uint32_t)posSpeed.baseRPM,
//         (uint32_t)posSpeed.speedRPMPR,
//         (uint32_t)posSpeed.oldPos,
//         (uint32_t)posSpeed.speedFR,
//         (uint32_t)posSpeed.speedRPMFR
//            );
}
//--------------------------------------------------------------------------------
void Cmd_back2login(uint16_t argc, char *argv[])
{
   actualCmdTable=Login_Cmd_Table;
}
void Cmd_Help(uint16_t argc, char *argv[])
{
    tCmdLineEntry *pEntry;
    sciPrintf("\r\navailable commands\r\n------------------\r\n");
    pEntry = actualCmdTable;
    for(;pEntry->pcCmd;pEntry++)
        sciPrintf("%15s%s\r\n", pEntry->pcCmd, pEntry->pcHelp);
}
//----------------------------------------------------------------------------
void CmdLineProcess(char* originalLine)/*{{{*/
{
   char line[APP_INPUT_BUF_SIZE];
   strncpy(line,originalLine,sizeof(line));

   char*            pcChar;
   char             ui8Argc;
   bool             bFindArg = true;
   tCmdLineEntry*   psCmdEntry;

   ui8Argc = 0;                                           // Initialize the argument counter, and point to the beginning of the command line string.
   pcChar  = line;
   while(*pcChar) {                                       // Advance through the command line until a zero character is found.
      if(*pcChar == ' ') {                               // If there is a space, then replace it with a zero, and set the flag to search for the next argument.
         *pcChar  = 0;
         bFindArg = true;
      }
      else {                                             // Otherwise it is not a space, so it must be a character that is part of an argument.
         if(bFindArg) {                                 // If bFindArg is set, then that means we are looking for the start of the next argument.
            if(ui8Argc < CMDLINE_MAX_ARGS) {           // As long as the maximum number of arguments has not been reached, then save the pointer to the start of this new arg in the argv array, and increment the count of args, argc.
               g_ppcArgv[ui8Argc] = pcChar;
               ui8Argc++;
               bFindArg           = false;
            }
            else {                                     // The maximum number of arguments has been reached so return the error.
               sciPrintf("too many arguments for command processor\r\n");
               goto prompt;
            }
         }
      }
      pcChar++;                                          // Advance to the next character in the command line.
   }
   if(ui8Argc) {                                          // If one or more arguments was found, then process the command.
      psCmdEntry = actualCmdTable;                       // Start at the beginning of the command table, to look for a matching command.
      while(psCmdEntry->pcCmd) {                         // Search through the command table until a null command string is found, which marks the end of the table.
         if(!strcmp(g_ppcArgv[0], psCmdEntry->pcCmd)) { // If this command entry command string matches argv[0], then call the function for this command, passing the command line arguments.
            psCmdEntry->pfnCmd(ui8Argc, g_ppcArgv);
            goto prompt;
         }
         psCmdEntry++;                                  // Not found, so advance to the next entry.
      }
      sciPrintf("bad command\r\n");
   }
prompt:                                                    // Fall through to here means that no matching command was found, so return an error.
   sciPrintf("> ");
}/*}}}*/

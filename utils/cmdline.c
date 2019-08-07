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
#include "schedule.h"

tCmdLineEntry Login_Cmd_Table[ ];
tCmdLineEntry adcCmdTable    [ ];
tCmdLineEntry pwmCmdTable    [ ];
tCmdLineEntry eqepCmdTable   [ ];
tCmdLineEntry rampGenCmdTable[ ];

char *         g_ppcArgv[CMDLINE_MAX_ARGS + 1];
tCmdLineEntry* actualCmdTable=Login_Cmd_Table;
//--------------------------------------------------------------------------------
tCmdLineEntry Login_Cmd_Table[] =
{
   { "login"  ,Cmd_login         ,": login"          },
   { "adc"    ,Cmd_login2adc     ,": adc setup"      },
   { "pwm"    ,Cmd_login2pwm     ,": pwm setup"      },
   { "ramp"   ,Cmd_login2rampGen ,": ramp Generator" },
   { "eqep"   ,Cmd_login2eqep    ,": eqep setup"     },
   { "uptime" ,Cmd_Uptime        ,": upteim"         },
   { "p"      ,Cmd_readEqepPos   ,": read posx"      },//debug
   { "v"      ,Cmd_version       ,": version"        },
   { "?"      ,Cmd_Help          ,": help"           },
   { 0        ,0                 ,0                  }
};

void Cmd_login         ( uint16_t argc, char *argv[] ) { sciPrintf("login\r\n")                          ;}
void Cmd_version       ( uint16_t argc, char *argv[] ) { sciPrintf("PMSM C2000 V1.0 - Pablo Slavkin\r\n");}
void Cmd_login2adc     ( uint16_t argc, char *argv[] ) { actualCmdTable=adcCmdTable                      ;}
void Cmd_login2pwm     ( uint16_t argc, char *argv[] ) { actualCmdTable=pwmCmdTable                      ;}
void Cmd_login2rampGen ( uint16_t argc, char *argv[] ) { actualCmdTable=rampGenCmdTable                  ;}
void Cmd_login2eqep    ( uint16_t argc, char *argv[] ) { actualCmdTable=eqepCmdTable                     ;}
//--------------------------------------------------------------------------------
tCmdLineEntry adcCmdTable[] =/*{{{*/
{
    { "a" ,Cmd_readAdc         ,": print adc channel x" },
    { "v" ,Cmd_readLemV        ,": read Iv"             },
    { "w" ,Cmd_readLemW        ,": read Iw"             },
    { "t" ,Cmd_readTemperature ,": print temperature"   },
    { "<" ,Cmd_back2login      ,": back to login table" },
    { "?" ,Cmd_Help            ,": help"                },
    { 0   ,0                   ,0                       }
};

void Cmd_readAdc(uint16_t argc, char *argv[])
{
   if(argc>2) {
      uint32_t base    = atoi(argv[1]);
      uint32_t channel = atoi(argv[2]);
      uint32_t r=readAdc(base,(ADC_Channel)channel);
      sciPrintf("adc base %d channel %d = %i\r\n",base,channel,r);
   }
}
void Cmd_readLemV(uint16_t argc, char *argv[])
{
   float V=readLemV();
   sciPrintf("LemV %f\r\n",V);
}

void Cmd_readLemW(uint16_t argc, char *argv[])
{
   sciPrintf("LemW %f\r\n",readLemW());
}
void printTemp(void)
{
   uint16_t t=adc2Temperature(readAdc(0,13));
   sciPrintf("adc temperature = %i\r\n",t);
}

void Cmd_readTemperature(uint16_t argc, char *argv[])
{
   if(!Free_Func_Schedule(printTemp)) {
      if(argc>1)
         New_Periodic_Func_Schedule(atoi(argv[1]),printTemp);
      else
         printTemp();
   }
}/*}}}*/
//--------------------------------------------------------------------------------
tCmdLineEntry rampGenCmdTable[] =/*{{{*/
{
    { "r" ,Cmd_printRampCtl    ,": print rampCtl structure"    },
    { "g" ,Cmd_printRampGen    ,": print rampGen structure"    },
    { "p" ,Cmd_printPark       ,": print park structure"       },
    { "s" ,Cmd_printSvGen      ,": print svGen structure"       },
    { "m" ,Cmd_motorIsr        ,": execute motor ise one time" },
    { "<" ,Cmd_back2login      ,": back to login table"        },
    { "?" ,Cmd_Help            ,": help"                       },
    { 0   ,0                   ,0                              }
};
void Cmd_motorIsr(uint16_t argc, char *argv[])
{
   if(!Free_Func_Schedule(motorISR)) {
      if(argc>1)
         New_Periodic_Func_Schedule(atoi(argv[1]),motorISR);
      else
         motorISR();
   }
}
void Cmd_printPark(uint16_t argc, char *argv[])
{
   printPark();
}
void Cmd_printSvGen(uint16_t argc, char *argv[])
{
   printSvGen();
}
void Cmd_printRampCtl(uint16_t argc, char *argv[])
{
   printRampCtl();
}
void Cmd_printRampGen(uint16_t argc, char *argv[])
{
   printRampGen();
}/*}}}*/
//--------------------------------------------------------------------------------
tCmdLineEntry pwmCmdTable[] =/*{{{*/
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
}/*}}}*/
//--------------------------------------------------------------------------------
tCmdLineEntry eqepCmdTable[] =/*{{{*/
{
   { "p" ,Cmd_readEqepPos ,": read posx"           },
   { "<" ,Cmd_back2login  ,": back to login table" },
   { "?" ,Cmd_Help        ,": help"                },
   { 0   ,0               ,0                       }
};

void printPosSpeed(void)
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
}
void Cmd_readEqepPos(uint16_t argc, char *argv[])
{
   if(!Free_Func_Schedule(printPosSpeed)) {
      if(argc>1)
         New_Periodic_Func_Schedule(atoi(argv[1]),printPosSpeed);
      else
         printPosSpeed();
   }
}/*}}}*/
//--------------------------------------------------------------------------------
void Cmd_back2login(uint16_t argc, char *argv[])/*{{{*/
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
}/*}}}*/
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

#include <stdint.h>
#include <stdbool.h>
#include <string.h>
#include <stdlib.h>
#include "scia.h"
#include "opt.h"
#include "sm.h"
#include "pi.h"
#include "fcl.h"
#include "pid_.h"
#include "cmdline.h"
#include "wdog.h"
#include "adc_.h"
#include "eqep_.h"
#include "schedule.h"
#include "position.h"

tCmdLineEntry Login_Cmd_Table [ ];
tCmdLineEntry iqPidCmdTable   [ ];
tCmdLineEntry speedPidCmdTable[ ];
tCmdLineEntry posPidCmdTable  [ ];
tCmdLineEntry stepDirCmdTable [ ];
tCmdLineEntry logCmdTable     [ ];

char *         g_ppcArgv[CMDLINE_MAX_ARGS + 1];
tCmdLineEntry* actualCmdTable=Login_Cmd_Table;
//--------------------------------------------------------------------------------
tCmdLineEntry Login_Cmd_Table[] =
{
   { "login"   ,Cmd_login         ,": login"                },
   { "iq"      ,Cmd_iqPid         ,": iq PID parameters"    },
   { "speed"   ,Cmd_speedPid      ,": speed PID parameters" },
   { "pos"     ,Cmd_posPid        ,": speed PID parameters" },
   { "stepdir" ,Cmd_stepDir       ,": step dir emulation"   },
   { "log"     ,Cmd_log           ,": log on/off"           },
   { "v"       ,Cmd_version       ,": version"              },
   { "?"       ,Cmd_Help          ,": help"                 },
   { 0         ,0                 ,0                        }
                                                            };
void Cmd_login         ( uint16_t argc, char *argv[] ) { sciPrintf("login\r\n")                          ;}
void Cmd_version       ( uint16_t argc, char *argv[] ) { sciPrintf("PMSM C2000 V1.0 - Pablo Slavkin\r\n");}
void Cmd_iqPid         ( uint16_t argc, char *argv[] ) { actualCmdTable=iqPidCmdTable                    ;}
void Cmd_speedPid      ( uint16_t argc, char *argv[] ) { actualCmdTable=speedPidCmdTable                 ;}
void Cmd_posPid        ( uint16_t argc, char *argv[] ) { actualCmdTable=posPidCmdTable                   ;}
void Cmd_stepDir       ( uint16_t argc, char *argv[] ) { actualCmdTable=stepDirCmdTable                  ;}
void Cmd_log           ( uint16_t argc, char *argv[] ) { actualCmdTable=logCmdTable                      ;}
//--------------------------------------------------------------------------------
tCmdLineEntry iqPidCmdTable[] =/*{{{*/
{
   { "r" ,Cmd_readIqPid  ,": read iq PID"         },
   { "w" ,Cmd_writeIqPid ,": read iq PID"         },
   { "<" ,Cmd_back2login ,": back to login table" },
   { "?" ,Cmd_Help       ,": help"                },
   { 0   ,0              ,0                       }
};
void Cmd_readIqPid(uint16_t argc, char *argv[])
{
   printFclPi(&pi_iq);
}
void Cmd_writeIqPid(uint16_t argc, char *argv[])
{
   if(argc>5) {
      if(argv[1][0]!=',') pi_iq.ref  = atof(argv[1]);
      if(argv[2][0]!=',') pi_iq.Kp   = atof(argv[2]);
      if(argv[3][0]!=',') pi_iq.Ki   = atof(argv[3]);
      if(argv[4][0]!=',') pi_iq.Umax = atof(argv[4]);
      if(argv[5][0]!=',') pi_iq.Umin = atof(argv[5]);
   }
}
/*}}}*/
//--------------------------------------------------------------------------------
tCmdLineEntry speedPidCmdTable[] =/*{{{*/
{
   { "r" ,Cmd_readSpeedPid  ,": read speed PID"      },
   { "w" ,Cmd_writeSpeedPid ,": write speed PID"     },
   { "<" ,Cmd_back2login    ,": back to login table" },
   { "?" ,Cmd_Help          ,": help"                },
   { 0   ,0                 ,0                       }
};
void Cmd_readSpeedPid(uint16_t argc, char *argv[])
{
   printPid(&pid_spd);
}
void Cmd_writeSpeedPid(uint16_t argc, char *argv[])
{
   if(argc>3) {
      if(argv[1][0]!=',') pid_spd.param.Kp   = atof(argv[1]);
      if(argv[2][0]!=',') pid_spd.param.Ki   = atof(argv[2]);
      if(argv[3][0]!=',') pid_spd.param.Kd   = atof(argv[3]);
   }
}
/*}}}*/
//--------------------------------------------------------------------------------
tCmdLineEntry posPidCmdTable[] =/*{{{*/
{
   { "r" ,Cmd_readPosPid  ,": read pos PID "       },
   { "w" ,Cmd_writePosPid ,": write pos PID "      },
   { "<" ,Cmd_back2login  ,": back to login table" },
   { "?" ,Cmd_Help        ,": help"                },
   { 0   ,0               ,0                       }
};
void Cmd_readPosPid(uint16_t argc, char *argv[])
{
   printPi(&pi_pos);
}
void Cmd_writePosPid(uint16_t argc, char *argv[])
{
   if(argc>2) {
      if(argv[1][0]!=',') pi_pos.Kp   = atof(argv[1]);
      if(argv[2][0]!=',') pi_pos.Ki   = atof(argv[2]);
   }
}
/*}}}*/
//--------------------------------------------------------------------------------
tCmdLineEntry stepDirCmdTable[] =/*{{{*/
{
   { "a" ,Cmd_setDirUp   ,": set dir up"          },
   { "b" ,Cmd_setDirDown ,": set dir up"          },
   { "c" ,Cmd_pulse      ,": pulse"               },
   { "s" ,Cmd_step       ,": set step angle"      },
   { "<" ,Cmd_back2login ,": back to login table" },
   { "?" ,Cmd_Help       ,": help"                },
   { 0   ,0              ,0                       }
};
void Cmd_setDirUp(uint16_t argc, char *argv[])
{
   setPosDir(CLOCK);
   sciPrintf("dir to up\r\n");
}
void Cmd_setDirDown(uint16_t argc, char *argv[])
{
   setPosDir(ANTICLOCK);
   sciPrintf("dir to down\r\n");
}
void Cmd_pulse(uint16_t argc, char *argv[])
{
   incPos();
   sciPrintf("absPos=%f relPos=%f\r\n",getPosAbs(),getPosRel());
}
void Cmd_step(uint16_t argc, char *argv[])
{
   if(argc>1) {
      float step=atof(argv[1]);
      setPosStep(step);
   }
   sciPrintf("stepAngle=%f\r\n",getPosStep());
}
/*}}}*/
//--------------------------------------------------------------------------------
tCmdLineEntry logCmdTable[] =/*{{{*/
{
   { "l" ,Cmd_logOn      ,": set log on"          },
   { "x" ,Cmd_logOff     ,": set log off"         },
   { "<" ,Cmd_back2login ,": back to login table" },
   { "?" ,Cmd_Help       ,": help"                },
   { 0   ,0              ,0                       }
};
void Cmd_logOn(uint16_t argc, char *argv[])
{
   setLog(true);
}
void Cmd_logOff(uint16_t argc, char *argv[])
{
   setLog(false);
}
/*}}}*/
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
}

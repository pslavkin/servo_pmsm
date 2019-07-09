#include <stdint.h>
#include <stdbool.h>
#include <string.h>
#include <stdlib.h>
#include "scia.h"
#include "opt.h"
#include "sm.h"
#include "cmdline.h"
#include "wdog.h"

tCmdLineEntry Login_Cmd_Table[];
tCmdLineEntry adcCmdTable[];

char *         g_ppcArgv[CMDLINE_MAX_ARGS + 1];
tCmdLineEntry* actualCmdTable=Login_Cmd_Table;

//--------------------------------------------------------------------------------
tCmdLineEntry Login_Cmd_Table[] =
{
    { "login"  ,Cmd_Login   ,": login"        },
    { "uptime" ,Cmd_Uptime  ,": upteim"       },
    { "?"      ,Cmd_Help    ,": help"         },
    { 0        ,0           ,0                }
};

uint16_t Cmd_Login(uint16_t argc, char *argv[])
{
   sciPrintf("login\r\n");
   actualCmdTable=adcCmdTable;
   return 0;
}
//--------------------------------------------------------------------------------
tCmdLineEntry adcCmdTable[] =
{
    { "a"   ,Cmd_AdcChannelx       ,": print adc channel x" },
    { "<"   ,Cmd_AdcChannelx2Login ,": back to login table" },
    { "?"   ,Cmd_Help              ,": help"                },
    { 0     ,0                     ,0                       }
};

uint16_t Cmd_AdcChannelx(uint16_t argc, char *argv[])
{
   if(argc>1) {
      uint32_t channel=atoi(argv[1]);
      sciPrintf("adc channel%d = %f\r\n",channel,123.456f);
   }
   return 0;
}
uint16_t Cmd_AdcChannelx2Login(uint16_t argc, char *argv[])
{
   actualCmdTable=Login_Cmd_Table;
   return 0;
}
//--------------------------------------------------------------------------------
uint16_t Cmd_Help(uint16_t argc, char *argv[])
{
    tCmdLineEntry *pEntry;
    sciPrintf("\r\navailable commands\r\n------------------\r\n");
    pEntry = actualCmdTable;
    for(;pEntry->pcCmd;pEntry++)
        sciPrintf("%15s%s\r\n", pEntry->pcCmd, pEntry->pcHelp);
    return 0;
}
//----------------------------------------------------------------------------
void CmdLineProcess(char* line)/*{{{*/
{
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

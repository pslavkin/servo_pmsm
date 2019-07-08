#ifndef CMDLINE
#define CMDLINE

#include "opt.h"

typedef uint16_t (*pfnCmdLine)(uint16_t argc, char *argv[]);

typedef struct Cmd_Table_Struct{ // ! Structure for an entry in the command list table.
    const char   *pcCmd;     // ! A pointer to a string containing the name of the command.
    pfnCmdLine    pfnCmd;     // ! A function pointer to the implementation of the command.
    const char   *pcHelp;    // ! A pointer to a string of brief help text for the command.
} tCmdLineEntry;

void     CmdLineProcess     ( char* line                  );
void     Clear_Parser_Index ( void                        );
void     Parser_Process     ( void                        );

uint16_t Cmd_Login             ( uint16_t argc, char *argv[] );
uint16_t Cmd_AdcChannelx       ( uint16_t argc, char *argv[] );
uint16_t Cmd_AdcChannelx2Login ( uint16_t argc, char *argv[] );
uint16_t Cmd_Help              ( uint16_t argc, char *argv[] );
#endif

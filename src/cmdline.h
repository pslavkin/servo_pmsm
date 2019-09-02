#ifndef CMDLINE
#define CMDLINE

#include "opt.h"

typedef void (*pfnCmdLine)(uint16_t argc, char *argv[]);

typedef struct Cmd_Table_Struct{ // ! Structure for an entry in the command list table.
    const char   *pcCmd;     // ! A pointer to a string containing the name of the command.
    pfnCmdLine    pfnCmd;     // ! A function pointer to the implementation of the command.
    const char   *pcHelp;    // ! A pointer to a string of brief help text for the command.
} tCmdLineEntry;

void     CmdLineProcess ( char* line );
void     Parser_Process ( void       );

void Cmd_login         ( uint16_t argc, char *argv[] );
void Cmd_version       ( uint16_t argc, char *argv[] );
void Cmd_iqPid         ( uint16_t argc, char *argv[] );
void Cmd_speedPid      ( uint16_t argc, char *argv[] );
void Cmd_posPid        ( uint16_t argc, char *argv[] );
void Cmd_stepDir       ( uint16_t argc, char *argv[] );
void Cmd_log           ( uint16_t argc, char *argv[] );

void Cmd_readLemV        ( uint16_t argc, char *argv[] );
void Cmd_readLemW        ( uint16_t argc, char *argv[] );
void Cmd_readTemperature ( uint16_t argc, char *argv[] );

void printPosSpeed     ( void                          );
void Cmd_incDeltaAngle ( uint16_t argc, char *argv [ ] );
void Cmd_decDeltaAngle ( uint16_t argc, char *argv [ ] );


void Cmd_printRampCtl ( uint16_t argc, char *argv[] );

void Cmd_printIPark  ( uint16_t argc, char *argv[] );
void Cmd_printPark   ( uint16_t argc, char *argv[] );
void Cmd_printClarke ( uint16_t argc, char *argv[] );
void Cmd_printSvGen  ( uint16_t argc, char *argv[] );
void Cmd_writeQsRef  ( uint16_t argc, char *argv[] );
void Cmd_writeDsRef  ( uint16_t argc, char *argv[] );

void Cmd_readIqPid ( uint16_t argc, char *argv[] );
void Cmd_writeIqPid ( uint16_t argc, char *argv[] );

void Cmd_readSpeedPid  ( uint16_t argc, char *argv[] );
void Cmd_writeSpeedPid ( uint16_t argc, char *argv[] );
void Cmd_readPosPid    ( uint16_t argc, char *argv[] );
void Cmd_writePosPid   ( uint16_t argc, char *argv[] );

void Cmd_setDirUp   ( uint16_t argc, char *argv[] );
void Cmd_setDirDown ( uint16_t argc, char *argv[] );
void Cmd_pulse      ( uint16_t argc, char *argv[] );
void Cmd_step       ( uint16_t argc, char *argv[] );

void Cmd_logOn  ( uint16_t argc, char *argv[] );
void Cmd_logOff ( uint16_t argc, char *argv[] );

void Cmd_motorIsr(uint16_t argc, char *argv[]);

void Cmd_back2login   ( uint16_t argc, char *argv[] );
void Cmd_Help         ( uint16_t argc, char *argv[] );

#endif

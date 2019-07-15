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

void Cmd_login      ( uint16_t argc, char *argv[] );
void Cmd_version    ( uint16_t argc, char *argv[] );
void Cmd_login2adc  ( uint16_t argc, char *argv[] );
void Cmd_login2pwm  ( uint16_t argc, char *argv[] );
void Cmd_login2eqep ( uint16_t argc, char *argv[] );

void Cmd_readAdc         ( uint16_t argc, char *argv[] );
void Cmd_readTemperature ( uint16_t argc, char *argv[] );

void Cmd_setPwmPeriod ( uint16_t argc, char *argv[] );
void Cmd_incPwmPeriod ( uint16_t argc, char *argv[] );
void Cmd_decPwmPeriod ( uint16_t argc, char *argv[] );
void Cmd_readEqepPos  ( uint16_t argc, char *argv[] );

void Cmd_back2login   ( uint16_t argc, char *argv[] );
void Cmd_Help         ( uint16_t argc, char *argv[] );

#endif

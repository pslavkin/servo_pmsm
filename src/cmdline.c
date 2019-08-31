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
#include "pid.h"
#include "position.h"

tCmdLineEntry Login_Cmd_Table [ ];
tCmdLineEntry adcCmdTable     [ ];
tCmdLineEntry pwmCmdTable     [ ];
tCmdLineEntry eqepCmdTable    [ ];
tCmdLineEntry rampGenCmdTable [ ];
tCmdLineEntry speedPidCmdTable[ ];
tCmdLineEntry posPidCmdTable  [ ];
tCmdLineEntry stepDirCmdTable [ ];

char *         g_ppcArgv[CMDLINE_MAX_ARGS + 1];
tCmdLineEntry* actualCmdTable=Login_Cmd_Table;
//--------------------------------------------------------------------------------
tCmdLineEntry Login_Cmd_Table[] =
{
   { "login"     ,Cmd_login         ,": login"                },
   { "adc"       ,Cmd_login2adc     ,": adc setup"            },
   { "pwm"       ,Cmd_login2pwm     ,": pwm setup"            },
   { "ramp"      ,Cmd_login2rampGen ,": ramp Generator"       },
   { "eqep"      ,Cmd_login2eqep    ,": eqep setup"           },
   { "uptime"    ,Cmd_Uptime        ,": uptime"               },
   { "p"         ,Cmd_readEqepPos   ,": read posx"            }, // debug
   { "speed pid" ,Cmd_speedPid      ,": speed PID parameters" },
   { "pos pid"   ,Cmd_posPid        ,": speed PID parameters" },
   { "stepdir"   ,Cmd_stepDir       ,": step dire emulation"  },
   { "v"         ,Cmd_version       ,": version"              },
   { "?"         ,Cmd_Help          ,": help"                 },
   { 0           ,0                 ,0                        }
};

void Cmd_login         ( uint16_t argc, char *argv[] ) { sciPrintf("login\r\n")                          ;}
void Cmd_version       ( uint16_t argc, char *argv[] ) { sciPrintf("PMSM C2000 V1.0 - Pablo Slavkin\r\n");}
void Cmd_login2adc     ( uint16_t argc, char *argv[] ) { actualCmdTable=adcCmdTable                      ;}
void Cmd_login2pwm     ( uint16_t argc, char *argv[] ) { actualCmdTable=pwmCmdTable                      ;}
void Cmd_login2rampGen ( uint16_t argc, char *argv[] ) { actualCmdTable=rampGenCmdTable                  ;}
void Cmd_login2eqep    ( uint16_t argc, char *argv[] ) { actualCmdTable=eqepCmdTable                     ;}
void Cmd_speedPid      ( uint16_t argc, char *argv[] ) { actualCmdTable=speedPidCmdTable                 ;}
void Cmd_posPid        ( uint16_t argc, char *argv[] ) { actualCmdTable=posPidCmdTable                   ;}
void Cmd_stepDir       ( uint16_t argc, char *argv[] ) { actualCmdTable=stepDirCmdTable                  ;}
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
//   if(argc>2) {
//      uint32_t base    = atoi(argv[1]);
//      uint32_t channel = atoi(argv[2]);
//      uint32_t r=readAdc(base,(ADC_Channel)channel);
//      sciPrintf("adc base %d channel %d = %i\r\n",base,channel,r);
//   }
}
void Cmd_readLemV(uint16_t argc, char *argv[])
{
//   float V=readLemV();
//   sciPrintf("LemV %f\r\n",V);
}

void Cmd_readLemW(uint16_t argc, char *argv[])
{
//   sciPrintf("LemW %f\r\n",readLemW());
}
void printTemp(void)
{
//   uint16_t t=adc2Temperature(readAdc(0,13));
//   sciPrintf("adc temperature = %i\r\n",t);
}

void Cmd_readTemperature(uint16_t argc, char *argv[])
{
//   if(!Free_Func_Schedule(printTemp)) {
//      if(argc>1)
//         New_Periodic_Func_Schedule(atoi(argv[1]),printTemp);
//      else
//         printTemp();
//   }
}/*}}}*/
//--------------------------------------------------------------------------------
tCmdLineEntry rampGenCmdTable[] =/*{{{*/
{
    { "r" ,Cmd_printRampCtl    ,": print rampCtl structure"    },
    { "g" ,Cmd_printRampGen    ,": print rampGen structure"    },
    { "c" ,Cmd_printClarke     ,": print clarke structure"     },
    { "p" ,Cmd_printPark       ,": print park structure"       },
    { "i" ,Cmd_printIPark      ,": print ipark structure"      },
    { "s" ,Cmd_printSvGen      ,": print svGen structure"      },
    { "m" ,Cmd_motorIsr        ,": execute motor ise one time" },
    { "d" ,Cmd_writeDsRef      ,": set Ds ref"                 },
    { "q" ,Cmd_writeQsRef      ,": set Qs ref"                 },
    { "<" ,Cmd_back2login      ,": back to login table"        },
    { "?" ,Cmd_Help            ,": help"                       },
    { 0   ,0                   ,0                              }
};
void Cmd_motorIsr(uint16_t argc, char *argv[])
{
//   if(!Free_Func_Schedule(motorISR)) {
//      if(argc>1)
//         New_Periodic_Func_Schedule(atoi(argv[1]),motorISR);
//      else
//         motorISR();
//   }
}
void Cmd_writeQsRef(uint16_t argc, char *argv[])
{
//   if(argc>1) {
//      float ref=atof(argv[1]);
//      writeQsRef(ref);
//      sciPrintf("Qs =%f\r\n",readQsRef());
//   }
}
void Cmd_writeDsRef(uint16_t argc, char *argv[])
{
//   if(argc>1) {
//      float ref=atof(argv[1]);
//      writeDsRef(ref);
//      sciPrintf("Ds =%f\r\n",readDsRef());
//   }
}
void Cmd_printPark(uint16_t argc, char *argv[])
{
//   printPark();
}
void Cmd_printIPark(uint16_t argc, char *argv[])
{
 //  printIPark();
}
void Cmd_printClarke(uint16_t argc, char *argv[])
{
//   printClarke();
}
void Cmd_printSvGen(uint16_t argc, char *argv[])
{
//   printSvGen();
}
void Cmd_printRampCtl(uint16_t argc, char *argv[])
{
//   printRampCtl();
}
void Cmd_printRampGen(uint16_t argc, char *argv[])
{
//   printRampGen();
}/*}}}*/
//--------------------------------------------------------------------------------
tCmdLineEntry pwmCmdTable[] =/*{{{*/
{
    { "pwm" ,Cmd_setPwmPeriod ,": set pwm period for eqep simulation" },
    { "+"   ,Cmd_incPwmPeriod ,": inc pwm period for eqep simulation" },
    { "-"   ,Cmd_decPwmPeriod ,": dec pwm period for eqep simulation" },
    { "p"   ,Cmd_readEqepPos  ,": read posx"                          },
    { "<"   ,Cmd_back2login   ,": back to login table"                },
    { "?"   ,Cmd_Help         ,": help"                               },
    { 0     ,0                ,0                                      }
};

void Cmd_setPwmPeriod(uint16_t argc, char *argv[])
{
//   if(argc>1) {
//      uint32_t newPeriod=atoi(argv[1]);
//      setPwmPeriod(newPeriod);
//      sciPrintf("pwm period=%10d\r\n",getPwmPeriod());
//   }
}
void Cmd_incPwmPeriod(uint16_t argc, char *argv[])
{
//   setPwmPeriod(getPwmPeriod()+109);
//   sciPrintf("pwm period=%10d\r\n",getPwmPeriod());
}
void Cmd_decPwmPeriod(uint16_t argc, char *argv[])
{
//   setPwmPeriod(getPwmPeriod()-100);
//   sciPrintf("pwm period=%10d\r\n",getPwmPeriod());
}/*}}}*/
//--------------------------------------------------------------------------------
tCmdLineEntry eqepCmdTable[] =/*{{{*/
{
   { "p" ,Cmd_readEqepPos   ,": read posx"                       },
   { "+" ,Cmd_incDeltaAngle ,": inc angle btw elec and mech pos" },
   { "-" ,Cmd_decDeltaAngle ,": dec angle btw elec and mech pos" },
   { "<" ,Cmd_back2login    ,": back to login table"             },
   { "?" ,Cmd_Help          ,": help"                            },
   { 0   ,0                 ,0                                   }
};

void printPosSpeed(void)
{
//   posCalc      ( );
//   speedLowCalc ( );
//   sciPrintf (
//         "posActual       =%10d\r\n"
//         "dirActual       =%10d\r\n"
//         "pos             =%10d\r\n"
//         "dir             =%10d\r\n"
//         "possDiff        =%10d\r\n"
//         "angle           =%f\r\n"
//         "deltaAngle      =%f\r\n"
//         "speedFastLinear =%f\r\n"
//         "speedFastRps    =%f\r\n"
//         "speedFastRpm    =%f\r\n"
//         "speedLowPeriod  =%10d\r\n"
//         "speedLowRps     =%f\r\n"
//         "speedLowRpm     =%f\r\n",
//         posSpeed.posActual,
//         posSpeed.dirActual,
//         posSpeed.pos,
//         posSpeed.dir,
//         posSpeed.posDiff,
//         posSpeed.angle,
//         posSpeed.deltaAngle,
//         posSpeed.speedFastLinear,
//         posSpeed.speedFastRps,
//         posSpeed.speedFastRpm,
//         posSpeed.speedLowPeriod,
//         posSpeed.speedLowRps,
//         posSpeed.speedLowRpm
//         );
}
void Cmd_readEqepPos(uint16_t argc, char *argv[])
{
   if(!Free_Func_Schedule(printPosSpeed)) {
      if(argc>1)
         New_Periodic_Func_Schedule(atoi(argv[1]),printPosSpeed);
      else
         printPosSpeed();
   }
}
void Cmd_incDeltaAngle(uint16_t argc, char *argv[])
{
//   incDeltaAngle();
//   printPosSpeed();
}
void Cmd_decDeltaAngle(uint16_t argc, char *argv[])
{
//   decDeltaAngle();
//   printPosSpeed();
}
/*}}}*/
//--------------------------------------------------------------------------------
void printPidParams(PID_Handle pid)/*{{{*/
{
   sciPrintf (
    "Kp               =%f\r\n"    //the proportional gain for the PID //!< controller
    "Ki               =%f\r\n"    //the integral gain for the PID //!< controller
    "Kd               =%f\r\n"    //the derivative gain for the PID //!< controller
    "Ui               =%f\r\n"    //the integrator start value for the //!< PID controller
    "refValue         =%f\r\n"    //the reference input value
    "fbackValue       =%f\r\n"    //the feedback input value
    "ffwdValue        =%f\r\n"    //the feedforward input value
    "outMin           =%f\r\n"    //the minimum output value allowed for //!< the PID controller
    "outMax           =%f\r\n",    //the maximum output value allowed for //!< the PID controller
    //FILTER_FO_Handle    "derFilterHandle  =%f\r\n"    //the derivative filter handle
    //FILTER_FO_Obj       "derFilter        =%f\r\n"    //the derivative filter object
    pid->Kp,
    pid->Ki,
    pid->Kd,
    pid->Ui,
    pid->refValue,
    pid->fbackValue,
    pid->ffwdValue,
    pid->outMin,
    pid->outMax
    //derFilterHandle,
    //derFilter,
    );
}/*}}}*/
//--------------------------------------------------------------------------------
tCmdLineEntry speedPidCmdTable[] =/*{{{*/
{
   { "r" ,Cmd_readSpeedPidParams ,": read speed PID params" },
   { "<" ,Cmd_back2login        ,": back to login table"   },
   { "?" ,Cmd_Help              ,": help"                  },
   { 0   ,0                     ,0                         }
};
void Cmd_readSpeedPidParams(uint16_t argc, char *argv[])
{
   printPidParams(NULL);
}
/*}}}*/
//--------------------------------------------------------------------------------
tCmdLineEntry posPidCmdTable[] =/*{{{*/
{
   { "r" ,Cmd_readposPidParams ,": read pos PID params" },
   { "<" ,Cmd_back2login        ,": back to login table"   },
   { "?" ,Cmd_Help              ,": help"                  },
   { 0   ,0                     ,0                         }
};
void Cmd_readposPidParams(uint16_t argc, char *argv[])
{
   printPidParams(NULL);
}
/*}}}*/
//--------------------------------------------------------------------------------
tCmdLineEntry stepDirCmdTable[] =/*{{{*/
{
   { "a" ,Cmd_setDirUp   ,": set dir up"          },
   { "b" ,Cmd_setDirDown ,": set dir up"          },
   { "c" ,Cmd_pulse      ,": pulse"               },
   { "<" ,Cmd_back2login ,": back to login table" },
   { "?" ,Cmd_Help       ,": help"                },
   { 0   ,0              ,0                       }
};
void Cmd_setDirUp(uint16_t argc, char *argv[])
{
   posDir=0;
   sciPrintf("dir to up\r\n");
}
void Cmd_setDirDown(uint16_t argc, char *argv[])
{
   posDir=1;
   sciPrintf("dir to down\r\n");
}
void Cmd_pulse(uint16_t argc, char *argv[])
{
   stepPos();
   sciPrintf("absPos=%f relPos=%f\r\n",absPos,relPos);
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

#include <stdint.h>/*{{{*/
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
#include "wave.h"
#include "overcurrent.h"
#include "linevoltage.h"
#include "log.h"
#include "wave.h"
#include "gcode.h"
#include "leds.h"
#include "events.h"/*}}}*/

tCmdLineEntry Login_Cmd_Table    [ ];
tCmdLineEntry iqPidCmdTable      [ ];
tCmdLineEntry speedPidCmdTable   [ ];
tCmdLineEntry posPidCmdTable     [ ];
tCmdLineEntry overcurrentCmdTable[ ];
tCmdLineEntry waveCmdTable       [ ];
tCmdLineEntry gcodeCmdTable      [ ];
tCmdLineEntry stepdirCmdTable      [ ];
tCmdLineEntry fclCmdTable        [ ];
tCmdLineEntry logCmdTable        [ ];

char *         g_ppcArgv[CMDLINE_MAX_ARGS + 1];
tCmdLineEntry* actualCmdTable=Login_Cmd_Table;
//--------------------------------------------------------------------------------
tCmdLineEntry Login_Cmd_Table[] =
{
   { "login" ,Cmd_login       ,": login"                },
   { "iq"    ,Cmd_iqPid       ,": iq PID parameters"    },
   { "speed" ,Cmd_speedPid    ,": speed PID parameters" },
   { "pos"   ,Cmd_posPid      ,": speed PID parameters" },
   { "oc"    ,Cmd_overcurrent ,": set overcurrent"      },
   { "fcl"   ,Cmd_fcl         ,": fcl management"       },
   { "log"   ,Cmd_log         ,": log on/off"           },
   { "wave"  ,Cmd_wave        ,": wave generator"       },
   { "gcode" ,Cmd_gcode       ,": gcode parser"         },
   { "sd"    ,Cmd_stepdir     ,": stepdir config"       },
   { "v"     ,Cmd_version     ,": version"              },
   { "?"     ,Cmd_Help        ,": help"                 },
   { 0       ,0               ,0                        }
};
void Cmd_login       ( uint16_t argc, char *argv[] ) { sciPrintf("login\r\n")                          ;}
void Cmd_version     ( uint16_t argc, char *argv[] ) { sciPrintf("PMSM C2000 V1.0 - Pablo Slavkin\r\n");}
void Cmd_iqPid       ( uint16_t argc, char *argv[] ) { actualCmdTable=iqPidCmdTable                    ;}
void Cmd_speedPid    ( uint16_t argc, char *argv[] ) { actualCmdTable=speedPidCmdTable                 ;}
void Cmd_posPid      ( uint16_t argc, char *argv[] ) { actualCmdTable=posPidCmdTable                   ;}
void Cmd_overcurrent ( uint16_t argc, char *argv[] ) { actualCmdTable=overcurrentCmdTable              ;}
void Cmd_fcl         ( uint16_t argc, char *argv[] ) { actualCmdTable=fclCmdTable                      ;}
void Cmd_wave        ( uint16_t argc, char *argv[] ) { actualCmdTable=waveCmdTable                     ;}
void Cmd_gcode       ( uint16_t argc, char *argv[] ) { actualCmdTable=gcodeCmdTable                     ;}
void Cmd_stepdir       ( uint16_t argc, char *argv[] ) { actualCmdTable=stepdirCmdTable                     ;}
void Cmd_log         ( uint16_t argc, char *argv[] ) { actualCmdTable=logCmdTable                      ;}
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
   if(argc>1 && (argv[1][0] != ',')) pid_spd.param.Kp   = atof(argv[1]);
   if(argc>2 && (argv[2][0] != ',')) pid_spd.param.Ki   = atof(argv[1]);
   if(argc>3 && (argv[3][0] != ',')) pid_spd.param.Kd   = atof(argv[1]);
   if(argc>4 && (argv[4][0] != ',')) pid_spd.param.Kr   = atof(argv[1]);
   if(argc>5 && (argv[5][0] != ',')) pid_spd.param.Km   = atof(argv[1]);
   if(argc>6 && (argv[6][0] != ',')) pid_spd.param.Umax = atof(argv[1]);
   if(argc>7 && (argv[7][0] != ',')) pid_spd.param.Umin = atof(argv[1]);
}
/*}}}*/
//--------------------------------------------------------------------------------
tCmdLineEntry posPidCmdTable[] =/*{{{*/
{
   { "r"    ,Cmd_readPosPid         ,": read pos PID "          },
   { "w"    ,Cmd_writePosPid        ,": write pos PID "         },
   { "<"    ,Cmd_back2login         ,": back to login table"    },
   { "?"    ,Cmd_Help               ,": help"                   },
   { 0      ,0                      ,0                          }
};
void Cmd_readPosPid(uint16_t argc, char *argv[])
{
   printPi(&pi_pos);
}
void Cmd_writePosPid(uint16_t argc, char *argv[])
{
   if(argc>1 && (argv[1][0] != ',')) pi_pos.Kp   = atof(argv[1]);
   if(argc>2 && (argv[2][0] != ',')) pi_pos.Ki   = atof(argv[2]);
   if(argc>3 && (argv[3][0] != ',')) pi_pos.Umax = atof(argv[3]);
   if(argc>4 && (argv[4][0] != ',')) pi_pos.Umin = atof(argv[4]);
}
/*}}}*/
//--------------------------------------------------------------------------------
tCmdLineEntry overcurrentCmdTable[] =/*{{{*/
{
   { "o" ,Cmd_setOvercurrent   ,": set overcurrent"     },
   { "b" ,Cmd_resetOvercurrent ,": reset overcurrent"   },
   { "v" ,Cmd_getVdc           ,": read actual VDC"     },
   { "<" ,Cmd_back2login       ,": back to login table" },
   { "?" ,Cmd_Help             ,": help"                },
   { 0   ,0                    ,0                       }
};
void Cmd_setOvercurrent(uint16_t argc, char *argv[])
{
   if(argc>1)
      setOvercurrent(atof(argv[1]));
   sciPrintf("overcurrent=%f\r\n",getOvercurrent());
}
void Cmd_resetOvercurrent(uint16_t argc, char *argv[])
{
   sciPrintf("reseting overcurrent\r\n");
}
void Cmd_getVdc(uint16_t argc, char *argv[])
{
   sciPrintf("actual vdc=%f\r\n",readFclVdc());
}
/*}}}*/
//--------------------------------------------------------------------------------
tCmdLineEntry fclCmdTable[] =/*{{{*/
{
   { "run"  ,Cmd_runFcl     ,": run motor"           },
   { "stop" ,Cmd_stopFcl    ,": stop motor"          },
   { "<"    ,Cmd_back2login ,": back to login table" },
   { "?"    ,Cmd_Help       ,": help"                },
   { 0      ,0              ,0                       }
};
void Cmd_runFcl(uint16_t argc, char *argv[])
{
   sendRunEvent();
}
void Cmd_stopFcl(uint16_t argc, char *argv[])
{
   sendStopEvent();
}
/*}}}*/
//--------------------------------------------------------------------------------
tCmdLineEntry waveCmdTable[] =/*{{{*/
{
   { "frec"  ,Cmd_setWaveFrec      ,": set frec pos generator" } ,
   { "amp"   ,Cmd_setWaveAmp       ,": amplitude"              } ,
   { "sin"   ,Cmd_setWaveShapeSin  ,": set sin generator"      } ,
   { "step"  ,Cmd_setWaveShapeStep ,": set step generator"     } ,
   { "gcode" ,Cmd_setWaveShapeGcode,": set code proccesor"     } ,
   { "ena"   ,Cmd_enableWave       ,": enable wave"            } ,
   { "dis"   ,Cmd_disableWave      ,": disable wave"           } ,
   { "clk"   ,Cmd_setWaveDirClk    ,": set dir clk wise"       } ,
   { "aclk"  ,Cmd_setWaveDirAclk   ,": set dir anti clk wise"  } ,
   { "angle" ,Cmd_setWaveStepAngle ,": set step angle"         } ,
   { "pulse" ,Cmd_advanceWaveStep  ,": advance one step"       } ,
   { "<"     ,Cmd_back2login       ,": back to login table"    } ,
   { "?"     ,Cmd_Help             ,": help"                   } ,
   { 0       ,0                    ,0                          }
};
void Cmd_setWaveFrec(uint16_t argc, char *argv[])
{
   if(argc>1)
      setWaveFrec(atof(argv[1]));
   sciPrintf("wave frec=%f\r\n",getWaveFrec());
}
void Cmd_setWaveAmp(uint16_t argc, char *argv[])
{
   if(argc>1)
      setWaveAmp(atof(argv[1]));
   sciPrintf("wave amplitude=%f\r\n",getWaveAmp());
}
void Cmd_setWaveShapeSin       ( uint16_t argc, char *argv[] ) 
{
   setWaveShape(SIN);
   sciPrintf("wave sin\r\n");
}
void Cmd_setWaveShapeStep( uint16_t argc, char *argv[] ) 
{
   setWaveShape(STEP);
   sciPrintf("wave step\r\n");
}
void Cmd_setWaveShapeGcode( uint16_t argc, char *argv[] )
{
   setWaveShape    ( GCODES           );
   sciPrintf       ( "wave gcode\r\n" );
}
void Cmd_enableWave     ( uint16_t argc, char *argv[] ) { enableWave()    ;}
void Cmd_disableWave    ( uint16_t argc, char *argv[] ) { disableWave()   ;}
void Cmd_advanceWaveStep(uint16_t argc, char *argv[])
{
   advanceWaveStep();
   sciPrintf("absPos=%f\r\n",getPosAbs());
}
void Cmd_setWaveDirClk(uint16_t argc, char *argv[])
{
   setWaveDir(CLOCK);
   sciPrintf("clk wise\r\n");
}
void Cmd_setWaveDirAclk(uint16_t argc, char *argv[])
{
   setWaveDir(ANTICLOCK);
   sciPrintf("anti clk wise\r\n");
}
void Cmd_setWaveStepAngle(uint16_t argc, char *argv[])
{
   if(argc>1)
      setWaveStepAngle(atof(argv[1]));
   sciPrintf("stepAngle=%f\r\n",getWaveStepAngle());
}
/*}}}*/
//--------------------------------------------------------------------------------
tCmdLineEntry gcodeCmdTable[] =/*{{{*/
{
   { "g0"  ,Cmd_setGcodeG0  ,": G0"                  },
   { "F"   ,Cmd_setGcodeF   ,": F"                   },
   { "acc" ,Cmd_setGcodeAcc ,": set accel"           },
   { "dec" ,Cmd_setGcodeDec ,": set deccel"          },
   { "log" ,Cmd_sendOneLog  ,": send one line log"   },
   { "rst" ,Cmd_posRst      ,": reset abs pos to 0"  },
   { "<"   ,Cmd_back2login  ,": back to login table" },
   { "?"   ,Cmd_Help        ,": help"                },
   { 0     ,0               ,0                       }
};
void Cmd_setGcodeG0(uint16_t argc, char *argv[])
{
   if(argc>1)
      setGcodeG0(atof(argv[1]));
   sciPrintf("x0=%f x1=%f\r\n",getGcodeX0(),getGcodeX1());
}
void Cmd_setGcodeF(uint16_t argc, char *argv[])
{
   if(argc>1)
      setGcodeF(atof(argv[1]));
   sciPrintf("F=%f\r\n",getGcodeF());
}
void Cmd_setGcodeAcc(uint16_t argc, char *argv[])
{
   if(argc>1)
      setGcodeAcc(atof(argv[1]));
   sciPrintf("acc=%f\r\n",getGcodeAcc());
}
void Cmd_setGcodeDec(uint16_t argc, char *argv[])
{
   if(argc>1)
      setGcodeDec(atof(argv[1]));
   sciPrintf("dec=%f\r\n",getGcodeDec());
}
void Cmd_sendOneLog(uint16_t argc, char *argv[])
{
   printLog();
}
void Cmd_posRst(uint16_t argc, char *argv[])
{
   rstPosAbs ( );
   rstGcode  ( );
   sciPrintf("abs pos reset\r\n");
}
/*}}}*/
//--------------------------------------------------------------------------------
tCmdLineEntry stepdirCmdTable[] =/*{{{*/
{
   { "r" ,Cmd_getStepDir ,": read step and dir state" },
   { "<" ,Cmd_back2login ,": back to login table"     },
   { "?" ,Cmd_Help       ,": help"                    },
   { 0   ,0              ,0                           }
};
void Cmd_getStepDir(uint16_t argc, char *argv[])
{
   sciPrintf("step=%i dir=%i\r\n",getGpio39(),getGpio45());
}
/*}}}*/
//--------------------------------------------------------------------------------
tCmdLineEntry logCmdTable[] =/*{{{*/
{
   { "ena"  ,Cmd_logOn           ,": set log on"          },
   { "dis"  ,Cmd_logOff          ,": set log off"         },
   { "pres" ,Cmd_setLogPrescaler ,": set log prescaler"   },
   { "<"    ,Cmd_back2login      ,": back to login table" },
   { "?"    ,Cmd_Help            ,": help"                },
   { 0      ,0                   ,0                       }
};
void Cmd_logOn(uint16_t argc, char *argv[])
{
   setLogEnable();
}
void Cmd_logOff(uint16_t argc, char *argv[])
{
   setLogDisable();
}
void Cmd_setLogPrescaler(uint16_t argc, char *argv[])
{
   if(argc>1)
      setLogPrescaler(atoi(argv[1]));
   sciPrintf("log prescaler=%i\r\n",getLogPrescaler());
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

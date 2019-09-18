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
#include "gcode.h"
#include "swept.h"
#include "leds.h"
#include "stepdir.h"
#include "events.h"/*}}}*/

tCmdLineEntry loginCmdTable      [ ];
tCmdLineEntry torquePidCmdTable  [ ];
tCmdLineEntry speedPidCmdTable   [ ];
tCmdLineEntry posPidCmdTable     [ ];
tCmdLineEntry overcurrentCmdTable[ ];
tCmdLineEntry waveCmdTable       [ ];
tCmdLineEntry sweptCmdTable      [ ];
tCmdLineEntry gcodeCmdTable      [ ];
tCmdLineEntry stepdirCmdTable    [ ];
tCmdLineEntry fclCmdTable        [ ];
tCmdLineEntry logCmdTable        [ ];

char *         g_ppcArgv[CMDLINE_MAX_ARGS + 1];
tCmdLineEntry* actualCmdTable=loginCmdTable;
//--------------------------------------------------------------------------------
tCmdLineEntry loginCmdTable[] =/*{{{*/
{
   { "pos"    ,Cmd_posPid       ,": pos PID parameters"    },
   { "speed"  ,Cmd_speedPid     ,": speed PID parameters"  },
   { "torque" ,Cmd_torquePid    ,": torque PID parameters" },
   { "oc"     ,Cmd_overcurrent  ,": set overcurrent"       },
   { "fcl"    ,Cmd_fcl          ,": fcl management"        },
   { "log"    ,Cmd_log          ,": log on/off"            },
   { "wave"   ,Cmd_wave         ,": wave generator"        },
   { "swept"  ,Cmd_swept        ,": swept generator"       },
   { "gcode"  ,Cmd_gcode        ,": gcode parser"          },
   { "sd"     ,Cmd_stepdir      ,": stepdir config"        },
   { "v"      ,Cmd_printVersion ,": actual version"        },
   { "E"      ,Cmd_stopFcl      ,": emergency stop"        },
   { "rst"    ,Cmd_rst          ,": reset system"          },
   { "?"      ,Cmd_Help         ,": help"                  },
   { 0        ,0                ,0                         }
};
void Cmd_torquePid   ( uint16_t argc, char *argv[] ) { actualCmdTable=torquePidCmdTable  ;}
void Cmd_speedPid    ( uint16_t argc, char *argv[] ) { actualCmdTable=speedPidCmdTable   ;}
void Cmd_posPid      ( uint16_t argc, char *argv[] ) { actualCmdTable=posPidCmdTable     ;}
void Cmd_overcurrent ( uint16_t argc, char *argv[] ) { actualCmdTable=overcurrentCmdTable;}
void Cmd_fcl         ( uint16_t argc, char *argv[] ) { actualCmdTable=fclCmdTable        ;}
void Cmd_wave        ( uint16_t argc, char *argv[] ) { actualCmdTable=waveCmdTable       ;}
void Cmd_swept       ( uint16_t argc, char *argv[] ) { actualCmdTable=sweptCmdTable      ;}
void Cmd_gcode       ( uint16_t argc, char *argv[] ) { actualCmdTable=gcodeCmdTable      ;}
void Cmd_stepdir     ( uint16_t argc, char *argv[] ) { actualCmdTable=stepdirCmdTable    ;}
void Cmd_log         ( uint16_t argc, char *argv[] ) { actualCmdTable=logCmdTable        ;}
//--------------------------------------------------------------------------------
void Cmd_printVersion     ( uint16_t argc, char *argv[] )
{
   sciPrintf("\r\n################\r\nPMSM C2000 V1.0 \r\n Pablo Slavkin\r\nMoldova 09/2019\r\n################\r\n");
}
void Cmd_rst     ( uint16_t argc, char *argv[] )
{
   wdogReset();
   sciPrintf("reset\r\n");
}/*}}}*/
//--------------------------------------------------------------------------------
tCmdLineEntry torquePidCmdTable[] =/*{{{*/
{
   { "r" ,Cmd_readTorquePid  ,": read torque PID"     },
   { "w" ,Cmd_writeTorquePid ,": read torque PID"     },
   { "E" ,Cmd_stopFcl        ,": emergency stop"      },
   { "<" ,Cmd_back2login     ,": back to login table" },
   { "?" ,Cmd_Help           ,": help"                },
   { 0   ,0                  ,0                       }
};
void Cmd_readTorquePid(uint16_t argc, char *argv[])
{
   printFclPi(&pi_iq);
}
void Cmd_writeTorquePid(uint16_t argc, char *argv[])
{
   if(argc>1 && (argv[1][0] != ',')) pi_iq.Kp       = atof(argv[1]);   // Parameter: proportional loop gain
   if(argc>2 && (argv[2][0] != ',')) pi_iq.Ki       = atof(argv[2]);   // Parameter: integral gain
   if(argc>3 && (argv[3][0] != ',')) pi_iq.Kerr     = atof(argv[3]);   // Parameter: gain for latest error
   if(argc>4 && (argv[4][0] != ',')) pi_iq.KerrOld  = atof(argv[4]);   // Parameter: gain for prev error
   if(argc>5 && (argv[5][0] != ',')) pi_iq.Umax     = atof(argv[5]);   // Parameter: upper saturation limit
   if(argc>6 && (argv[6][0] != ',')) pi_iq.Umin     = atof(argv[6]);   // Parameter: lower saturation limit
}
/*}}}*/
//--------------------------------------------------------------------------------
tCmdLineEntry posPidCmdTable[] =/*{{{*/
{
   { "r" ,Cmd_readPosPid  ,": read pos PID "          } ,
   { "w" ,Cmd_writePosPid ,": write pos PID "         } ,
   { "E" ,Cmd_stopFcl     ,": emergency stop"         } ,
   { "<" ,Cmd_back2login  ,": back to login table"    } ,
   { "?" ,Cmd_Help        ,": help"                   } ,
   { 0   ,0               ,0                          }
};
void Cmd_readPosPid(uint16_t argc, char *argv[])
{
   printPid(&pid_pos);
}
void Cmd_writePosPid(uint16_t argc, char *argv[])
{
   if(argc>1 && (argv[1][0] != ',')) pid_pos.param.Kp   = atof(argv[1]);
   if(argc>2 && (argv[2][0] != ',')) pid_pos.param.Ki   = atof(argv[2]);
   if(argc>3 && (argv[3][0] != ',')) pid_pos.param.Kd   = atof(argv[3]);
   if(argc>4 && (argv[4][0] != ',')) pid_pos.param.Kr   = atof(argv[4]);
   if(argc>5 && (argv[5][0] != ',')) pid_pos.param.Km   = atof(argv[5]);
   if(argc>6 && (argv[6][0] != ',')) pid_pos.param.Umax = atof(argv[6]);
   if(argc>7 && (argv[7][0] != ',')) pid_pos.param.Umin = atof(argv[7]);
}
/*}}}*/
//--------------------------------------------------------------------------------
tCmdLineEntry speedPidCmdTable[] =/*{{{*/
{
   { "r" ,Cmd_readSpeedPid  ,": read speed PID"      },
   { "w" ,Cmd_writeSpeedPid ,": write speed PID"     },
   { "E" ,Cmd_stopFcl       ,": emergency stop"      },
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
   if(argc>2 && (argv[2][0] != ',')) pid_spd.param.Ki   = atof(argv[2]);
   if(argc>3 && (argv[3][0] != ',')) pid_spd.param.Kd   = atof(argv[3]);
   if(argc>4 && (argv[4][0] != ',')) pid_spd.param.Kr   = atof(argv[4]);
   if(argc>5 && (argv[5][0] != ',')) pid_spd.param.Km   = atof(argv[5]);
   if(argc>6 && (argv[6][0] != ',')) pid_spd.param.Umax = atof(argv[6]);
   if(argc>7 && (argv[7][0] != ',')) pid_spd.param.Umin = atof(argv[7]);
}
/*}}}*/
//--------------------------------------------------------------------------------
tCmdLineEntry overcurrentCmdTable[] =/*{{{*/
{
   { "o" ,Cmd_setOvercurrent   ,": set overcurrent"     },
   { "b" ,Cmd_resetOvercurrent ,": reset overcurrent"   },
   { "v" ,Cmd_getVdc           ,": read actual VDC"     },
   { "E" ,Cmd_stopFcl          ,": emergency stop"      },
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
   { "run"     ,Cmd_runFcl              ,": run motor"                    },
   { "stop"    ,Cmd_stopFcl             ,": stop motor"                   },
   { "rst"     ,Cmd_restartFcl          ,": restart fcl from overcurrent" },
   { "pos"     ,Cmd_setControlPos       ,": position control loop"        },
   { "speed"   ,Cmd_setControlSpeed     ,": speed control loop"           },
   { "torque"  ,Cmd_setControlTorque    ,": torque control loop"          },
   { "cs"      ,Cmd_setControlledSpeed  ,": set controlled speed value"   },
   { "ct"      ,Cmd_setControlledTorque ,": set controlled torque value"  },
   { "E"       ,Cmd_stopFcl             ,": emergency stop"               },
   { "<"       ,Cmd_back2login          ,": back to login table"          },
   { "?"       ,Cmd_Help                ,": help"                         },
   { 0         ,0                       ,0                                }
};
void Cmd_runFcl(uint16_t argc, char *argv[])
{
   sendRunEvent();
}
void Cmd_stopFcl(uint16_t argc, char *argv[])
{
   sendStopEvent();
}
void Cmd_restartFcl(uint16_t argc, char *argv[])
{
   sendRestartEvent();
}
void Cmd_setControlSpeed(uint16_t argc, char *argv[])
{
   setControlSpeed();
   sciPrintf("speed control loop\r\n");
}
void Cmd_setControlTorque(uint16_t argc, char *argv[])
{
   setControlTorque();
   sciPrintf("torque control loop\r\n");
}
void Cmd_setControlPos(uint16_t argc, char *argv[])
{
   setControlPos();
   sciPrintf("position control loop\r\n");
}
void Cmd_setControlledSpeed(uint16_t argc, char *argv[])
{
   if(argc>1)
      setControlledSpeed(atof(argv[1]));
   sciPrintf("controlled speed=%f\r\n",getControlledSpeed());
}
void Cmd_setControlledTorque(uint16_t argc, char *argv[])
{
   if(argc>1)
      setControlledTorque(atof(argv[1]));
   sciPrintf("controlled torque=%f\r\n",getControlledTorque());
}
/*}}}*/
//--------------------------------------------------------------------------------
tCmdLineEntry waveCmdTable[] =/*{{{*/
{
   { "frec"    ,Cmd_setWaveFrec         ,": set frec pos generator" },
   { "amp"     ,Cmd_setWaveAmp          ,": amplitude"              },
   { "sin"     ,Cmd_setWaveShapeSin     ,": set sin generator"      },
   { "step"    ,Cmd_setWaveShapeStep    ,": set step generator"     },
   { "gcode"   ,Cmd_setWaveShapeGcode   ,": set code proccesor"     },
   { "stepdir" ,Cmd_setWaveShapeStepdir ,": set step dir proccesor" },
   { "ena"     ,Cmd_enableWave          ,": enable wave"            },
   { "dis"     ,Cmd_disableWave         ,": disable wave"           },
   { "clk"     ,Cmd_setWaveDirClk       ,": set dir clk wise"       },
   { "aclk"    ,Cmd_setWaveDirAclk      ,": set dir anti clk wise"  },
   { "angle"   ,Cmd_setWaveStepAngle    ,": set step angle"         },
   { "pulse"   ,Cmd_advanceWaveStep     ,": advance one step"       },
   { "E"       ,Cmd_stopFcl             ,": emergency stop"         },
   { "<"       ,Cmd_back2login          ,": back to login table"    },
   { "?"       ,Cmd_Help                ,": help"                   },
   { 0         ,0                       ,0                          }
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
   setGcodeX02PosAbs (                  );
   setWaveShape      ( GCODES           );
   sciPrintf         ( "wave gcode\r\n" );
}
void Cmd_setWaveShapeStepdir( uint16_t argc, char *argv[] )
{
   setWaveShape ( STEP_DIR           );
   sciPrintf    ( "wave stepdir\r\n" );
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
tCmdLineEntry sweptCmdTable[] =/*{{{*/
{
   { "init" ,Cmd_setSweptInit    ,": set init frec"       },
   { "last" ,Cmd_setSweptLast    ,": set last frec"       },
   { "step" ,Cmd_setSweptStep    ,": set step Frec"       },
   { "per"  ,Cmd_setSweptPer     ,": set step periods"    },
   { "ena"  ,Cmd_setSweptEnable  ,": set swep enable"     },
   { "dis"  ,Cmd_setSweptDisable ,": set swep disable"    },
   { "E"    ,Cmd_stopFcl         ,": emergency stop"      },
   { "<"    ,Cmd_back2login      ,": back to login table" },
   { "?"    ,Cmd_Help            ,": help"                },
   { 0      ,0                   ,0                       }
};
void Cmd_setSweptInit(uint16_t argc, char *argv[])
{
   if(argc>1)
      setSweptInit(atof(argv[1]));
   sciPrintf("swept init frec=%f\r\n",getSweptInit());
}
void Cmd_setSweptLast(uint16_t argc, char *argv[])
{
   if(argc>1)
      setSweptLast(atof(argv[1]));
   sciPrintf("swept last frec=%f\r\n",getSweptLast());
}
void Cmd_setSweptStep(uint16_t argc, char *argv[])
{
   if(argc>1)
      setSweptStep(atof(argv[1]));
   sciPrintf("swept step frec=%f\r\n",getSweptStep());
}
void Cmd_setSweptPer(uint16_t argc, char *argv[])
{
   if(argc>1)
      setSweptPer(atoi(argv[1]));
   sciPrintf("swept period=%i\r\n",getSweptPer());
}
void Cmd_setSweptEnable(uint16_t argc, char *argv[])
{
   setSweptEnable();
   sciPrintf("swept enabled\r\n");
}
void Cmd_setSweptDisable(uint16_t argc, char *argv[])
{
   setSweptDisable();
   sciPrintf("swept disable\r\n");
}
/*}}}*/
//--------------------------------------------------------------------------------
tCmdLineEntry gcodeCmdTable[] =/*{{{*/
{
   { "g0"   ,Cmd_setGcodeG0  ,": G0"                              },
   { "F"    ,Cmd_setGcodeF   ,": F"                               },
   { "acc"  ,Cmd_setGcodeAcc ,": set accel"                       },
   { "dec"  ,Cmd_setGcodeDec ,": set deccel"                      },
   { "log"  ,Cmd_sendOneLog  ,": send one line log"               },
   { "rst"  ,Cmd_posRst      ,": reset abs pos to 0"              },
   { "wait" ,Cmd_gcodeWait   ,": wait until movement is finished" },
   { "E"    ,Cmd_stopFcl     ,": emergency stop"                  },
   { "<"    ,Cmd_back2login  ,": back to login table"             },
   { "?"    ,Cmd_Help        ,": help"                            },
   { 0      ,0               ,0                                   }
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
void Cmd_gcodeWait(uint16_t argc, char *argv[])
{
   gcodeWait  ( );
}
/*}}}*/
//--------------------------------------------------------------------------------
tCmdLineEntry stepdirCmdTable[] =/*{{{*/
{
   { "g"    ,Cmd_getStepdirPins  ,": read step and dir pins state" },
   { "clk"  ,Cmd_incStepdirPulse ,": inc step"                     },
   { "dir"  ,Cmd_setStepdirDir   ,": set dir to 0=clk 1=aclk"      },
   { "step" ,Cmd_setStepdirStep  ,": set step size"                },
   { "E"    ,Cmd_stopFcl         ,": emergency stop"               },
   { "<"    ,Cmd_back2login      ,": back to login table"          },
   { "?"    ,Cmd_Help            ,": help"                         },
   { 0      ,0                   ,0                                }
};
void Cmd_getStepdirPins(uint16_t argc, char *argv[])
{
   sciPrintf("step=%i dir=%i\r\n",getGpio39(),getGpio45());
}
void Cmd_incStepdirPulse(uint16_t argc, char *argv[])
{
   incStepdirPulse();
   sciPrintf("mech pos=%f actual pos=%f\r\n",getPosAbsMech(),getPosAbs());

}
void Cmd_setStepdirDir(uint16_t argc, char *argv[])
{
   if(argc>1)
      setStepdirDir(atoi(argv[1])==0?false:true);
   sciPrintf("actual dir=%s\r\n",getStepdirDir()==false?"CLK":"ACLK");
}
void Cmd_setStepdirStep(uint16_t argc, char *argv[])
{
   if(argc>1)
      setStepdirStep(atof(argv[1]));
   sciPrintf("stepdir Step=%f\r\n",getStepdirStep());
}
/*}}}*/
//--------------------------------------------------------------------------------
tCmdLineEntry logCmdTable[] =/*{{{*/
{
   { "ena"   ,Cmd_logOn           ,": set log on"                       },
   { "dis"   ,Cmd_logOff          ,": set log off"                      },
   { "pres"  ,Cmd_setLogPrescaler ,": set log prescaler"                },
   { "pause" ,Cmd_setLogPauseTime ,": set log pause time when keypress" },
   { "abs"   ,Cmd_setLogAbs       ,": set log absolute values"          },
   { "bode"  ,Cmd_setLogBode      ,": set log bode values"              },
   { "log"   ,Cmd_sendOneLog      ,": send one line log"                },
   { "E"     ,Cmd_stopFcl         ,": emergency stop"                   },
   { "<"     ,Cmd_back2login      ,": back to login table"              },
   { "?"     ,Cmd_Help            ,": help"                             },
   { 0       ,0                   ,0                                    }
};
void Cmd_logOn(uint16_t argc, char *argv[])
{
   sendLogEnableEvent();
}
void Cmd_logOff(uint16_t argc, char *argv[])
{
   sendLogDisableEvent();
   sciPrintf("log disabled\r\n");
}
void Cmd_setLogPrescaler(uint16_t argc, char *argv[])
{
   if(argc>1)
      setLogPrescaler(atoi(argv[1]));
   sciPrintf("log prescaler=%i\r\n",getLogPrescaler());
}
void Cmd_setLogPauseTime(uint16_t argc, char *argv[])
{
   if(argc>1)
      setLogPauseTime(atoi(argv[1]));
   sciPrintf("log pause time=%i\r\n",getLogPauseTime());
}
void Cmd_setLogAbs(uint16_t argc, char *argv[])
{
   logBodeDisable();
   sciPrintf("log absolute\r\n");
}
void Cmd_setLogBode(uint16_t argc, char *argv[])
{
   logBodeEnable();
   sciPrintf("log bode\r\n");
}
/*}}}*/
//--------------------------------------------------------------------------------
void Cmd_back2login(uint16_t argc, char *argv[])/*{{{*/
{
   actualCmdTable=loginCmdTable;
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

#include <stdint.h>
#include <stdbool.h>
#include <stdlib.h>
#include "scia.h"
#include "events.h"
#include "opt.h"
#include "sm.h"
#include "parser.h"
#include "cmdline.h"

const State
   receiving[];

char     lineBuff[APP_INPUT_BUF_SIZE]="";
uint16_t lineIndex=0;

const State*   parserSm=receiving;
const State**  parser    ( void )
{
   return &parserSm;
}
void parserProcess(void)
{
   uint16_t Char=Actual_Event()&0x00FF;
   if(lineIndex<sizeof(lineBuff)) {

      if(Char=='\n' || Char=='\r') {
proc:
         if(lineIndex>0)
            lineBuff[lineIndex]='\0';
         CmdLineProcess(lineBuff);
         lineIndex=0;
         return;
      }
      if(Char!=0x7F)
         lineBuff[lineIndex++]=Char;
      else
         if(lineIndex>0)
            lineIndex--;
   }
   else
      goto proc;
}
//--------------------------------------------------------------------------------
const State receiving [ ] =
{
    ANY_Event ,parserProcess ,receiving ,
};


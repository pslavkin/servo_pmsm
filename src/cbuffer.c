#include "stdint.h"
#include "stdbool.h"
#include "cbuffer.h"

uint16_t nextIndex  ( cBuffer_t* cb, uint16_t index ) { return (index == cb->poolSize)?0U:(index+1);}
uint16_t nextWIndex ( cBuffer_t* cb                 ) { return nextIndex(cb, cb->wIndex)           ;}
uint16_t nextRIndex ( cBuffer_t* cb                 ) { return nextIndex(cb, cb->rIndex)           ;}

uint16_t prevIndex  ( cBuffer_t* cb, uint16_t index ) { return (index == 0)?cb->poolSize:(index-1) ;}
uint16_t prevRIndex ( cBuffer_t* cb                 ) { return prevIndex(cb, cb->rIndex)           ;}
uint16_t prevWIndex ( cBuffer_t* cb                 ) { return prevIndex(cb, cb->wIndex)           ;}

uint16_t dataOnCBuffer(cBuffer_t* cb)
{
   if(cb->wIndex>=cb->rIndex)
      return cb->wIndex-cb->rIndex;
   else
      return cb->poolSize-cb->rIndex+1+cb->wIndex;
}
uint16_t spaceOnCBuffer(cBuffer_t* cb)
{
   return cb->poolSize-dataOnCBuffer(cb);
}
//-----------------------------------------------------------------
void initCBuffer ( void )
{
}
//-----------------------------------------------------------------
bool writeCBuffer(cBuffer_t* cb, char data)
{
   bool ans;
   uint16_t next=nextWIndex(cb);
   if (next != cb->rIndex) {
      cb->pool[cb->wIndex] = data;
      cb->wIndex          = next;
      ans=true;
   }
   else
      ans=false;
   return ans;
}
uint16_t writeCBufferArray(cBuffer_t* cb, char* data, uint16_t len)
{
   uint16_t i;
   for ( i=0;i<len;i++ ) {
      if ( writeCBuffer (cb, data[i] )==false)
         break;
   }
   return i;
}

//-------------------------------------------------------------------------------------
char readCBuffer(cBuffer_t* cb, bool* space)
{
   char data;
   if (cb->rIndex != cb->wIndex) {
      data=cb->pool[cb->rIndex];
      cb->rIndex = nextRIndex(cb);
      *space=true;
   }
   else
      *space=false;
   return data;                  //notar que si no hay nada para leer, devuelve simempre el ultimo dato escrito...
}
uint16_t readCBufferArray(cBuffer_t* cb, char* data, uint16_t len)
{
   uint16_t i;
   bool space;
   for ( i=0;i<len;i++ ) {
      data[i]=readCBuffer(cb, &space);
      if(space==false)
         break;
   }
   return i;
}


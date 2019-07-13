#include "stdint.h"
#include "stdbool.h"
#include "cbuffer.h"

uint16_t nextIndex  ( cBuffer_t* cb, uint16_t index ) { return (index == cb->poolSize)?0U:(index+1);}
uint16_t nextWIndex ( cBuffer_t* cb                 ) { return nextIndex(cb, cb->wIndex)           ;}
uint16_t nextRIndex ( cBuffer_t* cb                 ) { return nextIndex(cb, cb->rIndex)           ;}

uint16_t prevIndex  ( cBuffer_t* cb, uint16_t index ) { return (index == 0)?cb->poolSize:(index-1) ;}
uint16_t prevWIndex ( cBuffer_t* cb                 ) { return prevIndex(cb, cb->wIndex)           ;}
uint16_t prevRIndex ( cBuffer_t* cb                 ) { return prevIndex(cb, cb->rIndex)           ;}

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
bool writeCBuffer(cBuffer_t* cb, void* data)
{
   bool ans;
   uint16_t next=nextWIndex(cb);
   if (next != cb->rIndex) {
      uint16_t i, dataSize=cb->dataSize;
      for(i=0;i<dataSize;i++)
         cb->pool[cb->wIndex*dataSize+i] = ((uint16_t*)data)[i];
      cb->wIndex = next;
      ans        = true;
   }
   else
      ans=false;
   return ans;
}

uint16_t writeCBufferArray(cBuffer_t* cb, void* data, uint16_t len)
{
   uint16_t i;
   for ( i=0;i<len;i++ ) {
      if ( writeCBuffer(cb, (uint16_t*)data + (i*cb->dataSize))==false)
         break;
   }
   return i;
}
//-------------------------------------------------------------------------------------
bool readOrPeekCBuffer(cBuffer_t* cb, void* data,bool read)
{
   bool ans;
   if (cb->rIndex != cb->wIndex) {
      uint16_t i,dataSize=cb->dataSize;
      for(i=0;i<dataSize;i++)
         ((uint16_t*)data)[i]=cb->pool[cb->rIndex*dataSize+i];
      if(read==true)
         cb->rIndex = nextRIndex(cb);
      ans=true;
   }
   else
      ans=false;
   return ans;                  //notar que si no hay nada para leer, devuelve simempre el ultimo dato escrito...
}

bool readCBuffer(cBuffer_t* cb, void* data) { return readOrPeekCBuffer(cb,data,true); }
bool peekCBuffer(cBuffer_t* cb, void* data) { return readOrPeekCBuffer(cb,data,false); }

uint16_t readCBufferArray(cBuffer_t* cb, void* data, uint16_t len)
{
   uint16_t i,dataSize=cb->dataSize;
   for ( i=0;i<len;i++ ) {
      if(readCBuffer(cb,(uint16_t*)data+i*dataSize )==false)
         break;
   }
   return i;
}


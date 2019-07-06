#ifndef CBUFFER
#define CBUFFER

#include "stdbool.h"
#include "stdint.h"
//-----------------------------------------------------------

typedef struct cBuff_struct {
   uint16_t*   pool;
   uint16_t    dataSize;
   uint16_t    poolSize;
   uint16_t    rIndex;
   uint16_t    wIndex;
} cBuffer_t;

//-----------------------------------------------------------
bool     writeCBuffer      ( cBuffer_t* cb, uint16_t* data               );
uint16_t writeCBufferArray ( cBuffer_t* cb, uint16_t* data, uint16_t len );
bool     readCBuffer       ( cBuffer_t* cb, uint16_t* data               );
uint16_t readCBufferArray  ( cBuffer_t* cb, uint16_t* data, uint16_t len );
uint16_t dataOnCBuffer     ( cBuffer_t* cb                               );
uint16_t spaceOnCBuffer    ( cBuffer_t* cb                               );

#endif


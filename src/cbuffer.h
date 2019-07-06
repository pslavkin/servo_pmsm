#ifndef CBUFFER
#define CBUFFER

#include "stdbool.h"
#include "stdint.h"
//-----------------------------------------------------------
#define MAX_RCBUFFER_POOL 100
#define MAX_WCBUFFER_POOL 100

typedef struct cBuff_struct {
   char*    pool;
   uint16_t poolSize;
   uint16_t rIndex;
   uint16_t wIndex;
} cBuffer_t;
extern cBuffer_t rBuff,wBuff;

//-----------------------------------------------------------
void     initCBuffer       ( void                                    );
bool writeCBuffer          ( cBuffer_t* cb, char data                );
uint16_t writeCBufferArray ( cBuffer_t* cb, char* data, uint16_t len );
char readCBuffer           ( cBuffer_t* cb, bool* space              );
uint16_t readCBufferArray  ( cBuffer_t* cb, char* data, uint16_t len );
uint16_t dataOnCBuffer     ( cBuffer_t* cb                           );
uint16_t spaceOnCBuffer    ( cBuffer_t* cb                           );

#endif


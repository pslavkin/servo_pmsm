//#############################################################################
//
// FILE:   queue.c
//
// TITLE:  C28x event queue library
//
//#############################################################################
// $TI Release: MotorControl SDK v2.00.00.00 $
// $Release Date: Wed Jun 19 14:21:49 CDT 2019 $
// $Copyright:
// Copyright (C) 2017-2018 Texas Instruments Incorporated - http://www.ti.com/
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions
// are met:
// 
//   Redistributions of source code must retain the above copyright
//   notice, this list of conditions and the following disclaimer.
// 
//   Redistributions in binary form must reproduce the above copyright
//   notice, this list of conditions and the following disclaimer in the
//   documentation and/or other materials provided with the
//   distribution.
// 
//   Neither the name of Texas Instruments Incorporated nor the names of
//   its contributors may be used to endorse or promote products derived
//   from this software without specific prior written permission.
// 
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
// "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
// A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
// OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
// LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
// DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
// THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
// $
//#############################################################################

#include "queue.h"
#include "string.h"

//*****************************************************************************
//
// Global variable definitions
//
//*****************************************************************************
uint32_t gEventIndex;

EVENT_Obj gEvents[QUEUE_MAX_NUM_EVENTS];

//*****************************************************************************
//
// QUEUE_init
//
//*****************************************************************************
QUEUE_Handle
QUEUE_init(void *pMemory, const size_t numBytes)
{
    QUEUE_Handle handle;
    QUEUE_Obj *obj;

    //
    // Check to ensure memory allotted can accommodate object memory needs
    //
    if(numBytes < sizeof(QUEUE_Obj))
    {
        return((QUEUE_Handle)NULL);
    }

    //
    // Assign the handle
    //
    handle = (QUEUE_Handle)pMemory;

    //
    // Assign the object
    //
    obj = (QUEUE_Obj *)handle;

    //
    // Configure the queue
    //
    obj->firstEvent = (EVENT_Handle)pMemory;
    obj->lastEvent = (EVENT_Handle)pMemory;

    //
    // Zero out the events
    //
    gEventIndex = 0;
    (void)memset(&gEvents[0],0,sizeof(gEvents));

    return(handle);
} // end of QUEUE_init() function

//*****************************************************************************
//
// QUEUE_listen
//
//*****************************************************************************
void
QUEUE_listen(QUEUE_Handle handle)
{
    for(;;)
    {
        //
        // Wait until the specific queue has an event
        //
        while(QUEUE_isIdle(handle))
        {
            //
            // Allow some sleep time
            //
          #ifndef MATLAB_SIMULATION
            asm (" NOP ");
            asm (" NOP ");
            asm (" NOP ");
            asm (" NOP ");
            asm (" NOP ");
          #endif
        }

        //
        // Execute event
        //
        QUEUE_executeEvent(handle);
    }
} // end of QUEUE_listen() function

// end of file

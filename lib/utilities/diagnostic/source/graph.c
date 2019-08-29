//#############################################################################
//
// FILE:   graph.c
//
// TITLE:  graph functions used to record data
//
//#############################################################################
// $TI Release: MotorControl SDK v2.00.00.00 $
// $Release Date: Wed Jun 19 14:21:49 CDT 2019 $
// $Copyright:
// Copyright (C) 2017-2019 Texas Instruments Incorporated - http://www.ti.com/
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

//! \file   libraries/utilities/diagnostic/source/graph.c
//! \brief  Portable C functions that define the
//!         graphing (GRAPH) module routines
//!

// the includes
#include "libraries/math/include/math.h"
#include "graph.h"

// modules

// drivers

// platforms

// **************************************************************************
// the defines

#ifdef _STEP_RESPONSE_EN_
// global variables
GRAPH_Vars_t gGraphVars = GRAPH_VARS_INIT;
#pragma DATA_SECTION(gGraphVars,"graph_data");

GRAPH_StepVars_t gStepVars = STEP_Vars_INIT;
#pragma DATA_SECTION(gStepVars,"graph_data");
#endif

// gGraphVars.bufferData[0].data[0]
// gGraphVars.bufferData[1].data[0]

// **************************************************************************
// the function prototypes

//-----------------------------------------------------------------
bool GRAPH_BufferOut(GRAPH_Buffer_t *pBuffer, float32_t *pWord)
{
    *pWord = pBuffer->data[pBuffer->read];
    pBuffer->read = (pBuffer->read+1) & GRAPH_BUFFER_MASK;
    return(true);
}

//-----------------------------------------------------------------
bool GRAPH_BufferIn(GRAPH_Buffer_t *pBuffer, float32_t data)
{
    uint16_t next = ((pBuffer->write + 1) & GRAPH_BUFFER_MASK);

    pBuffer->data[pBuffer->write & GRAPH_BUFFER_MASK] = data;
    pBuffer->write = next;

    return(true);
}

//-----------------------------------------------------------------
void GRAPH_BufferInit(GRAPH_Vars_t *pGraphVars)
{
    uint_least16_t buffer_array = 0;

    for(buffer_array=0;buffer_array<GRAPH_BUFFER_NR;buffer_array++)
    {
        pGraphVars->bufferData[buffer_array].write = 0;
        pGraphVars->bufferData[buffer_array].read = 0;
    }

    pGraphVars->bufferCounter = 0;
    pGraphVars->bufferTickCounter =  0;
}

//-----------------------------------------------------------------
void GRAPH_DataPointerInit(GRAPH_StepVars_t *pStepVars,
              volatile float32_t *pSpeed_in, float32_t *pId_in, float32_t *pIq_in,
              volatile float32_t *pSpeed_ref, float32_t *pId_ref, float32_t *pIq_ref)
{
    pStepVars->pSpeed_in = pSpeed_in;
    pStepVars->pId_in = pId_in;
    pStepVars->pIq_in = pIq_in;

    pStepVars->pSpeed_ref = pSpeed_ref;
    pStepVars->pId_ref = pId_ref;
    pStepVars->pIq_ref = pIq_ref;
}

//-----------------------------------------------------------------
void GRAPH_DATA(GRAPH_Vars_t *pGraphVars, GRAPH_StepVars_t *pStepVars)
{
    switch(pGraphVars->bufferMode)
    {
        case GRAPH_STEP_RP_CURRENT:
            // Id current
            GRAPH_Data_Gather(pGraphVars, GRAPH_BUFFER_NR0,
                              (*pStepVars->pId_in));
        break;

        case GRAPH_STEP_RP_SPEED:
            // Iq current and speed
            GRAPH_Data_Gather(pGraphVars, GRAPH_BUFFER_NR1,
                              (*pStepVars->pIq_in));
            GRAPH_Data_Gather(pGraphVars, GRAPH_BUFFER_NR0,
                              (*pStepVars->pSpeed_in));
        break;

        case GRAPH_STEP_RP_VIEW:
              GRAPH_Data_Gather(pGraphVars, GRAPH_BUFFER_NR0,
                                (*pStepVars->pIq_in));
              GRAPH_Data_Gather(pGraphVars, GRAPH_BUFFER_NR1,
                                (*pStepVars->pSpeed_in));
        break;

        default:
            break;
    }
}

void GRAPH_Data_Gather (GRAPH_Vars_t *pGraphVars, GRAPH_BufferNR_e bufferNum,
                        float32_t gData)
{
    if( pGraphVars->bufferCounter < GRAPH_BUFFER_SIZE)
    {
       pGraphVars->bufferTickCounter++;

       if(pGraphVars->bufferTickCounter < (pGraphVars->bufferTick) )
       {
            // Do nothing
       }
       else
       {
            GRAPH_BufferIn(&pGraphVars->bufferData[bufferNum], gData);

            pGraphVars->bufferCounter++;
            pGraphVars->bufferTickCounter = 0;
       } // End (gGraphVars->Buffer_delay_counter <= gGraphVars->Buffer_delay)
    } // End if(gGraphVars->bufferCounter < GRAPH_BUFFER_SIZE)
} // End of Graph_Current_step()

//-----------------------------------------------------------------
void GRAPH_generateStepResponse(GRAPH_Vars_t *pGraphVars,
                                GRAPH_StepVars_t *pStepVars)
{
    if(pStepVars->stepResponse)
    {
        switch(pGraphVars->bufferMode)
        {
            case GRAPH_STEP_RP_CURRENT:
                *pStepVars->pId_ref = pStepVars->IdRef_Default +
                                      pStepVars->IdRef_StepSize;
                pGraphVars->bufferCounter = 0;
                pGraphVars->bufferData[0].write = 0;
                pGraphVars->bufferData[1].write = 0;
                break;
            case GRAPH_STEP_RP_SPEED:
                *pStepVars->pSpeed_ref = pStepVars->spdRef_Default +
                                         pStepVars->spdRef_StepSize;
                pGraphVars->bufferCounter = 0;
                pGraphVars->bufferData[0].write = 0;
                pGraphVars->bufferData[1].write = 0;
                break;

            case GRAPH_STEP_RP_VIEW:
                pGraphVars->bufferCounter = 0;
                pGraphVars->bufferData[0].write = 0;
                pGraphVars->bufferData[1].write = 0;
                break;

            default:
                break;
        } // End switch
    } // End if

    if((!(pStepVars->stepResponse))&&(pGraphVars->bufferCounter==GRAPH_BUFFER_SIZE))
    {
        switch(pGraphVars->bufferMode)
        {
            case GRAPH_STEP_RP_CURRENT:
                *pStepVars->pId_ref = pStepVars->IdRef_Default;
                break;
            case GRAPH_STEP_RP_SPEED:
                *pStepVars->pSpeed_ref = pStepVars->spdRef_Default;
                break;
            case GRAPH_STEP_RP_VIEW:
                break;
            default:
                break;
        } // End switch
    } // End if

    pStepVars->stepResponse = 0;
} // End of GRAPH_generateStepResponse()

//@} //defgroup


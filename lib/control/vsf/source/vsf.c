//#############################################################################
//
// FILE:   vsf.c
//
// TITLE:  variable switching frequency (VSF)
//
//#############################################################################
// $TI Release: MotorControl SDK v2.00.00.00 $
// $Release Date: Wed Jun 19 14:21:48 CDT 2019 $
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


// **************************************************************************
// the includes
#include "vsf.h"

// **************************************************************************
// the defines


// **************************************************************************
// the globals


// **************************************************************************
// the functions

VSF_Handle VSF_init(void *pMemory, const size_t numBytes)
{
    VSF_Handle vsfHandle;

    if(numBytes < sizeof(VSF_Obj))
    {
        return((VSF_Handle)NULL);
    }

    // assign the handle
    vsfHandle = (VSF_Handle)pMemory;

    return(vsfHandle);
} // end of VSF_init() function


void VSF_initParams(VSF_Handle vsfHandle, USER_Params *pUserParams)
{
    VSF_Obj *vsfObj = (VSF_Obj *)vsfHandle;

    // setup the Counter-Compare Control Register (CMPCTL)
    vsfObj->cpuFreq_Hz = (uint32_t)pUserParams->systemFreq_MHz * 1000000L;
    vsfObj->pwmFreqSet_Hz = (uint16_t)(USER_PWM_FREQ_kHz * 1000);
    vsfObj->pwmFreqTarget_Hz = vsfObj->pwmFreqSet_Hz;
    vsfObj->pwmFreqNow_Hz = vsfObj->pwmFreqSet_Hz;
    vsfObj->pwmFreqDelta_Hz = VSF_NUM_DELTA;

    vsfObj->pwmFreqMax_Hz = VSF_NUM_MAX_FREQ_HZ;
    vsfObj->pwmFreqMin_Hz = VSF_NUM_MIN_FREQ_HZ;

    vsfObj->pwmPeriod = (vsfObj->cpuFreq_Hz>>1)/vsfObj->pwmFreqNow_Hz;
    vsfObj->pwmPeriodNow = vsfObj->pwmPeriod;

    vsfObj->pwmWaitTime = VSF_NUM_WAIT_TIME;
    vsfObj->pwmCounter = 0;

    vsfObj->state = VSF_STATE_IDLE;

    return;
}


void VSF_computeFreqParams(VSF_Handle vsfHandle)
{
    VSF_Obj *vsfObj = (VSF_Obj *)vsfHandle;

    // Check the setting PWM frequency if it's in the limitation range
    if(vsfObj->pwmFreqSet_Hz > vsfObj->pwmFreqMax_Hz)
    {
        vsfObj->pwmFreqTarget_Hz = vsfObj->pwmFreqMax_Hz;
    }
    else if(vsfObj->pwmFreqSet_Hz < vsfObj->pwmFreqMin_Hz)
    {
        vsfObj->pwmFreqTarget_Hz = vsfObj->pwmFreqMin_Hz;
    }
    else
    {
        vsfObj->pwmFreqTarget_Hz = vsfObj->pwmFreqSet_Hz;
    }

    // Calculate the PWM frequency and Period
    if(vsfObj->pwmFreqTarget_Hz != vsfObj->pwmFreqNow_Hz)
    {
        if(vsfObj->state == VSF_STATE_IDLE)
        {
            if(vsfObj->pwmFreqTarget_Hz > vsfObj->pwmFreqNow_Hz)
            {
                vsfObj->pwmFreqNow_Hz += vsfObj->pwmFreqDelta_Hz;

                if(vsfObj->pwmFreqNow_Hz >= vsfObj->pwmFreqTarget_Hz)
                {
                    vsfObj->pwmFreqNow_Hz = vsfObj->pwmFreqTarget_Hz;
                }
            }
            else
            {
                vsfObj->pwmFreqNow_Hz -= vsfObj->pwmFreqDelta_Hz;

                if(vsfObj->pwmFreqNow_Hz <= vsfObj->pwmFreqTarget_Hz)
                {
                    vsfObj->pwmFreqNow_Hz = vsfObj->pwmFreqTarget_Hz;
                }
            }

            vsfObj->pwmPeriod = (vsfObj->cpuFreq_Hz>>1) / vsfObj->pwmFreqNow_Hz;
            vsfObj->state = VSF_STATE_PERIOD_SET;
        }
    }

    return;
}

// end of file

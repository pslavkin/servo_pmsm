//#############################################################################
//
// FILE:   queue.h
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

#ifndef QUEUE_H
#define QUEUE_H

//*****************************************************************************
//
// If building with a C++ compiler, make all of the definitions in this header
// have a C binding.
//
//*****************************************************************************
#ifdef __cplusplus
extern "C"
{
#endif

//*****************************************************************************
//
//! \addtogroup QUEUE
//! @{
//
//*****************************************************************************

#include "sw/libraries/types/include/types.h"
#include "sw/libraries/iqmath/include/32b/IQmathLib.h"
#include "cpu.h"

//*****************************************************************************
//
//! \brief      Defines the maximum number of event arguments
//
//*****************************************************************************
#define    EVENT_MAX_NUM_ARGS           4

//*****************************************************************************
//
//! \brief      Defines the maximum number of events per queue
//!
//! \NOTE       must be a power of 2
//
//*****************************************************************************
#define    QUEUE_MAX_NUM_EVENTS         8

//*****************************************************************************
//
//! \brief      Defines the event function prototype
//
//*****************************************************************************
typedef void (*EVENT_Fxn)();

//*****************************************************************************
//
//! \brief      Defines the event argument list
//
//*****************************************************************************
typedef struct _EVENT_ArgList_
{
    void *arg[EVENT_MAX_NUM_ARGS];       //!< an array of the pointers to the
                                         //!< event arguments
} EVENT_ArgList;

//*****************************************************************************
//
//! \brief      Defines the event queue object
//
//*****************************************************************************
typedef struct _EVENT_Obj_
{
    struct _EVENT_Obj_  *nextEvent;      //!< the next event in the queue
    struct _EVENT_Obj_  *prevEvent;      //!< the previous event in the queue
    bool taken;                          //!< a flag to indicate if event is
                                         //!< taken
    uint_least8_t queueNumber;           //!< the queue number
    uint_least8_t numArgs;               //!< the number of event arguments
    EVENT_Fxn eventFxn;                  //!< the event function that will be
                                         //!< called
    EVENT_ArgList argList;               //!< the event function argument list
} EVENT_Obj;

//*****************************************************************************
//
//! \brief      Defines the EVENT handle
//
//*****************************************************************************
typedef struct _EVENT_Obj_  *EVENT_Handle;

//*****************************************************************************
//
//! \brief      Defines the queue object structure
//
//*****************************************************************************
typedef struct _QUEUE_Obj_
{
    EVENT_Handle firstEvent;             //!< the first event in the queue
    EVENT_Handle lastEvent;              //!< the last event in the queue
} QUEUE_Obj;

//*****************************************************************************
//
//! \brief      Defines the queue status messages
//
//*****************************************************************************
typedef enum
{
    QUEUE_STATUS_FIRST_EVENT_TAKEN = 0,  //!< the first event taken message
    QUEUE_STATUS_LAST_EVENT_TAKEN  = 1   //!< the last event taken message
} QUEUE_Status;

//*****************************************************************************
//
//! \brief      Defines the queue handle
//
//*****************************************************************************
typedef struct _QUEUE_Obj_ *QUEUE_Handle;

//*****************************************************************************
//
//! \brief      The event index
//
//*****************************************************************************
extern uint32_t gEventIndex;

//*****************************************************************************
//
//! \brief      The array of events
//
//*****************************************************************************
extern EVENT_Obj gEvents[QUEUE_MAX_NUM_EVENTS];

//*****************************************************************************
//
//! \brief     Checks if there is an event available in the queue.
//!
//! \param[in] handle    The queue handle
//!
//! \return    
//
//*****************************************************************************
static inline bool
QUEUE_isEvent(QUEUE_Handle handle)
{
    QUEUE_Obj *obj = (QUEUE_Obj *)handle;

    return(!(obj->firstEvent == (EVENT_Handle)obj));
} // end of QUEUE_isEvent() function

//*****************************************************************************
//
//! \brief     Checks if the specified queue is idle
//!
//! \param[in] handle    The queue handle
//!
//! \return
//
//*****************************************************************************
static inline bool
QUEUE_isIdle(QUEUE_Handle handle)
{
    QUEUE_Obj *obj = (QUEUE_Obj *)handle;

    return(obj->firstEvent == (EVENT_Handle)obj);
} // end of QUEUE_isIdle() function

//*****************************************************************************
//
//! \brief     Initializes the queue
//!
//! \param[in] pMemory   A pointer to the memory for the queue object
//!
//! \param[in] numBytes  The number of bytes allocated for the queue object,
//!                      bytes
//!
//! \return The queue (QUEUE) object handle
//
//*****************************************************************************
extern QUEUE_Handle
QUEUE_init(void *pMemory, const size_t numBytes);

//*****************************************************************************
//
//! \brief     Puts the calling process in a listen state.  It loops until
//!            there is at least one event in the queue.
//!
//! \param[in] handle    The queue handle
//!
//! \return     None
//
//*****************************************************************************
extern void
QUEUE_listen(QUEUE_Handle handle);

//*****************************************************************************
//
//! \brief     Posts an event to the beginning of the specified queue
//!
//! \param[in] handle       The queue handle
//!
//! \param[in] eventFxn     The event function that will be called
//!
//! \param[in] *pArgList    The pointer to the event argument list
//!
//! \param[in] numArgs      The number of arguments
//!
//! \return
//
//*****************************************************************************
static inline status
QUEUE_postEventFirst(QUEUE_Handle handle, const EVENT_Fxn eventFxn,
                     const EVENT_ArgList *pArgList,
                     const uint_least8_t numArgs)
{
    if(numArgs > EVENT_MAX_NUM_ARGS)
    {
        return(ERROR);
    }
    else
    {
        QUEUE_Obj *obj = (QUEUE_Obj *)handle;
        EVENT_Obj *pEvent;
        EVENT_Obj *pFirstEvent;

        pEvent = &gEvents[gEventIndex];

        if(pEvent->taken)
        {
            return(QUEUE_STATUS_FIRST_EVENT_TAKEN);
        }

        gEventIndex++;
        gEventIndex &= QUEUE_MAX_NUM_EVENTS - 1;

        pEvent->taken = true;

        pEvent->eventFxn = eventFxn;
        pEvent->argList.arg[0] = pArgList->arg[0];
        pEvent->argList.arg[1] = pArgList->arg[1];
        pEvent->argList.arg[2] = pArgList->arg[2];
        pEvent->argList.arg[3] = pArgList->arg[3];

        //
        // Set the number of arguments
        //
        pEvent->numArgs = numArgs;

        //
        // Insert the event at top of the queue
        //
        pFirstEvent = (EVENT_Obj *)obj->firstEvent;

        pEvent->prevEvent = pFirstEvent->prevEvent;
        pEvent->nextEvent = pFirstEvent;
        pFirstEvent->prevEvent = pEvent;
        obj->firstEvent = (EVENT_Handle)pEvent;

        return(OK);
    }
} // end of QUEUE_postEventFirst() function

//*****************************************************************************
//
//! \brief     Posts an event to the end of the specified queue
//!
//! \param[in] handle       The queue handle
//!
//! \param[in] eventFxn     The event function that will be called
//!
//! \param[in] *pArgList    The pointer to the event argument list
//!
//! \param[in] numArgs      The number of event arguments
//!
//! \return 
//
//*****************************************************************************
static inline status
QUEUE_postEventLast(QUEUE_Handle handle, const EVENT_Fxn eventFxn,
                    const EVENT_ArgList *pArgList, const uint_least8_t numArgs)
{
    if(numArgs > EVENT_MAX_NUM_ARGS)
    {
        return(ERROR);
    }
    else
    {
        QUEUE_Obj *obj = (QUEUE_Obj *)handle;
        EVENT_Obj *pEvent;
        EVENT_Obj *pLastEvent;

        pEvent = &gEvents[gEventIndex];

        if(pEvent->taken)
        {
            return(QUEUE_STATUS_LAST_EVENT_TAKEN);
        }

        gEventIndex++;
        gEventIndex &= QUEUE_MAX_NUM_EVENTS - 1;

        pEvent->taken = true;

        pEvent->eventFxn = eventFxn;
        pEvent->argList.arg[0] = pArgList->arg[0];
        pEvent->argList.arg[1] = pArgList->arg[1];
        pEvent->argList.arg[2] = pArgList->arg[2];
        pEvent->argList.arg[3] = pArgList->arg[3];

        //
        // Set the number of arguments
        //
        pEvent->numArgs = numArgs;

        //
        // Insert the event at the bottom of the queue
        //
        pLastEvent = (EVENT_Obj *)obj->lastEvent;

        pEvent->prevEvent = pLastEvent;
        pEvent->nextEvent = pLastEvent->nextEvent;
        pLastEvent->nextEvent = pEvent;
        obj->lastEvent = (EVENT_Handle)pEvent;

        return(OK);
    }
} // end of QUEUE_postEventLast() function

//*****************************************************************************
//
//! \brief     Removed the first event from the specified queue
//!
//! \param[in] handle    The queue handle
//!
//! \return    None
//
//*****************************************************************************
static inline void
QUEUE_removeFirstEvent(QUEUE_Handle handle)
{
    QUEUE_Obj *obj = (QUEUE_Obj *)handle;
    EVENT_Obj *pFirstEvent;
    EVENT_Obj *pNextEvent;
    EVENT_Obj *pPrevEvent;

    //
    // Disable interrupts
    //
    DISABLE_INTERRUPTS;

    pFirstEvent = (EVENT_Obj *)obj->firstEvent;

    pNextEvent = pFirstEvent->nextEvent;
    pPrevEvent = pFirstEvent->prevEvent;

    pNextEvent->prevEvent = pPrevEvent;
    pPrevEvent->nextEvent = pNextEvent;

    obj->firstEvent = (EVENT_Handle)pNextEvent;

    pFirstEvent->taken = false;

    //
    // Enable maskable interrupts
    //
    ENABLE_INTERRUPTS;

    return;
} // end of QUEUE_removeFirstEvent() function

//*****************************************************************************
//
//! \brief     Removed the last event from the specified queue
//!
//! \param[in] handle    The queue handle
//!
//! \return    None
//
//*****************************************************************************
static inline void
QUEUE_removeLastEvent(QUEUE_Handle handle)
{
    QUEUE_Obj *obj = (QUEUE_Obj *)handle;
    EVENT_Obj *pLastEvent;
    EVENT_Obj *pNextEvent;
    EVENT_Obj *pPrevEvent;

    //
    // Disable interrupts
    //
    DISABLE_INTERRUPTS;

    pLastEvent = (EVENT_Obj *)obj->lastEvent;

    pNextEvent = (EVENT_Obj *)pLastEvent->nextEvent;
    pPrevEvent = (EVENT_Obj *)pLastEvent->prevEvent;

    pNextEvent->prevEvent = pPrevEvent;
    pPrevEvent->nextEvent = pNextEvent;

    pLastEvent->taken = false;

    obj->lastEvent = (EVENT_Handle)pPrevEvent;

    //
    // Enable interrupts
    //
    ENABLE_INTERRUPTS;

    return;
} // end of QUEUE_removeLastEvent() function

//*****************************************************************************
//
//! \brief     Checks the specified event queue for an event.  If there is an
//!            event, it is executed.
//!
//! \param[in] handle    The queue handle
//!
//! \return    None
//
//*****************************************************************************
static inline void
QUEUE_executeEvent(QUEUE_Handle handle)
{
    QUEUE_Obj *obj = (QUEUE_Obj *)handle;
    EVENT_Obj *pEvent = (EVENT_Obj *)obj->firstEvent;
    uint_least8_t numArgs = pEvent->numArgs;

    //
    // Based on the number of event arguments, make the appropriate event call
    //
    if(numArgs == 4)
    {
        (pEvent->eventFxn)(pEvent->argList.arg[0],pEvent->argList.arg[1],
                           pEvent->argList.arg[2],pEvent->argList.arg[3]);
    }
    else if(numArgs == 3)
    {
        (pEvent->eventFxn)(pEvent->argList.arg[0],pEvent->argList.arg[1],
                           pEvent->argList.arg[2]);
    }
    else if(numArgs == 2)
    {
        (pEvent->eventFxn)(pEvent->argList.arg[0],pEvent->argList.arg[1]);
    }
    else if(numArgs == 1)
    {
        (pEvent->eventFxn)(pEvent->argList.arg[0]);
    }
    else if(numArgs == 0)
    {
        (pEvent->eventFxn)();
    }

    //
    // Remove the event from the queue
    //
    QUEUE_removeFirstEvent(handle);

    return;
} // end of QUEUE_executeEvent() function

//*****************************************************************************
//
// Close the Doxygen group.
//! @}
//
//*****************************************************************************

//*****************************************************************************
//
// Mark the end of the C bindings section for C++ compilers.
//
//*****************************************************************************
#ifdef __cplusplus
}
#endif

#endif // QUEUE_H

//----------------------------------------------------------------------------------
//	FILE:			qep_defs.h
//
//	Description:	Contains QEP macros
//
//	Version: 		1.0
//
//#############################################################################
// $TI Release: MotorControl SDK v2.00.00.00 $
// $Release Date: Wed Jun 19 14:21:49 CDT 2019 $
// $Copyright: Copyright (C) 2013-2017 Texas Instruments Incorporated -
//             http://www.ti.com/ ALL RIGHTS RESERVED $
//#############################################################################

#ifndef QEP_DEFS_H
#define QEP_DEFS_H

#include <stdint.h>
#include "inc/hw_types.h"

/*-----------------------------------------------------------------------------
Define the structure of the QEP (Quadrature Encoder) Driver Object
-----------------------------------------------------------------------------*/
typedef struct {
    float32_t ElecTheta;       // Output: Motor Electrical angle
    float32_t MechTheta;       // Output: Motor Mechanical Angle
    uint16_t  DirectionQep;    // Output: Motor rotation direction
    uint16_t  QepPeriod;       // Output: Capture period of QEP signal in number
                               //         of EQEP capture timer (QCTMR) period
    uint32_t  QepCountIndex;   // Variable: Encoder counter index
    int32_t   RawTheta;        // Variable: Raw angle from EQEP Postiion counter
    float32_t MechScaler;      // Parameter: 0.9999/total count
    uint16_t  LineEncoder;     // Parameter: Number of line encoder
    uint16_t  PolePairs;       // Parameter: Number of pole pairs
    int32_t   CalibratedAngle; // Parameter: Raw angular offset
                               //            between encoder index and phase A
    uint16_t  IndexSyncFlag;   // Output: Index sync status
} QEP;

/*-----------------------------------------------------------------------------
Default initializer for the QEP Object.
-----------------------------------------------------------------------------*/
#define QEP_DEFAULTS {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x00020000, 0x0, 2, 0, 0x0}


// State machine typedef for QEP status
typedef enum
{
    QEP_ALIGNMENT,
    QEP_WAIT_FOR_INDEX,
    QEP_GOT_INDEX
} QEP_Status_e;


#endif // QEP_DEFS_H





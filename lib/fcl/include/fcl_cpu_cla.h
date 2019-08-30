//#############################################################################
// FILE:   fcl_cpu_cla.h
// TITLE:  Header file to be shared between example and library for CPU data.
//
//  Group:          C2000
//
//#############################################################################
// $TI Release: MotorControl SDK v2.00.00.00 $
// $Release Date: Wed Jun 19 14:21:48 CDT 2019 $
// $Copyright:
// Copyright (C) 2017-2019 Texas Instruments Incorporated
//
//     http://www.ti.com/ ALL RIGHTS RESERVED
// $
//#############################################################################

#ifndef FCL_CPU_CLA_H
#define FCL_CPU_CLA_H

#define   MATH_TYPE      1
#include "IQmathLib.h"

#include "fcl_pi.h"
#include "qep_defs.h"

#ifdef FCL_LIB
#include "F28x_Project.h"
#endif
#include "driverlib.h"

#include "clarke.h"
#include "park.h"
#include "speed_fr.h"
#include "svgen.h"
#include "RAMP_GEN_CLA.h"

#ifndef FCL_LIB
#pragma DATA_SECTION(lsw,     "ClaData");
#pragma DATA_SECTION(pi_iq,   "ClaData")
#pragma DATA_SECTION(qep1,    "ClaData");
#pragma DATA_SECTION(pangle,  "ClaData");
#pragma DATA_SECTION(rg1,     "ClaData");
#endif

/* ****************************************************************************
 * The following variables are brought into library but not used as they take
 * few more cycles - (svgen1 seemed to take similar time as local def -
 * probably because of its size)
 * These variables can be used by user for their experimentation purposes
 * ***************************************************************************
 */

#ifdef FCL_LIB
extern
#endif
CLARKE          clarke1;

#ifdef FCL_LIB
extern
#endif
PARK            park1;

// Instance a Space Vector PWM modulator. This modulator generates a, b and c
// phases based on the d and q stationery reference frame inputs
#ifdef FCL_LIB
extern
#endif
SVGEN           svgen1;
//*****************************************************************************

#ifdef FCL_LIB
extern
#endif
QEP_Status_e     lsw;

#ifdef FCL_LIB
extern
#endif
float32_t       pangle;

#ifdef FCL_LIB
extern
#endif
QEP             qep1;

#ifdef FCL_LIB
extern
#endif
FCL_PIController_t   pi_id, pi_iq;

//  Instance a ramp generator to simulate an Angle
#ifdef FCL_LIB
extern
#endif
RAMP_GEN_CLA    rg1;

#ifdef FCL_LIB
extern
#endif
SPEED_MEAS_QEP  speed1;

// ==============================================================
typedef struct _FCL_Parameters_ {
    float32_t   carrierMid;     // Mid point value of carrier count
    float32_t   adcScale;       // ADC conversion scale to pu
    float32_t   cmidsqrt3;      // internal variable

    float32_t   tSamp;           // sampling time
    float32_t   Rd;              // Motor resistance in D axis
    float32_t   Rq;              // Motor resistance in Q axis
    float32_t   Ld;              // Motor inductance in D axis
    float32_t   Lq;              // Motor inductance in Q axis
    float32_t   Vbase;           // Base voltage for the controller
    float32_t   Ibase;           // Base current for the controller
    float32_t   wccD;            // D axis current controller bandwidth
    float32_t   wccQ;            // Q axis current controller bandwidth
    float32_t   Vdcbus;          // DC bus voltage
    float32_t   BemfK;           // Motor Bemf constant
    float32_t   Wbase;           // Controller base frequency (Motor) in rad/sec
} FCL_Parameters_t;


// ==============================================================
#ifdef FCL_LIB
extern
#endif
FCL_Parameters_t FCL_params;

//interface functions
extern void FCL_runComplexCtrl(void);
extern void FCL_runPICtrl(void);
extern void FCL_runPICtrlWrap(void);
extern void FCL_runQEPWrap(void);
extern void FCL_runComplexCtrlWrap(void);
extern void FCL_initPWM(uint32_t basePhaseU, uint32_t basePhaseV,
                        uint32_t basePhaseW);
extern void FCL_initADC(uint32_t resultBaseA, ADC_PPBNumber baseA_PPB,
                        uint32_t resultBaseB, ADC_PPBNumber baseB_PPB,
                        uint32_t adcBasePhaseW);
extern void FCL_initQEP(uint32_t baseA);
extern void FCL_resetController(void);
extern uint32_t FCL_getSwVersion(void);

//extern __interrupt void Cla1Task1(void);
//extern __interrupt void Cla1Task2(void);
//extern __interrupt void Cla1Task3(void);
//extern __interrupt void Cla1Task4(void);

#endif

//#############################################################################
// FILE    : fcl_f2837x_enum.h
//#############################################################################
// $TI Release: MotorControl SDK v2.00.00.00 $
// $Release Date: Wed Jun 19 14:21:52 CDT 2019 $
// $Copyright:
// Copyright (C) 2017-2019 Texas Instruments Incorporated
//
//     http://www.ti.com/ ALL RIGHTS RESERVED
// $
//#############################################################################

#ifndef FCL_F2837X_ENUM_H
#define FCL_F2837X_ENUM_H

//
//! \brief Enumeration for State Machine typedef for motor QEP calibration
//
typedef enum
{
    QEP_CALIB_LOOPFLUSH = 0,
    QEP_CALIB_EQP1,
    QEP_CALIB_QEP2,
    QEP_CALIB_DONE
} QEPCalibSM_e;

//
//! \brief Enumeration for Motor run/ stop command
//
typedef enum
{
    MOTOR_STOP = 0,
    MOTOR_RUN
} MotorRunStop_e;

//
//! \brief Enumeration for Load motor selection/ reset
//
typedef enum
{
    LOAD_NONE = 0,
    LOAD_MOTOR1,
    LOAD_MOTOR2
} LoadMotor_e;

//
//! \brief Enumeration for FCL controller --> PI/ FCL
//
typedef enum
{
    CNTLR_CPI = 0,
    CNTLR_CMPLX
} CurrentCntlr_e;

//
//! \brief Enumeration for SFRA test axis
//
typedef enum
{
    SFRA_TEST_D_AXIS = 0,
    SFRA_TEST_Q_AXIS,
    SFRA_TEST_SPEEDLOOP
} SFRATest_e;

//
//! \brief Enumeration for PWM update mode
//
typedef enum
{
    PWM_UPDATE_IMMEDIATE = 0,
    PWM_UPDATE_SHADOW
} PWMUpdateType_e;

#endif // end of FCL_F2837X_ENUM_H definition

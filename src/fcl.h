//#############################################################################
//  FILE:           fcl_qep_f2837x_tmdxiddk_settings.h
//
//  Description:    User settings
//
//#############################################################################
// $TI Release: MotorControl SDK v2.00.00.00 $
// $Release Date: Wed Jun 19 14:21:52 CDT 2019 $
// $Copyright:
// Copyright (C) 2017-2019 Texas Instruments Incorporated
//
//     http://www.ti.com/ ALL RIGHTS RESERVED
// $
//#############################################################################

#ifndef FCL
#define FCL


//
// Include project specific include files.
//

// define math type as float(1)
#ifndef   MATH_TYPE
#define   MATH_TYPE      1
#endif

#include "IQmathLib.h"
#include "device.h"

#include "../lib/utilities/math_blocks/include/math_blocks/ipark.h"              // Include header for the IPARK object
#include "../lib/utilities/math_blocks/include/math_blocks/pi.h"                 // Include header for the PI  object
#include "../lib/fcl/include/fcl_pi.h"             // Include header for the FCL_PI object
#include "../lib/utilities/math_blocks/include/math_blocks/svgen.h"              // Include header for the SVGENDQ object
#include "../lib/utilities/math_blocks/include/math_blocks/rampgen.h"            // Include header for the RAMPGEN object
#include "../lib/utilities/math_blocks/include/math_blocks/rmp_cntl.h"           // Include header for the RMPCNTL object
#include "../lib/utilities/math_blocks/include/math_blocks/volt_calc.h"          // Include header for the PHASEVOLTAGE object
#include "../lib/utilities/math_blocks/include/math_blocks/speed_fr.h"           // Include header for the SPEED_MEAS_QEP object
#include "../lib/utilities/math_blocks/include/math_blocks/resolver.h"
#include "../lib/utilities/math_blocks/include/math_blocks/pid_grando.h"
#include "../lib/utilities/math_blocks/include/math_blocks/pid_reg3.h"
#include <math.h>

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

extern FCL_Parameters_t FCL_params;

//
// List of control GND configurations - COLD or HOT
//
#define  COLD  1           // control GND is COLD
#define  HOT   2           // control GND is HOT

//
// Following is the list of the Build Level choices.
//
#define  FCL_LEVEL1  1           // Verify SVGEN module and PWM generation
#define  FCL_LEVEL2  2           // Verify ADC, park/clarke, calibrate the
                                 // offset and speed measurement
#define  FCL_LEVEL3  3           // Verify closed current(torque) loop + its PI
#define  FCL_LEVEL4  4           // Verify speed loop and speed PID
#define  FCL_LEVEL5  5           // Verify position loop
#define  FCL_LEVEL6  6           // SFRA integration to verify bandwidth

//
// This line sets the SAMPLING FREQUENCY to one of the available choices
//
#define  SINGLE_SAMPLING    1
#define  DOUBLE_SAMPLING    2

//
// Following is the list of Current sense options
//
#define  SHUNT_CURRENT_SENSE   1
#define  LEM_CURRENT_SENSE     2
#define  SD_CURRENT_SENSE      3

//
// Following is the list of Position Encoder options
//
// Select Position Feedback Option
#define  QEP_POS_ENCODER       1
#define  RESOLVER_POS_ENCODER  2
#define  BISS_POS_ENCODER      3
#define  ENDAT_POS_ENCODER     4
#define  SINCOS_POS_ENCODER    5

//
// Here below, pick current loop controller option
//
#define  CMPLX_CNTLR     1
#define  PI_CNTLR        2

// ***************************************************************************
// ***************************************************************************
// User can select choices from available control configurations
// ***************************************************************************
// ***************************************************************************
#define  CGND                COLD
#define  BUILDLEVEL          FCL_LEVEL5
#define  SAMPLING_METHOD     SINGLE_SAMPLING   //DOUBLE_SAMPLING   //
#define  FCL_CNTLR           PI_CNTLR          //CMPLX_CNTLR       //
#define  CURRENT_SENSE       LEM_CURRENT_SENSE
#define  POSITION_ENCODER    QEP_POS_ENCODER
// ***************************************************************************

// Generate error if
#if (CURRENT_SENSE != LEM_CURRENT_SENSE)
#error  Critical: Only LEM_CURRENT_SENSE is supported in this example
#endif

#if (POSITION_ENCODER != QEP_POS_ENCODER)
#error  Critical: Only QEP_POS_ENCODER is supported in this example
#endif

#ifndef BUILDLEVEL
#error  Critical: BUILDLEVEL must be defined !!
#endif  // BUILDLEVEL
// ***************************************************************************

#define PI 3.14159265358979

// Define the system frequency (MHz)
#define SYSTEM_FREQUENCY    (DEVICE_SYSCLK_FREQ/1000000U)

// Timer definitions based on System Clock
#define     MICROSEC         SYSTEM_FREQUENCY
#define     MICROSEC_50       50 * MICROSEC     // 50 uS
#define     MICROSEC_100     100 * MICROSEC     // 0.1 mS
#define     MICROSEC_150     150 * MICROSEC     // 0.15 mS
#define     MILLISEC        1000 * MICROSEC     // 1 mS

#define     MILSEC_0_5       0.5 * MILLISEC     // 0.5 mS
#define     MILSEC_1         1.0 * MILLISEC     // 1.0 mS
#define     MILSEC_2         2.0 * MILLISEC     // 2.0 mS
#define     MILSEC_5         5.0 * MILLISEC     // 5.0 mS
#define     MILSEC_7_5       7.5 * MILLISEC     // 7.5 mS
#define     MILSEC_10         10 * MILLISEC     // 10 mS
#define     MILSEC_20         20 * MILLISEC     // 20 mS
#define     MILSEC_50         50 * MILLISEC     // 50 mS
#define     MILSEC_100       100 * MILLISEC     // 100 mS
#define     MILSEC_500       500 * MILLISEC     // 500 mS
#define     MILSEC_1000     1000 * MILLISEC     // 1000 mS

//
// PWM, SAMPLING FREQUENCY and Current Loop Band width definitions
//
#define PWM_FREQUENCY           10   // in KHz

#if (SAMPLING_METHOD == SINGLE_SAMPLING)
   #define maxModIndex             ((TPWM_CARRIER - (2*FCL_COMPUTATION_TIME))/TPWM_CARRIER)
   #define ISR_FREQUENCY           (PWM_FREQUENCY)
#elif (SAMPLING_METHOD == DOUBLE_SAMPLING)
   #define maxModIndex             ((TPWM_CARRIER - (4*FCL_COMPUTATION_TIME))/TPWM_CARRIER)
   #define ISR_FREQUENCY           (2*PWM_FREQUENCY)
#endif
#define T (0.001/ISR_FREQUENCY) // Samping period (sec), see parameter.h

// Keep PWM Period same between single sampling and double sampling
#define INV_PWM_TICKS           (((SYSTEM_FREQUENCY/2.0)/(PWM_FREQUENCY))*1000)
#define INV_PWM_DB              (200.0)
#define QEP_UNIT_TIMER_TICKS    ((SYSTEM_FREQUENCY)/(2*PWM_FREQUENCY)*1000)

#define INV_PWM_TBPRD           (INV_PWM_TICKS/2)
#define INV_PWM_HALF_TBPRD      (INV_PWM_TBPRD/2)
#define SAMPLING_FREQ           (ISR_FREQUENCY*1000)
#define CUR_LOOP_BANDWIDTH      (2.0F*PI*SAMPLING_FREQ / 18)

#define TPWM_CARRIER            (1000.0/(PWM_FREQUENCY))    //in uSec

// FCL Computation time predetermined from library
// tests on F2837xD
#define FCL_COMPUTATION_TIME    (5.00)  //in uS //original decia 1.0u. me cubro para las pruebas

//
// set the motor parameters to the one available
//

// Define the electrical motor parameters (Estun Servomotor)
#define RS      2.35                    // Stator resistance (ohm)
#define RR                              // Rotor resistance (ohm)
#define LS      0.0065                  // Stator inductance (H)
#define LR                              // Rotor inductance (H)
#define LM                              // Magnetizing inductance (H)
#define POLES   8                       // Number of poles

// Define the base quantites
#define BASE_VOLTAGE        236.14                     // Base peak phase voltage (volt), Vdc/sqrt(3)
#define BASE_SHUNT_CURRENT  9.95                       // Base peak phase current (amp), Max. measurable peak curr.
#define BASE_LEM_CURRENT    12.0                       // ----- do -----
#define BASE_TORQUE                                    // Base torque (N.m)
#define BASE_FLUX                                      // Base flux linkage (volt.sec/rad)
#define BASE_FREQ           50                        // Base electrical frequency (Hz)
#define VXS                 ((2.0*   BASE_FREQ)/POLES) // sale de que para v=1 el motor gira a ((2*BASE_FREQ)/POLES)=62.5 vuelas por seg, como x esta expresado en vueltas, listo
#define VXM                 ((2.0*60*BASE_FREQ)/POLES) // sale de que para v=1 el motor gira a ((2*BASE_FREQ)/POLES)=62.5 vuelas por seg, como x esta expresado en vueltas, listo

//
// Sigma Delta Filter Module - frame setting
//
#define  SDFM_TICKS    5
#define  OSR_RATE      (128-1)

//
// Current sensors scaling
//
// LEM    1.0pu current ==> 12.0A -> 2048 counts ==> 8A -> 1365
// SHUNT  1.0pu current ==> 9.95A -> 2048 counts ==> 8A -> 1647
#define LEM(A)     (2048*A/BASE_LEM_CURRENT)
#define SHUNT(A)   (2048*A/BASE_SHUNT_CURRENT)

// Analog scaling with ADC
#define ADC_PU_SCALE_FACTOR        0.000244140625     // 1/2^12
#define ADC_PU_PPB_SCALE_FACTOR    0.000488281250     // 1/2^11

// Analog scaling with SDFM
#define SD_PU_SCALE_FACTOR         0.000030517578125  // 1/2^15
// 100v corresponds to 0.212 filter output reading
#define SD_VOLTAGE_SENSE_SCALE     (SD_PU_SCALE_FACTOR*(100/0.212))

// ADC Related defines
#define IFB_SV          ADC_readResult(ADCARESULT_BASE, ADC_SOC_NUMBER1)
#define IFB_SW          ADC_readResult(ADCBRESULT_BASE, ADC_SOC_NUMBER1)
#define IFB_SV_PPB      ADC_readPPBResult(ADCARESULT_BASE, ADC_PPB_NUMBER2)
#define IFB_SW_PPB      ADC_readPPBResult(ADCBRESULT_BASE, ADC_PPB_NUMBER2)

#define IFB_LEMV        ADC_readResult(ADCARESULT_BASE, ADC_SOC_NUMBER0)
#define IFB_LEMW        ADC_readResult(ADCBRESULT_BASE, ADC_SOC_NUMBER0)
#define IFB_LEMV_PPB    ADC_readPPBResult(ADCARESULT_BASE, ADC_PPB_NUMBER1)
#define IFB_LEMW_PPB    ADC_readPPBResult(ADCBRESULT_BASE, ADC_PPB_NUMBER1)

// ************************************************************************
// Scaling factors to bring all current feedbacks to normal scale
//   matching with shunt based measurement
//  With shunt, 1.0pu current  == 9.945A
//       LEM,   1.0pu current  == 12A
//       SDFM,  0.8906pu current  == 12.5A
// ************************************************************************
#define  LEM_TO_SHUNT    1.206637   // (12.0/9.945)
#define  SDFM_TO_SHUNT   1.41131    // (12.5/0.8906)/9.945

// ************************************************************************
#include "sm.h"

#ifdef _FLASH
#pragma CODE_SECTION(motorControlISR,".TI.ramfunc");
#endif
#pragma INTERRUPT (motorControlISR, LPI)
__interrupt void motorControlISR(void);

typedef enum CONTROLTYPE_ENUM
{
   POS=0,
   SPEED,
   TORQUE
} controlType_enum;

enum fclEvents_enum {
    adcCalibEndEvent        = 0x0010,
    alignEndEvent           = 0x0011,
    overcurrentEvent        = 0x0012,
    overcurrentClearedEvent = 0x0013,
    stopEvent               = 0x0014,
    runEvent                = 0x0015
};
const State**        fcl                         ( void        );
void                 initFcl                     ( void        );
void                 electricalAlign             ( void        );
void                 sendRunEvent                ( void        );
void                 sendStopEvent               ( void        );
void                 sendAdcCalibEndEvent        ( void        );
void                 sendOvercurrentEvent        ( void        );
void                 sendOvercurrentClearedEvent ( void        );
void                 stopIsr                     ( void        );
void                 alignIsr                    ( void        );
void                 runIsr                      ( void        );
controlType_enum     getControlType              ( void        );
void                 setControlPos               ( void        );
void                 setControlSpeed             ( void        );
void                 setControlTorque            ( void        );
void                 setControlledTorque         ( float32_t s );
float32_t            getControlledTorque         ( void        );
void                 setControlledSpeed          ( float32_t s );
float32_t            getControlledSpeed          ( void        );

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

#endif

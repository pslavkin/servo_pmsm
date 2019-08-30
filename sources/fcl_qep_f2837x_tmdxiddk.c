#include "../lib/fcl/include/fcl_cpu_cla.h"
#include "fcl_qep_f2837x_tmdxiddk_settings.h"
#include "fcl_f2837x_enum.h"
#include "scia.h"
#include "linevoltage.h"
#include "qep_defs.h"
#include "eqep_.h"
#include "cla1.h"
#include "dac_.h"
#include "pwm.h"
#include "sm.h"
#include "sigmadelta.h"

// Instrumentation code for timing verifications{{{
#define SETGPIO18_HIGH  GPIO_writePin(18, 1);
#define SETGPIO18_LOW   GPIO_writePin(18, 0);

// ********************* Functions **************************
#ifdef _FLASH
#ifndef __cplusplus
#pragma CODE_SECTION(motorControlISR,".TI.ramfunc");
#endif
#endif

// ******** Prototype statements for Local Functions ********
#pragma INTERRUPT (motorControlISR, LPI)
__interrupt void motorControlISR(void);

// Device / peripheral config functions
void configureGPIO            ( void                                          );
void configurePIControllers   ( void                                          );

// Motor drive utility functions
float32_t refPosGen ( float32_t out                                    );
float32_t ramper    ( float32_t in, float32_t out, float32_t rampDelta );

static inline void getFCLTime(void);

// Variables for current measurement
// Offset calibration routine is run to calibrate for any offsets on the opamps
float32_t            offset_lemV      = 0;        // offset in LEM current V fbk channel @ 0A
float32_t            offset_lemW      = 0;        // offset in LEM current W fbk channel @ 0A
volatile float32_t   offset_SDFM1;                // offset in SD current V fbk channel @ 0A
volatile float32_t   offset_SDFM2;                // offset in SD current W fbk channel @ 0A
float32_t            K1               = 0.998;    // Offset filter coefficient K1: 0.05/(T+0.05);
float32_t            K2               = 0.001999; // Offset filter coefficient K2: T/(T+0.05);
uint16_t             offsetCalCounter = 0;


// Flag variables
uint32_t          isrTicker          = 0         ;
uint16_t          backTicker         = 0         ;
MotorRunStop_e    runMotor           = MOTOR_STOP;
uint16_t          ledCnt1            = 0         ;
uint16_t          speedLoopPrescaler = 10        ; // Speed loop pre scalar
uint16_t          speedLoopCount     = 1         ; // Speed loop counter
volatile uint16_t lsw2EntryFlag      = 0         ;

// Variables for Fast Current Loop
volatile  uint16_t   FCL_cycleCount       = 0;
uint16_t             fclClrCntr           = 0;
uint16_t             fclCycleCountMax     = 0;
float32_t            fclLatencyInMicroSec = 0; // PWM update latency since sampling
float32_t            maxModIndex          = 0; // max modulation index

// Variables for Field Oriented Control
float32_t T         = 0.001/ISR_FREQUENCY; // Samping period (sec), see parameter.h
float32_t VdTesting = 0.1;                 // Vd reference (pu)
float32_t VqTesting = 0.30;                // Vq reference (pu)
float32_t IdRef     = 0.0;                 // Id reference (pu)
float32_t tempIdRef = 0.0;                 // tempId reference (pu)
float32_t IqRef     = 0.0;                 // Iq reference (pu)
float32_t speedRef  = 0.0;                 // For Closed Loop tests
float32_t lsw1Speed = 0.01;                // initial force rotation speed in search of QEP index pulse

// Instance a few transform objects
IPARK  ipark1  = IPARK_DEFAULTS;

// Instance PI(D) regulators to regulate the d and q  axis currents, speed and position
PIDREG3         pid_pos = PIDREG3_DEFAULTS;// (optional - for eval)
PI_CONTROLLER   pi_pos  = PI_CONTROLLER_DEFAULTS;
PID_CONTROLLER  pid_spd = {PID_TERM_DEFAULTS, PID_PARAM_DEFAULTS, PID_DATA_DEFAULTS};

// Instance a ramp controller to smoothly ramp the frequency
RMPCNTL rc1 = RMPCNTL_DEFAULTS;

// Instance a phase voltage calculation
PHASEVOLTAGE volt1 = PHASEVOLTAGE_DEFAULTS;

// Instance a speed measurement calc
SPEED_MEAS_QEP  speed1;

// Variables for Position Sensor Suite
float32_t posEncElecTheta[6] = {0};
float32_t posEncMechTheta[6] = {0};
float32_t alignCntr          = 0;
float32_t alignCnt           = 20000;
float32_t IdRef_start        = 0.1;
float32_t IdRef_run          = 0;

// Variables for position reference generation and control
float32_t   posArray[]  = {1.5, -1.5, 2.5, -2.5};
float32_t   posCntr     = 0;
float32_t   posSlewRate = 0.001;
int16_t     posPtrMax   = 2;
int16_t     posPtr      = 0;/*}}}*/
//Function that initializes the variables for Fast current Loop library
void initFCLVars()/*{{{*/
{
#if (SAMPLING_METHOD == SINGLE_SAMPLING)
    maxModIndex           = (TPWM_CARRIER - (2*FCL_COMPUTATION_TIME))/TPWM_CARRIER;
    FCL_params.carrierMid = maxModIndex * INV_PWM_HALF_TBPRD * 0x10000L;
#elif (SAMPLING_METHOD == DOUBLE_SAMPLING)
    maxModIndex           = (TPWM_CARRIER - (4*FCL_COMPUTATION_TIME))/TPWM_CARRIER;
    FCL_params.carrierMid = INV_PWM_HALF_TBPRD * 0x10000L;
#endif
    FCL_params.adcScale  = ADC_PU_PPB_SCALE_FACTOR * LEM_TO_SHUNT;
    FCL_params.cmidsqrt3 = FCL_params.carrierMid * sqrt(3.0);
    FCL_params.tSamp     = (1.0F/SAMPLING_FREQ);
    FCL_params.Rd        = RS;
    FCL_params.Rq        = RS;
    FCL_params.Ld        = LS;
    FCL_params.Lq        = LS;
    FCL_params.BemfK     = 0.8;
    FCL_params.Ibase     = BASE_SHUNT_CURRENT; // LEM sensing is scaled to match with shunt sensing
    FCL_params.Wbase     = 2.0 * PI * BASE_FREQ;
    FCL_params.wccD      = CUR_LOOP_BANDWIDTH,
    FCL_params.wccQ      = CUR_LOOP_BANDWIDTH;
    return;
}/*}}}*/
// Get FCL timing details - time stamp taken in library after PWM update
static inline void getFCLTime(void)/*{{{*/
{
    SETGPIO18_HIGH;

    if(EPWM_getTimeBaseCounterValue(EPWM1_BASE) < FCL_cycleCount) {
        FCL_cycleCount = EPWM_getTimeBasePeriod(EPWM1_BASE) - FCL_cycleCount;
    }
    if(fclCycleCountMax < FCL_cycleCount) {
        fclCycleCountMax = FCL_cycleCount;
    }
    if(fclClrCntr) {
        fclCycleCountMax = 0;
        fclClrCntr       = 0;
    }
    fclLatencyInMicroSec = (fclCycleCountMax) * 0.01; //for 100MHz PWM clock
    SETGPIO18_LOW;
    return;
}/*}}}*/
// main()
void main(void)/*{{{*/
{
   main2();

   // Initialize FCL library
   // This function initializes the ADC PPB result bases, as well as the ADC
   // module used to sample phase W. Ensure that the final argument passed
   // corresponds to the ADC base used to sample phase W on the HW board
   FCL_initADC(ADCARESULT_BASE, ADC_PPB_NUMBER1, ADCBRESULT_BASE, ADC_PPB_NUMBER1, ADCA_BASE); 

   // ensure that the correct PWM base addresses are being passed to the
   // FCL library here. pwmHandle[0:2] should represent inverter phases
   // U/V/W in the hardware
   FCL_initPWM(EPWM1_BASE, EPWM2_BASE, EPWM3_BASE);

   // ensure the correct QEP base is being passed
   FCL_initQEP(EQEP1_BASE);

   // Initialize Fast current loop variables
   initFCLVars();

   initDac  ( );
   initQep  ( );
   initCLA1 ( );

   // PI control configuration
   // Note that the vectorial sum of d-q PI outputs should be less than 1.0 which
   // refers to maximum duty cycle for SVGEN. Another duty cycle limiting factor
   // is current sense through shunt resistors which depends on hardware/software
   // implementation. Depending on the application requirements 3,2 or a single
   // shunt resistor can be used for current waveform reconstruction. The higher
   // number of shunt resistors allow the higher duty cycle operation and better
   // dc bus utilization. The users should adjust the PI saturation levels
   // carefully during open loop tests (i.e pi_id.Umax, pi_iq.Umax and Umins) as
   // in project manuals. Violation of this procedure yields distorted  current
   // waveforms and unstable closed loop operations that may damage the inverter.
   configurePIControllers();
   FCL_resetController();

   // Initialize the RAMPGEN module
   rg1.StepAngleMax = BASE_FREQ*T;
   rg1.Angle        = 0;
   rg1.Out          = 0;
   rg1.Gain         = 1.0;
   rg1.Offset       = 1.0;

   // set mock REFERENCES for Speed and current loops
   speedRef   = 0.05;
   IdRef      = 0;
   IqRef      = 0.05;

   // Init FLAGS
   lsw        = QEP_ALIGNMENT;
   runMotor   = MOTOR_RUN;
   ledCnt1    = 0;
   fclClrCntr = 1;


   // Feedbacks OFFSET Calibration Routine
   offset_lemW  = 0;
   offset_lemV  = 0;
   offset_SDFM1 = 0;
   offset_SDFM2 = 0;

   for(offsetCalCounter=0; offsetCalCounter < 20000; ) {
      EPWM_clearEventTriggerInterruptFlag(EPWM11_BASE);
      while(EPWM_getEventTriggerInterruptStatus(EPWM11_BASE) == false)
         ;

      if(offsetCalCounter > 1000) {
         // Offsets in phase current sensing using SDFM are obtained
         // below. In the current example project, this is not used.
         // The user can use it for their projects using SDFM.
         offset_SDFM1 = K1*offset_SDFM1 + K2*(SDFM_getFilterData(SDFM1_BASE, SDFM_FILTER_1)) *SD_PU_SCALE_FACTOR;
         offset_SDFM2 = K1*offset_SDFM2 + K2*(SDFM_getFilterData(SDFM1_BASE, SDFM_FILTER_2)) *SD_PU_SCALE_FACTOR;
         offset_lemV  = K1*offset_lemV + K2*(IFB_LEMV)*ADC_PU_SCALE_FACTOR;
         offset_lemW  = K1*offset_lemW + K2*(IFB_LEMW)*ADC_PU_SCALE_FACTOR;
      }
      offsetCalCounter++;
   }

   // Read and update DC BUS voltage for FCL to use
   FCL_params.Vdcbus = getVdc();

   // Init OFFSET regs with identified values
   // setting LEM Iv offset
   ADC_setPPBReferenceOffset(ADCA_BASE, ADC_PPB_NUMBER1, (uint16_t)(offset_lemV*4096.0));
   // setting LEM Iw offset
   ADC_setPPBReferenceOffset(ADCB_BASE, ADC_PPB_NUMBER1, (uint16_t)(offset_lemW*4096.0));

   // Enable all mapped INTerrupts

   EPWM_clearEventTriggerInterruptFlag ( EPWM1_BASE ); // clear pending INT event
   Interrupt_enable                    ( INT_EPWM1  ); // Enable PWM1INT in PIE group 3

   // Enable group 3 interrupts - EPWM1 is here
   Interrupt_enableInCPU(INTERRUPT_CPU_INT3);

   EINT;          // Enable Global interrupt INTM
   ERTM;          // Enable Global realtime interrupt DBGM

   for(;;) {
      State_Machine();
   }
}/*}}}*/
// build level 5
static void buildLevel5(void)/*{{{*/
{
#if  (FCL_CNTLR ==  PI_CNTLR)
   FCL_runPICtrl();
#endif

#if (FCL_CNTLR ==  CMPLX_CNTLR)
   FCL_runComplexCtrl();
#endif

   //    FCL_cycleCount calculations for debug
   //    customer can remove the below code in final implementation
   getFCLTime();

   //  Measure DC Bus voltage using SDFM Filter3
   FCL_params.Vdcbus = getVdc();

   // Fast current loop controller wrapper
#if  (FCL_CNTLR ==  PI_CNTLR)
   FCL_runPICtrlWrap();
#endif

#if (FCL_CNTLR ==  CMPLX_CNTLR)
   FCL_runComplexCtrlWrap();
#endif

   // -----------------------------------------------------------------------------
   //  Alignment Routine: this routine aligns the motor to zero electrical angle
   //  and in case of QEP also finds the index location and initializes the angle
   //  w.r.t. the index location
   // -----------------------------------------------------------------------------
   if(runMotor == MOTOR_STOP)
   {
      lsw           = QEP_ALIGNMENT;
      lsw2EntryFlag = 0;
      alignCntr     = 0;
      posCntr       = 0;
      posPtr        = 0;
      IdRef         = 0;
      pi_id.ref     = IdRef;
      FCL_resetController();
   }
   else if(lsw == QEP_ALIGNMENT)
   {
      // alignment curretnt
      IdRef = IdRef_start;  //(0.1);

      // for restarting from (runMotor = STOP)
      rc1.TargetValue   = 0;
      rc1.SetpointValue = 0;

      // set up an alignment and hold time for shaft to settle down
      if(pi_id.ref >= IdRef)
      {
         if(++alignCntr >= alignCnt)
         {
            alignCntr  = 0;
            //              IdRef = IdRef_run;
#if POSITION_ENCODER==QEP_POS_ENCODER
            // for QEP, spin the motor to find the index pulse
            lsw = QEP_WAIT_FOR_INDEX;
#else
            // for absolute encoders no need for lsw = QEP_WAIT_FOR_INDEX
            lsw = QEP_GOT_INDEX;
#endif
         }
      }
   } // end else if(lsw == QEP_ALIGNMENT)
   else 
      if(lsw == QEP_GOT_INDEX) {
         IdRef = IdRef_run;
      }

   //  Connect inputs of the RAMP GEN module and call the ramp generator module
   rg1.Freq = speedRef*0.1;
   fclRampGen((RAMPGEN *)&rg1);

   //    Connect inputs of the SPEED_FR module and call the speed calculation module
   posEncElecTheta[QEP_POS_ENCODER] = qep1ElecTheta();
   posEncMechTheta[QEP_POS_ENCODER] = qep1MechTheta();
   speed1.ElecTheta = posEncElecTheta[POSITION_ENCODER];
   runSpeedFR(&speed1);

   //    Connect inputs of the PID module and call the PID speed controller module
   if(++speedLoopCount >= speedLoopPrescaler) {
      if(lsw == QEP_GOT_INDEX) {
         if(!lsw2EntryFlag) {
            lsw2EntryFlag   = 1;
            rc1.TargetValue = posEncMechTheta[POSITION_ENCODER];
            pi_pos.Fbk      = rc1.TargetValue;
            pi_pos.Ref      = pi_pos.Fbk;
         }
         else {
            // ========== reference position setting =========
            // choose between 1 of 2 position commands
            // The user can choose between a position reference table
            // used within refPosGen() or feed it in from rg1.Out
            // Position command read from a table
            rc1.TargetValue = refPosGen(rc1.TargetValue);
            // Position command generated as integral of speedRef
            //              rc1.TargetValue = rg1.Out;
            rc1.SetpointValue = rc1.TargetValue - (float32_t)((int32_t)rc1.TargetValue);

            // Rolling in angle within 0 to 1pu
            if(rc1.SetpointValue < 0) {
               rc1.SetpointValue += 1.0;
            }
            pi_pos.Ref = rc1.SetpointValue;
            pi_pos.Fbk = posEncMechTheta[POSITION_ENCODER];
         }
         runPIPos(&pi_pos);

         // speed PI regulator
         pid_spd.term.Ref = pi_pos.Out;
         pid_spd.term.Fbk = speed1.Speed;
         runPID(&pid_spd);
      }
      speedLoopCount=0;
   }

   if(lsw == QEP_ALIGNMENT) {
      rc1.SetpointValue = 0;// position = 0 deg
      pid_spd.data.d1   = 0;
      pid_spd.data.d2   = 0;
      pid_spd.data.i1   = 0;
      pid_spd.data.ud   = 0;
      pid_spd.data.ui   = 0;
      pid_spd.data.up   = 0;
      pi_pos.ui         = 0;
      pi_pos.i1         = 0;
      rg1.Out           = 0;
      lsw2EntryFlag     = 0;
   }

   //  Setup iqref for FCL
   pi_iq.ref = (lsw == QEP_ALIGNMENT) ? 0 :
      (lsw == QEP_WAIT_FOR_INDEX) ? IqRef : pid_spd.term.Out;

   //  Setup idref for FCL
   pi_id.ref = ramper(IdRef, pi_id.ref, 0.00001);

   updateDac();
   return;
}/*}}}*/
// Motor Control ISR
__interrupt void motorControlISR(void)/*{{{*/
{
    buildLevel5();

    EPWM_clearEventTriggerInterruptFlag(EPWM1_BASE);

    // clear ADCINT1 INT and ack PIE INT
    ADC_clearInterruptStatus(ADCA_BASE, ADC_INT_NUMBER1);

    // ACK PIE for CLA INT GROUP
    // FCL is not clearing the ACK bit for CLA group
    // because the example might have other CLA Tasks

    // ACK the PWM, ADC and CLA interrupts
    Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP3 | INTERRUPT_ACK_GROUP11);

    isrTicker++;

} // motorControlISR Ends Here}}}
// GPIO Configuration
void configureGPIO(void)/*{{{*/
{

    //
    // GPIO18 is used as PushPull output to indicate the end of computation when
    // compared against the SOC signal
    GPIO_setMasterCore    ( 18, GPIO_CORE_CPU1    );
    GPIO_setPinConfig     ( GPIO_18_GPIO18        );
    GPIO_setPadConfig     ( 18, GPIO_PIN_TYPE_STD );
    GPIO_setDirectionMode ( 18, GPIO_DIR_MODE_OUT );

    return;
}/*}}}*/
// slew programmable ramper
float32_t ramper(float32_t in, float32_t out, float32_t rampDelta)/*{{{*/
{
    float32_t err;

    err = in - out;

    if(err > rampDelta) {
        return(out + rampDelta);
    }
    else if(err < -rampDelta) {
        return(out - rampDelta);
    }
    else {
        return(in);
    }
}/*}}}*/
// Reference Position Generator for position loop
float32_t refPosGen(float32_t out)/*{{{*/
{
    float32_t in = posArray[posPtr];

    out = ramper(in, out, posSlewRate);

    if(in == out) {
        if(++posCntr > 1000) {
            posCntr = 0;
            if(++posPtr >= posPtrMax) {
                posPtr = 0;
            }
        }
    }
    return(out);
}/*}}}*/
// PI Controller Configuration
void configurePIControllers(void)/*{{{*/
{
    // Initialize the PI module for position
    pi_pos.Kp   = 1.0;   // 10.0;
    pi_pos.Ki   = 0.001; // T*speedLoopPrescaler/0.3;
    pi_pos.Umax = 1.0;
    pi_pos.Umin = -1.0;

    // Initialize the PID module for position (alternative option for eval)
    pid_pos.Ref       = 0;
    pid_pos.Fdb       = 0;
    pid_pos.OutMin    = -0.5;
    pid_pos.OutMax    = 0.5;
    pid_pos.Out       = 0;

    pid_pos.Kp        = 1.0;
    pid_pos.Ki        = 0;
    pid_pos.Kd        = 0;
    pid_pos.Kc        = 0.9;

    pid_pos.Up1       = 0;
    pid_pos.Up        = 0;
    pid_pos.Ui        = 0;
    pid_pos.Ud        = 0;
    pid_pos.SatErr    = 0;
    pid_pos.OutPreSat = 0;

    // Initialize the PID module for speed
    pid_spd.param.Kp   = 1.0;
    pid_spd.param.Ki   = 0.001;
    pid_spd.param.Kd   = 0.0;
    pid_spd.param.Kr   = 1.0;
    pid_spd.param.Umax = 0.95;
    pid_spd.param.Umin = -0.95;

    // Init PI module for ID loop
    pi_id.Kp      = 1.0;//LS * CUR_LOOP_BW;
    pi_id.Ki      = T/0.04;   //(RS * T) * CUR_LOOP_BW;
    pi_id.Kerr    = (pi_id.Ki*0.5) + pi_id.Kp,
    pi_id.KerrOld = (pi_id.Ki*0.5) - pi_id.Kp;
    pi_id.Umax    = 0.5 * maxModIndex;
    pi_id.Umin    = -0.5 * maxModIndex;
    pi_id.ref     = 0;
    pi_id.err     = 0;
    pi_id.out     = 0;

    // Init PI module for IQ loop
    pi_iq.Kp      = pi_id.Kp;
    pi_iq.Ki      = pi_id.Ki;
    pi_iq.Kerr    = (pi_iq.Ki*0.5) + pi_iq.Kp,
    pi_iq.KerrOld = (pi_iq.Ki*0.5) - pi_iq.Kp;
    pi_iq.Umax    = 0.8 * maxModIndex;
    pi_iq.Umin    = -0.8 * maxModIndex;
    pi_iq.ref     = 0;
    pi_iq.err     = 0;
    pi_iq.out     = 0;
}/*}}}*/

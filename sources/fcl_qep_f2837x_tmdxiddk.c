#include "../lib/fcl/include/fcl_cpu_cla.h"
#include "fcl_qep_f2837x_tmdxiddk_settings.h"
#include "fcl_f2837x_enum.h"
#include "scia.h"
#include "linevoltage.h"

// Instrumentation code for timing verifications{{{
#define SETGPIO18_HIGH  GPIO_writePin(18, 1);
#define SETGPIO18_LOW   GPIO_writePin(18, 0);

// display variable A (in pu) on DAC
#define  DAC_MACRO_PU(A)  ((1.0 + A)*2048)

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
void configureADC             ( void                                          );
void configureCMPSS           ( uint32_t base, int16_t Hi, int16_t Lo         );
void configureCMPSSFilter     ( uint32_t base, uint16_t curHi, uint16_t curLo );
void configureDAC             ( void                                          );
void configureGPIO            ( void                                          );
void configurePIControllers   ( void                                          );
void configurePositionSensing ( void                                          );
void configurePWM             ( void                                          );
void configurePWM_1chUpCnt    ( uint32_t base, uint16_t period                );
void configurePWM_1chUpDwnCnt ( uint32_t base, uint16_t period, int16_t db    );
void configureSDFM            ( void                                          );

// Motor drive utility functions
float32_t refPosGen ( float32_t out                                    );
float32_t ramper    ( float32_t in, float32_t out, float32_t rampDelta );

static inline void getFCLTime(void);

// Variables for CPU control
uint32_t adcHandle[4] = {ADCA_BASE, ADCB_BASE, ADCC_BASE, ADCD_BASE };

// EPWM1 - Phase U
// EPWM2 - Phase V
// EPWM3 - Phase W
uint32_t pwmHandle[3]     = {EPWM1_BASE, EPWM2_BASE, EPWM3_BASE };
uint32_t dacHandle[3]     = {DACA_BASE, DACB_BASE, DACC_BASE };

uint16_t vTimer0[4]       = {0}; // Virtual Timers slaved off CPU Timer 0 (A events)
uint16_t vTimer1[4]       = {0}; // Virtual Timers slaved off CPU Timer 1 (B events)
uint16_t vTimer2[4]       = {0}; // Virtual Timers slaved off CPU Timer 2 (C events)
uint16_t serialCommsTimer = 0;

// Variables for current measurement
// Offset calibration routine is run to calibrate for any offsets on the opamps
float32_t            offset_lemV      = 0;        // offset in LEM current V fbk channel @ 0A
float32_t            offset_lemW      = 0;        // offset in LEM current W fbk channel @ 0A
volatile float32_t   offset_SDFM1;                // offset in SD current V fbk channel @ 0A
volatile float32_t   offset_SDFM2;                // offset in SD current W fbk channel @ 0A
float32_t            K1               = 0.998;    // Offset filter coefficient K1: 0.05/(T+0.05);
float32_t            K2               = 0.001999; // Offset filter coefficient K2: T/(T+0.05);
uint16_t             offsetCalCounter = 0;

//SD Trip Level - scope for additional work
uint16_t   hlt       = 0x7FFF;
uint16_t   llt       = 0x0;

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
// setup CPU Timer
void setupCpuTimer(uint32_t base, uint32_t periodCount)/*{{{*/
{
    CPUTimer_setPreScaler       ( CPUTIMER0_BASE, 0                                   ); // divide by 1 (SYSCLKOUT)
    CPUTimer_setPeriod          ( base, periodCount                                   );
    CPUTimer_stopTimer          ( base                                                ); // Stop timer / reload / restart
    CPUTimer_setEmulationMode   ( base, CPUTIMER_EMULATIONMODE_STOPAFTERNEXTDECREMENT );
    CPUTimer_reloadTimerCounter ( base                                                ); // Reload counter with period value
    CPUTimer_resumeTimer        ( base                                                );
    return;
}/*}}}*/
// main()
void main(void)/*{{{*/
{
   main2();

   // GPIO Configuration
   configureGPIO();

//   // GPIO11 routes out ADC SOCA, which can be used for timing measurements
//   // enable ADCSOCAEN in Sync SOC Regs, this will be linked to
//   // OUTPUT7 of the OutputXBar and OUTPUT7 is coming out on
//   // GPIO11, GPIO Peripheral mux 3
//   SysCtl_enableExtADCSOCSource(SYSCTL_ADCSOC_SRC_PWM1SOCA);
//
//   //select Output XBAR, OUTPUT7 MUX13 for ADCSOCAO
//   XBAR_setOutputMuxConfig ( XBAR_OUTPUT7, XBAR_OUT_MUX13_ADCSOCA );
//   XBAR_enableOutputMux    ( XBAR_OUTPUT7, XBAR_MUX13             );
//
//   // OUTPUT7 of the OutputXBar and OUTPUT7 is coming out on GPIO11
//   GPIO_setPinConfig(GPIO_11_OUTPUTXBAR7);

   // PWM Configuration
   configurePWM();

   // SDFM configuration
   configureSDFM();

   // ADC Configuration
   configureADC();

   // Initialize FCL library
   // This function initializes the ADC PPB result bases, as well as the ADC
   // module used to sample phase W. Ensure that the final argument passed
   // corresponds to the ADC base used to sample phase W on the HW board
   FCL_initADC(ADCARESULT_BASE, ADC_PPB_NUMBER1, ADCBRESULT_BASE, ADC_PPB_NUMBER1, ADCA_BASE); 
   //
   // ensure that the correct PWM base addresses are being passed to the
   // FCL library here. pwmHandle[0:2] should represent inverter phases
   // U/V/W in the hardware
   //
   FCL_initPWM(EPWM1_BASE, EPWM2_BASE, EPWM3_BASE);

   // ensure the correct QEP base is being passed
   FCL_initQEP(EQEP1_BASE);

   // Initialize Fast current loop variables
   initFCLVars();

   // Setting up link from EPWM to ADC
   //    - EPWM1 - Inverter currents at sampling frequency (@ PRD or @ (PRD&ZRO) )
#if (SAMPLING_METHOD == SINGLE_SAMPLING)
   // Select SOC from counter at ctr = prd
   EPWM_setADCTriggerSource(EPWM1_BASE, EPWM_SOC_A, EPWM_SOC_TBCTR_PERIOD);
#elif (SAMPLING_METHOD == DOUBLE_SAMPLING)
   // Select SOC from counter at ctr = 0 or ctr = prd
   EPWM_setADCTriggerSource(EPWM1_BASE, EPWM_SOC_A,
         EPWM_SOC_TBCTR_ZERO_OR_PERIOD);
#endif
   // Generate pulse on 1st event
   EPWM_setADCTriggerEventPrescale(EPWM1_BASE, EPWM_SOC_A, 1);

   // Enable SOC on A group
   EPWM_enableADCTrigger(EPWM1_BASE, EPWM_SOC_A);

   // DAC Configuration
   configureDAC();

   // Position sensor configuration
   configurePositionSensing();

//   // Call HVDMC Protection function
//   configureHVDMCProtection();

//   // Initialize CLA module
//   // make sure QEP access is given to CLA as Secondary master
//   SysCtl_selectSecMaster(SYSCTL_SEC_MASTER_CLA, SYSCTL_SEC_MASTER_CLA);
//
//   // initialize CLA, QEP for FCL library
//   configureCLA();
//
//   // Enable EPWM1 INT trigger for CLA TASK1
//   CLA_setTriggerSource(CLA_TASK_1, CLA_TRIGGER_EPWM1INT);
    initCLA1();

   // Enable UTO on QEP
   EQEP_enableInterrupt(EQEP1_BASE, EQEP_INT_UNIT_TIME_OUT);

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

   // Configure INTerrupts

   // Enable EPWM11 INT to reset SDFM in sync with control PWMs
   // Select INT @ ctr = CMPA up
   EPWM_setInterruptSource             ( EPWM11_BASE, EPWM_INT_TBCTR_U_CMPA );
   // Enable INT
   EPWM_enableInterrupt                ( EPWM11_BASE                        );
   // Generate INT on every event
   EPWM_setInterruptEventCount         ( EPWM11_BASE, 1                     );
   EPWM_clearEventTriggerInterruptFlag ( EPWM11_BASE                        );

   // Enable EPWM1 INT to generate MotorControlISR
#if (SAMPLING_METHOD == SINGLE_SAMPLING)
   // Select INT @ ctr = 0
   EPWM_setInterruptSource(EPWM1_BASE, EPWM_INT_TBCTR_PERIOD);
#elif (SAMPLING_METHOD == DOUBLE_SAMPLING)
   // Select INT @ ctr = 0 or ctr = prd
   EPWM_setInterruptSource(EPWM1_BASE, EPWM_INT_TBCTR_ZERO_OR_PERIOD);
#endif
   // Enable Interrupt Generation from the PWM module
   EPWM_enableInterrupt                ( EPWM1_BASE                  );
   // This needs to be 1 for the INTFRC to work
   EPWM_setInterruptEventCount         ( EPWM1_BASE, 1               );
   // Clear ePWM Interrupt flag
   EPWM_clearEventTriggerInterruptFlag ( EPWM1_BASE                  );
   Interrupt_register                  ( INT_EPWM1, &motorControlISR );

   // Enable AdcA-ADCINT1- to help verify EoC before result data read
   ADC_setInterruptSource   ( ADCA_BASE, ADC_INT_NUMBER1, ADC_SOC_NUMBER0 );
   ADC_enableContinuousMode ( ADCA_BASE, ADC_INT_NUMBER1                  );
   ADC_enableInterrupt      ( ADCA_BASE, ADC_INT_NUMBER1                  );

   // PWM Clocks Enable
   SysCtl_enablePeripheral ( SYSCTL_PERIPH_CLK_TBCLKSYNC );
   EQEP_enableModule       ( EQEP1_BASE                  );

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
   posEncElecTheta[QEP_POS_ENCODER] = qep1.ElecTheta;
   posEncMechTheta[QEP_POS_ENCODER] = qep1.MechTheta;
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

   // Variable display on DACs B and C
   DAC_setShadowValue(DACB_BASE, DAC_MACRO_PU(pi_pos.Ref));
   DAC_setShadowValue(DACC_BASE, DAC_MACRO_PU(pi_pos.Fbk));
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
// Configure ADC
void configureADC()/*{{{*/
{
    // Analog signals that are sampled
    // LEM V   ADC A2/C+
    // LEM W   ADC B2/C+
    // Vfb-U   ADC C3
    // Vfb-V   ADC A3
    // Vfb-W   ADC B3
    // Vfb-Bus ADC B0

    // Analog Signals brought in but not sampled
    // SC-A2   ADC C0/C+
    // SC-B2   ADC D0/C+
    // SC-R    ADC D2/C+
    // R_SIN   ADC D1
    // R_COS   ADC C1
    // Ifb-SU  ADC C2/C+ (& A5 not used)
    // Ifb-SV  ADC A4/C+
    // Ifb-SW  ADC B4/C+

    // Configure the SOC0 on ADC a-d

    uint16_t base;

    for(base = 0; base < 3; base++) {
        // Set 12-bit single ended conversion mode
        ADC_setMode(adcHandle[base], ADC_RESOLUTION_12BIT, ADC_MODE_SINGLE_ENDED);

        // Set main clock scaling factor (100MHz max clock for the ADC module)
        ADC_setPrescaler(adcHandle[base], ADC_CLK_DIV_4_0);

        // set the ADC interrupt pulse generation to end of conversion
        ADC_setInterruptPulseMode(adcHandle[base], ADC_PULSE_END_OF_CONV);

        // enable the ADC
        ADC_enableConverter(adcHandle[base]);

        // set priority of SOCs
        ADC_setSOCPriority(adcHandle[base], ADC_PRI_ALL_HIPRI);
    }

    // delay to allow ADCs to power up
    DEVICE_DELAY_US(1500U);

    // ********************************
    // LEM motor current LEM-V @ at A2
    // ********************************
    // SOC0 will convert pin A2, sample window in SYSCLK cycles,
    // trigger on ePWM1 SOCA/C
    ADC_setupSOC(ADCA_BASE, ADC_SOC_NUMBER0, ADC_TRIGGER_EPWM1_SOCA, ADC_CH_ADCIN2, 25);

    // Configure the post processing block (PPB) to eliminate subtraction
    // related calculation
    // PPB is associated with SOC0
    ADC_setupPPB(ADCA_BASE, ADC_PPB_NUMBER1, ADC_SOC_NUMBER0);
    // Write zero to this for now till offset ISR is run
    ADC_setPPBCalibrationOffset(ADCA_BASE, ADC_PPB_NUMBER1, 0);

    // ********************************
    // LEM motor current LEM-W @ at B2
    // ********************************
    // SOC0 will convert pin B2, sample window in SYSCLK cycles,
    // trigger on ePWM1 SOCA/C
    ADC_setupSOC(ADCB_BASE, ADC_SOC_NUMBER0, ADC_TRIGGER_EPWM1_SOCA, ADC_CH_ADCIN2, 25);

    // Configure PPB to eliminate subtraction related calculation
    // PPB is associated with SOC0
    ADC_setupPPB(ADCB_BASE, ADC_PPB_NUMBER1, ADC_SOC_NUMBER0);

    // Write zero to this for now till offset ISR is run
    ADC_setPPBCalibrationOffset(ADCB_BASE, ADC_PPB_NUMBER1, 0);

    return;
}/*}}}*/
// DAC Configuration
void configureDAC(void)/*{{{*/
{
    // DAC-A  ---> Resolver carrier excitation
    // DAC-B  ---> General purpose display
    // DAC-C  ---> General purpose display

    uint16_t base;

    for(base = 0; base < 3; base++) {
        // Set DAC voltage reference to VRefHi
        DAC_setReferenceVoltage(dacHandle[base], DAC_REF_ADC_VREFHI);

        // Set DAC shadow value register
        DAC_setShadowValue(dacHandle[base], 1024);

        //Enable DAC output
        DAC_enableOutput(dacHandle[base]);
    }

    // Resolver carrier excitation signal additional initialization

    // enable value change only on sync signal
    DAC_setLoadMode(DACA_BASE, DAC_LOAD_PWMSYNC);

    // sync sel 5 means sync from pwm 6
    DAC_setPWMSyncSignal(DACA_BASE, 5);

    return;
}/*}}}*/
// GPIO Configuration
void configureGPIO(void)/*{{{*/
{
    uint16_t pin;

    // main inverter PWM GPIO init
    // PWM1 - U
    // PWM2 - V
    // PWM3 - W
    //
    GPIO_setMasterCore ( 0, GPIO_CORE_CPU1    );
    GPIO_setPinConfig  ( GPIO_0_EPWM1A        );
    GPIO_setPadConfig  ( 0, GPIO_PIN_TYPE_STD );

    // EPWM1B->UL
    GPIO_setMasterCore ( 1, GPIO_CORE_CPU1    );
    GPIO_setPinConfig  ( GPIO_1_EPWM1B        );
    GPIO_setPadConfig  ( 1, GPIO_PIN_TYPE_STD );

    // EPWM2A->VH
    GPIO_setMasterCore ( 2, GPIO_CORE_CPU1    );
    GPIO_setPinConfig  ( GPIO_2_EPWM2A        );
    GPIO_setPadConfig  ( 2, GPIO_PIN_TYPE_STD );

    // EPWM2B->VL
    GPIO_setMasterCore ( 3, GPIO_CORE_CPU1    );
    GPIO_setPinConfig  ( GPIO_3_EPWM2B        );
    GPIO_setPadConfig  ( 3, GPIO_PIN_TYPE_STD );

    // EPWM3A->WH
    GPIO_setMasterCore ( 4, GPIO_CORE_CPU1    );
    GPIO_setPinConfig  ( GPIO_4_EPWM3A        );
    GPIO_setPadConfig  ( 4, GPIO_PIN_TYPE_STD );

    // EPWM3B->WL
    GPIO_setMasterCore ( 5, GPIO_CORE_CPU1    );
    GPIO_setPinConfig  ( GPIO_5_EPWM3B        );
    GPIO_setPadConfig  ( 5, GPIO_PIN_TYPE_STD );

    //
    // Configure GPIO8 as ePWM5A for SD1, Ch1/2 clock
    // Configure GPIO9 as ePWM5B for SD1, Ch3 clock
    //
    GPIO_setPadConfig ( 8, GPIO_PIN_TYPE_STD );
    GPIO_setPinConfig ( GPIO_8_EPWM5A        );
    GPIO_setPadConfig ( 9, GPIO_PIN_TYPE_STD );
    GPIO_setPinConfig ( GPIO_9_EPWM5B        );

    //
    // GPIO18 is used as PushPull output to indicate the end of computation when
    // compared against the SOC signal
    GPIO_setMasterCore    ( 18, GPIO_CORE_CPU1    );
    GPIO_setPinConfig     ( GPIO_18_GPIO18        );
    GPIO_setPadConfig     ( 18, GPIO_PIN_TYPE_STD );
    GPIO_setDirectionMode ( 18, GPIO_DIR_MODE_OUT );

    // Setup GPIO for QEP operation
    //
    // QEP1A
    GPIO_setMasterCore        ( 20, GPIO_CORE_CPU1    );
    GPIO_setPadConfig         ( 20, GPIO_PIN_TYPE_STD );
    GPIO_setDirectionMode     ( 20, GPIO_DIR_MODE_IN  );
    GPIO_setQualificationMode ( 20, GPIO_QUAL_3SAMPLE );
    GPIO_setPinConfig         ( GPIO_20_EQEP1A        );

    // QEP1B
    GPIO_setMasterCore        ( 21, GPIO_CORE_CPU1    );
    GPIO_setPadConfig         ( 21, GPIO_PIN_TYPE_STD );
    GPIO_setDirectionMode     ( 21, GPIO_DIR_MODE_IN  );
    GPIO_setQualificationMode ( 21, GPIO_QUAL_3SAMPLE );
    GPIO_setPinConfig         ( GPIO_21_EQEP1B        );

    // QEP1I
    GPIO_setMasterCore        ( 23, GPIO_CORE_CPU1    );
    GPIO_setPadConfig         ( 23, GPIO_PIN_TYPE_STD );
    GPIO_setDirectionMode     ( 23, GPIO_DIR_MODE_IN  );
    GPIO_setQualificationMode ( 23, GPIO_QUAL_3SAMPLE );
    GPIO_setPinConfig         ( GPIO_23_EQEP1I        );

    // SDFM GPIO configurations
    for(pin = 48; pin <= 53; pin++)
    {
        GPIO_setMasterCore        ( pin, GPIO_CORE_CPU1    );
        GPIO_setDirectionMode     ( pin, GPIO_DIR_MODE_IN  );
        GPIO_setPadConfig         ( pin, GPIO_PIN_TYPE_STD );
        GPIO_setQualificationMode ( pin, GPIO_QUAL_ASYNC   );
    }

    // SD1 Ch1 - Ishunt - V
    GPIO_setPinConfig(GPIO_48_SD1_D1);
    GPIO_setPinConfig(GPIO_49_SD1_C1);
    // SD1 Ch2 - Ishunt - W
    GPIO_setPinConfig(GPIO_50_SD1_D2);
    GPIO_setPinConfig(GPIO_51_SD1_C2);
    // SD1 Ch3 - DC Bus
    GPIO_setPinConfig(GPIO_52_SD1_D3);
    GPIO_setPinConfig(GPIO_53_SD1_C3);

    return;
}/*}}}*/
// Position Sensing Configuration
void configurePositionSensing(void)/*{{{*/
{
    // Init QEP parameters
    qep1.LineEncoder     = 2500;// these are the number of slots in the encoder
    qep1.MechScaler      = 0.25/qep1.LineEncoder;
    qep1.PolePairs       = POLES/2;
    qep1.CalibratedAngle = 0;

    // Configure the decoder for quadrature count mode, counting both
    // rising and falling edges (that is, 2x resolution)
    EQEP_setDecoderConfig ( EQEP1_BASE, (EQEP_CONFIG_2X_RESOLUTION | EQEP_CONFIG_QUADRATURE | EQEP_CONFIG_NO_SWAP ));
    EQEP_setEmulationMode ( EQEP1_BASE, EQEP_EMULATIONMODE_RUNFREE                                                ) ;

    // Configure the position counter to be latched on a unit time out
    // and latch on rising edge of index pulse
    EQEP_setLatchMode(EQEP1_BASE, (EQEP_LATCH_RISING_INDEX | EQEP_LATCH_UNIT_TIME_OUT));

    // Configure the position counter to reset on a maximum position
    EQEP_setPositionCounterConfig(EQEP1_BASE, EQEP_POSITION_RESET_MAX_POS, (4 * qep1.LineEncoder) - 1);

    // Disables the eQEP module position-compare unit
    EQEP_disableCompare(EQEP1_BASE);

    // Enable the unit timer, setting the frequency to 10KHz
    EQEP_enableUnitTimer(EQEP1_BASE, QEP_UNIT_TIMER_TICKS - 1);

    // Configure and enable the edge-capture unit. The capture clock divider is
    // SYSCLKOUT/128. The unit-position event divider is QCLK/32.
    EQEP_setCaptureConfig(EQEP1_BASE, EQEP_CAPTURE_CLK_DIV_128, EQEP_UNIT_POS_EVNT_DIV_32);

    // Enable QEP edge-capture unit
    EQEP_enableCapture(EQEP1_BASE);

    // Initialize the Speed module for speed calculation from QEP/RESOLVER
    speed1.K1      = 1/(BASE_FREQ*T);
    speed1.K2      = 1/(1+2*PI*T*5);      // Low-pass cut-off frequency
    speed1.K3      = 1-speed1.K2;
    speed1.BaseRpm = 120*(BASE_FREQ/POLES);

    return;
}/*}}}*/
// PWM Configuration
void configurePWM(void)/*{{{*/
{
    uint16_t base;

    SysCtl_disablePeripheral(SYSCTL_PERIPH_CLK_TBCLKSYNC);

    // *****************************************
    // Inverter PWM configuration - PWM 1, 2, 3
    // *****************************************
    for(base = 0; base < 3; base++) {
        // Time Base SubModule Registers
        // set Immediate load
        EPWM_setPeriodLoadMode      ( pwmHandle[base], EPWM_PERIOD_DIRECT_LOAD                      );
        EPWM_setTimeBasePeriod      ( pwmHandle[base], INV_PWM_TICKS / 2                            );
        EPWM_setPhaseShift          ( pwmHandle[base], 0                                            );
        EPWM_setTimeBaseCounter     ( pwmHandle[base], 0                                            );
        EPWM_setTimeBaseCounterMode ( pwmHandle[base], EPWM_COUNTER_MODE_UP_DOWN                    );
        EPWM_setClockPrescaler      ( pwmHandle[base], EPWM_CLOCK_DIVIDER_1, EPWM_HSCLOCK_DIVIDER_1 );

        EPWM_disablePhaseShiftLoad ( pwmHandle[base]                                      );

        // sync "down-stream"
        EPWM_setSyncOutPulseMode   ( pwmHandle[base], EPWM_SYNC_OUT_PULSE_ON_COUNTER_ZERO );

        // Counter Compare Submodule Registers
        // set duty 0% initially
        EPWM_setCounterCompareValue          ( pwmHandle[base], EPWM_COUNTER_COMPARE_A, 0                           );
        EPWM_setCounterCompareShadowLoadMode ( pwmHandle[base], EPWM_COUNTER_COMPARE_A, EPWM_COMP_LOAD_ON_CNTR_ZERO );

        // Action Qualifier SubModule Registers
        EPWM_setActionQualifierActionComplete(pwmHandle[base], EPWM_AQ_OUTPUT_A, (EPWM_ActionQualifierEventAction)(EPWM_AQ_OUTPUT_LOW_UP_CMPA | EPWM_AQ_OUTPUT_HIGH_DOWN_CMPA));

        // Active high complementary PWMs - Set up the deadband
        EPWM_setRisingEdgeDeadBandDelayInput  ( pwmHandle[base], EPWM_DB_INPUT_EPWMA );
        EPWM_setFallingEdgeDeadBandDelayInput ( pwmHandle[base], EPWM_DB_INPUT_EPWMA );

        EPWM_setDeadBandDelayMode     ( pwmHandle[base], EPWM_DB_RED, true                         );
        EPWM_setDeadBandDelayMode     ( pwmHandle[base], EPWM_DB_FED, true                         );
        EPWM_setDeadBandDelayPolarity ( pwmHandle[base], EPWM_DB_RED, EPWM_DB_POLARITY_ACTIVE_HIGH );
        EPWM_setDeadBandDelayPolarity ( pwmHandle[base], EPWM_DB_FED, EPWM_DB_POLARITY_ACTIVE_LOW  );
        EPWM_setRisingEdgeDelayCount  ( pwmHandle[base], 200                                       );
        EPWM_setFallingEdgeDelayCount ( pwmHandle[base], 200                                       );
    }

    // configure 2 and 3 as slaves
    EPWM_setSyncOutPulseMode   ( EPWM2_BASE, EPWM_SYNC_OUT_PULSE_ON_EPWMxSYNCIN );
    EPWM_enablePhaseShiftLoad  ( EPWM2_BASE                                     );
    EPWM_setPhaseShift         ( EPWM2_BASE, 2                                  );
    EPWM_setCountModeAfterSync ( EPWM2_BASE, EPWM_COUNT_MODE_UP_AFTER_SYNC      );

    EPWM_setSyncOutPulseMode   ( EPWM3_BASE, EPWM_SYNC_OUT_PULSE_ON_EPWMxSYNCIN );
    EPWM_enablePhaseShiftLoad  ( EPWM3_BASE                                     );
    EPWM_setPhaseShift         ( EPWM3_BASE, 2                                  );
    EPWM_setCountModeAfterSync ( EPWM3_BASE, EPWM_COUNT_MODE_UP_AFTER_SYNC      );

    // **********************************************
    // Sigma Delta clock set up - pwm5
    // **********************************************
    // Configure PWM5A for SD Clock i.e. 20Mhz
    // 20 Mhz => 50ns => 50ns/10
    // PWM5B - clock SDFM for DCBUS voltage sensing
    // PWM5A - clock SDFM for Phase current sensing (not used)
    // set Immediate load
    EPWM_setPeriodLoadMode(EPWM5_BASE, EPWM_PERIOD_DIRECT_LOAD);
    // PWM frequency = 1 / period
    EPWM_setTimeBasePeriod      ( EPWM5_BASE, SDFM_TICKS-1                                 );
    EPWM_setPhaseShift          ( EPWM5_BASE, 0                                            );
    EPWM_setTimeBaseCounter     ( EPWM5_BASE, 0                                            );
    EPWM_setTimeBaseCounterMode ( EPWM5_BASE, EPWM_COUNTER_MODE_UP                         );
    EPWM_setClockPrescaler      ( EPWM5_BASE, EPWM_CLOCK_DIVIDER_1, EPWM_HSCLOCK_DIVIDER_1 );

    EPWM_disablePhaseShiftLoad(EPWM5_BASE);

    // sync "down-stream"
    EPWM_setSyncOutPulseMode(EPWM5_BASE, EPWM_SYNC_OUT_PULSE_ON_COUNTER_ZERO);

    // Counter Compare Submodule Registers
    // set duty 0% initially
    EPWM_setCounterCompareValue          ( EPWM5_BASE, EPWM_COUNTER_COMPARE_A, 0                           );
    EPWM_setCounterCompareShadowLoadMode ( EPWM5_BASE, EPWM_COUNTER_COMPARE_A, EPWM_COMP_LOAD_ON_CNTR_ZERO );

    // Action Qualifier SubModule Registers
    EPWM_setActionQualifierActionComplete ( EPWM5_BASE ,EPWM_AQ_OUTPUT_A       ,(EPWM_ActionQualifierEventAction )(EPWM_AQ_OUTPUT_LOW_UP_CMPA | EPWM_AQ_OUTPUT_HIGH_ZERO));
    EPWM_setActionQualifierActionComplete ( EPWM5_BASE ,EPWM_AQ_OUTPUT_B       ,(EPWM_ActionQualifierEventAction )(EPWM_AQ_OUTPUT_LOW_UP_CMPA | EPWM_AQ_OUTPUT_HIGH_ZERO));
    EPWM_setCounterCompareValue           ( EPWM5_BASE ,EPWM_COUNTER_COMPARE_A ,(uint16_t                  )(EPWM_getTimeBasePeriod(EPWM5_BASE) >> 1))              ;
    EPWM_setSyncOutPulseMode              ( EPWM5_BASE ,EPWM_SYNC_OUT_PULSE_ON_EPWMxSYNCIN                 )                                                        ;

    // ****************************************************************
    // pwm10 is used to passover pwm1 sync to pwm11 for SDFM sync
    // ****************************************************************
    SysCtl_setSyncInputConfig ( SYSCTL_SYNC_IN_EPWM10, SYSCTL_SYNC_IN_SRC_EPWM1SYNCOUT );
    EPWM_setSyncOutPulseMode  ( EPWM10_BASE, EPWM_SYNC_OUT_PULSE_ON_EPWMxSYNCIN        );

    // ****************************************************************
    // sync SDFM filter windows with motor control PWMs - pwm11
    // ****************************************************************
#if (SAMPLING_METHOD == SINGLE_SAMPLING)
    configurePWM_1chUpCnt(EPWM11_BASE, INV_PWM_TICKS);
#elif (SAMPLING_METHOD == DOUBLE_SAMPLING)
    configurePWM_1chUpCnt(EPWM11_BASE, INV_PWM_TICKS / 2);
#endif

    EPWM_enablePhaseShiftLoad  ( EPWM11_BASE                                );
    EPWM_setPhaseShift         ( EPWM11_BASE, 2                             );
    EPWM_setCountModeAfterSync ( EPWM11_BASE, EPWM_COUNT_MODE_UP_AFTER_SYNC );

    //for current sensing (not used)
    EPWM_setCounterCompareValue ( EPWM11_BASE, EPWM_COUNTER_COMPARE_C, (uint16_t )(EPWM_getTimeBasePeriod(EPWM11_BASE) - SDFM_TICKS*(OSR_RATE+1)*3/2));
    // for voltage sensing
    EPWM_setCounterCompareValue ( EPWM11_BASE, EPWM_COUNTER_COMPARE_D, (uint16_t )(EPWM_getTimeBasePeriod(EPWM11_BASE) - SDFM_TICKS*(OSR_RATE+1)*3/2));

    // 500 is arbitrary - to call motorISR (not used)
    EPWM_setCounterCompareValue ( EPWM11_BASE, EPWM_COUNTER_COMPARE_A, (uint16_t )((SDFM_TICKS*(OSR_RATE+1)*3/2) + 500))                              ;
    SysCtl_disablePeripheral    ( SYSCTL_PERIPH_CLK_TBCLKSYNC                    )                                                                    ;

    return;
}/*}}}*/
// Specific PWM configuration - 1 channel, up count
void configurePWM_1chUpCnt(uint32_t base, uint16_t period)/*{{{*/
{
                                                                                                                                                                 // Time Base SubModule Registers
    EPWM_setPeriodLoadMode                ( base, EPWM_PERIOD_DIRECT_LOAD                             )                                                        ; // set Immediate load
    EPWM_setTimeBasePeriod                ( base, period-1                                            )                                                        ; // PWM frequency = 1 / period
    EPWM_setPhaseShift                    ( base, 0                                                   )                                                        ;
    EPWM_setTimeBaseCounter               ( base, 0                                                   )                                                        ;
    EPWM_setTimeBaseCounterMode           ( base, EPWM_COUNTER_MODE_UP                                )                                                        ;
    EPWM_setClockPrescaler                ( base, EPWM_CLOCK_DIVIDER_1, EPWM_HSCLOCK_DIVIDER_1        )                                                        ;
    EPWM_disablePhaseShiftLoad            ( base                                                      )                                                        ;
                                                                                                                                                                 // sync "down-stream"
    EPWM_setSyncOutPulseMode              ( base, EPWM_SYNC_OUT_PULSE_ON_COUNTER_ZERO                 )                                                        ;

                                                                                                                                                                 // Counter Compare Submodule Registers
                                                                                                                                                                 // set duty 0% initially
    EPWM_setCounterCompareValue           ( base, EPWM_COUNTER_COMPARE_A, 0                           )                                                        ;
    EPWM_setCounterCompareShadowLoadMode  ( base, EPWM_COUNTER_COMPARE_A, EPWM_COMP_LOAD_ON_CNTR_ZERO )                                                        ;

                                                                                                                                                                 // Action Qualifier SubModule Registers
    EPWM_setActionQualifierActionComplete ( base, EPWM_AQ_OUTPUT_A,
                                          ( EPWM_ActionQualifierEventAction                           )(EPWM_AQ_OUTPUT_LOW_UP_CMPA | EPWM_AQ_OUTPUT_HIGH_ZERO));

                                                                                                                                                                 // Active high complementary PWMs - Set up the deadband
    EPWM_setRisingEdgeDeadBandDelayInput  ( base, EPWM_DB_INPUT_EPWMA                                 )                                                        ;
    EPWM_setFallingEdgeDeadBandDelayInput ( base, EPWM_DB_INPUT_EPWMA                                 )                                                        ;
    EPWM_setDeadBandDelayMode             ( base, EPWM_DB_RED, true                                   )                                                        ;
    EPWM_setDeadBandDelayMode             ( base, EPWM_DB_FED, true                                   )                                                        ;
    EPWM_setDeadBandDelayPolarity         ( base, EPWM_DB_RED, EPWM_DB_POLARITY_ACTIVE_HIGH           )                                                        ;
    EPWM_setDeadBandDelayPolarity         ( base, EPWM_DB_FED, EPWM_DB_POLARITY_ACTIVE_LOW            )                                                        ;
    EPWM_setRisingEdgeDelayCount          ( base, 0                                                   )                                                        ;
    EPWM_setFallingEdgeDelayCount         ( base, 0                                                   )                                                        ;

    return;
}/*}}}*/
// Specific PWM configuration - 1 channel, up-down count
void configurePWM_1chUpDwnCnt(uint32_t base, uint16_t period, int16_t db)/*{{{*/
{
    // Time Base SubModule Registers
    // set Immediate load
    EPWM_setPeriodLoadMode               ( base, EPWM_PERIOD_DIRECT_LOAD                             );
    EPWM_setTimeBasePeriod               ( base, period / 2                                          );
    EPWM_setPhaseShift                   ( base, 0                                                   );
    EPWM_setTimeBaseCounter              ( base, 0                                                   );
    EPWM_setTimeBaseCounterMode          ( base, EPWM_COUNTER_MODE_UP_DOWN                           );
    EPWM_setClockPrescaler               ( base, EPWM_CLOCK_DIVIDER_1, EPWM_HSCLOCK_DIVIDER_1        );

    EPWM_disablePhaseShiftLoad           ( base                                                      );
    // sync "down-stream"
    EPWM_setSyncOutPulseMode             ( base, EPWM_SYNC_OUT_PULSE_ON_COUNTER_ZERO                 );

    // Counter Compare Submodule Registers
    // set duty 0% initially
    EPWM_setCounterCompareValue          ( base, EPWM_COUNTER_COMPARE_A, 0                           );
    EPWM_setCounterCompareShadowLoadMode ( base, EPWM_COUNTER_COMPARE_A, EPWM_COMP_LOAD_ON_CNTR_ZERO );

    // Action Qualifier SubModule Registers
    EPWM_setActionQualifierActionComplete(base, EPWM_AQ_OUTPUT_A, (EPWM_ActionQualifierEventAction)(EPWM_AQ_OUTPUT_LOW_UP_CMPA | EPWM_AQ_OUTPUT_HIGH_DOWN_CMPA));

    // Active high complementary PWMs - Set up the deadband
    EPWM_setRisingEdgeDeadBandDelayInput  ( base, EPWM_DB_INPUT_EPWMA                       );
    EPWM_setFallingEdgeDeadBandDelayInput ( base, EPWM_DB_INPUT_EPWMA                       );
    EPWM_setDeadBandDelayMode             ( base, EPWM_DB_RED, true                         );
    EPWM_setDeadBandDelayMode             ( base, EPWM_DB_FED, true                         );
    EPWM_setDeadBandDelayPolarity         ( base, EPWM_DB_RED, EPWM_DB_POLARITY_ACTIVE_HIGH );
    EPWM_setDeadBandDelayPolarity         ( base, EPWM_DB_FED, EPWM_DB_POLARITY_ACTIVE_LOW  );
    EPWM_setRisingEdgeDelayCount          ( base, db                                        );
    EPWM_setFallingEdgeDelayCount         ( base, db                                        );

    return;
}/*}}}*/
// SDFM Configuration for current shunts V/W and DC bus voltage
void configureSDFM(void)/*{{{*/
{
    uint16_t flt;

    for (flt = 0; flt <= 3; flt++) {
        // Configure Input Control Mode: Modulator Clock rate = Modulator data
        // rate
        SDFM_setupModulatorClock(SDFM1_BASE, (SDFM_FilterNumber)flt, SDFM_MODULATOR_CLK_EQUAL_DATA_RATE);

        // Comparator Module
        // ******************************************************
        // Comparator HLT and LLT
        // Configure Comparator module's comparator filter type and
        // comparator's OSR value, high level threshold, low level threshold
        SDFM_setComparatorFilterType        ( SDFM1_BASE, (SDFM_FilterNumber )flt, SDFM_FILTER_SINC_3);
        SDFM_setCompFilterOverSamplingRatio ( SDFM1_BASE, (SDFM_FilterNumber )flt, 31)                ;
        SDFM_setCompFilterHighThreshold     ( SDFM1_BASE, (SDFM_FilterNumber )flt, hlt)               ;
        SDFM_setCompFilterLowThreshold      ( SDFM1_BASE, (SDFM_FilterNumber )flt, llt)               ;

        // Sinc filter Module
        // ******************************************************
        // Configure Data filter module's filter type, OSR value and enable /
        // disable data filter.
        // 16 bit data representation is chosen for OSR 128 using Sinc3, from
        // the table in the TRM.
        // The max value represented for OSR 128 using sinc 3
        // is +/-2097152 i.e. 2^21.
        // To represent this in 16 bit format where the first bit is
        // sign shift by 6 bits.
        SDFM_enableFilter               ( SDFM1_BASE, (SDFM_FilterNumber )flt)                         ;
        SDFM_setFilterType              ( SDFM1_BASE, (SDFM_FilterNumber )flt, SDFM_FILTER_SINC_3)     ;
        SDFM_setFilterOverSamplingRatio ( SDFM1_BASE, (SDFM_FilterNumber )flt, 127)                    ;
        SDFM_setOutputDataFormat        ( SDFM1_BASE, (SDFM_FilterNumber )flt, SDFM_DATA_FORMAT_16_BIT);
        SDFM_setDataShiftValue          ( SDFM1_BASE, (SDFM_FilterNumber )flt, 6)                      ;
    }

    // PWM11.CMPC, PWM11.CMPD, PWM12.CMPC and PWM12.CMPD signals cannot
    // synchronize the filters. This option is not being used in this
    // example.
    SDFM_enableExternalReset(SDFM1_BASE, SDFM_FILTER_1);
    SDFM_enableExternalReset(SDFM1_BASE, SDFM_FILTER_2);
    SDFM_enableExternalReset(SDFM1_BASE, SDFM_FILTER_3);
    SDFM_enableExternalReset(SDFM1_BASE, SDFM_FILTER_4);

    //
    // Enable Master filter bit: Unless this bit is set none of the filter
    // modules can be enabled. All the filter modules are synchronized when
    // master filter bit is enabled after individual filter modules are enabled.
    //
    SDFM_enableMasterFilter(SDFM1_BASE);

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

#ifndef __OPT_H__
#define __OPT_H__

#include "device.h"

//#define DEBUG_UART

#define APP_INPUT_BUF_SIZE 128  // usado para procesar la linea de comandos solamente y para la cola de pareser
#define APP_OUT_BUF_SIZE   1024 // usando para el printf solamente (el uartwrite escribe directo al circular de salida)
#define CMDLINE_MAX_ARGS   20   // creo que snmo usa varios..verificar

#define MAX_WCBUFFER_POOL  1024  // este es el que usa el printf para que la TX isr de la sci lo vaya vaciando..

//ADC
#define EX_ADC_RESOLUTION 12

//EQEP
//#define MECH_SCALER     16776                                                          // .9999 / 4000 converted to IQ26 fixed point format
//#define POLE_PAIRS      2                                                              // 2 pole pairs in this example
//#define CAL_ANGLE       0                                                              // Angular offset between encoder and Phase A
//#define SPEED_SCALER    ((((uint64_t)32 * DEVICE_SYSCLK_FREQ / 64) * 60) / (24000000)) // See Equation 5 in eqep_ex2_calculation.c
//#define BASE_RPM        6000                                                           // Base/max rpm is 6000rpm
#define ENCODER_RESOLUTION    4000        // 4000 edges per revolution
#define SPEED_FAST_DELTA_T    0.1f        //until now I call it in everythings sm at 0.1 calls/secs

//PWM
//only for encoder simulation
#define TB_CLK                (DEVICE_SYSCLK_FREQ / 2)   // 100Mhz, Time base clock is SYSCLK / 2 (sysclk = 200Mhz) 
#define PWM_CLK               1000                     // or 300 rpm (= 4 * 5000 cnts/sec * 60 sec/min) / 4000 cnts/rev)
#define EPWM_TIMER_PERIOD     60000 ;//(TB_CLK / (PWM_CLK * 2)) // Calculate value period value for an up/down pwm counter mode

// SCHEDULE
#define MAX_SCHEDULE_INDEX       18                    // define el maximo numero de solicitantes de tiem+outs concurrentes...

#endif

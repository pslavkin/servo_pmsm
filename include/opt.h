#ifndef __OPT_H__
#define __OPT_H__

//#define DEBUG_UART

#define APP_INPUT_BUF_SIZE 128                                 // usado para procesar la linea de comandos solamente y para la cola de pareser
#define APP_OUT_BUF_SIZE   256                                 // usando para el printf solamente (el uartwrite escribe directo al circular de salida)
#define CMDLINE_MAX_ARGS   20                                  // creo que snmo usa varios..verificar

#define MAX_RCBUFFER_POOL  128         //capacidad para ir guardando desde la isr de uart RX a la cola circular..
#define MAX_WCBUFFER_POOL  256         //este es el que usa el printf para que la TX isr de la sci lo vaya vaciando..

//ADC
#define EX_ADC_RESOLUTION 12

//PWM
#define EPWM_TIMER_PERIOD    5580
#endif

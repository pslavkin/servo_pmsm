#ifndef __OPT_H__
#define __OPT_H__

//#define DEBUG_UART

#define APP_INPUT_BUF_SIZE       128                                 // usado para procesar la linea de comandos solamente y para la cola de pareser
#define APP_OUT_BUF_SIZE         128                                 // usando para el printf solamente (el uartwrite escribe directo al circular de salida)
#define PARSER_QUEUE_SIZE        10
#define CMDLINE_MAX_ARGS         20                                  // creo que snmo usa varios..verificar

#endif

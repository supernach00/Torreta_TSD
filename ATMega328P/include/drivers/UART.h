#ifndef UART_H_
#define UART_H_

#define F_CPU 16000000UL
#define BAUDRATE 115200

// Fórmula para modo doble velocidad (U2X = 1)
#define BAUD_PRESCALLER ((F_CPU / (8UL * BAUDRATE)) - 1)

#include <avr/io.h>
#include <stdint.h>
#include <util/delay.h>

// Declaración de funciones
void USART_init(void);
unsigned char USART_receive(void);
void USART_send(unsigned char data);
void USART_putstring(char *StringPtr);
void USART_put_uint16(uint16_t variable);

#endif /* UART_H_ */
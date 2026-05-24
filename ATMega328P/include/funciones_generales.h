
#ifndef FUNCIONES_GENERALES_H_
#define FUNCIONES_GENERALES_H_

// Includes
#include <stdint.h>
#include <util/delay.h>
#include <avr/io.h>
#include <avr/interrupt.h>
// Constantes

typedef enum {

	ERROR_NOT_PORTD,

}error_f_t;

#define A 16000.0 / (5.0*1000.0)
#define C  4.88 // C = 5000mV / 1024;

//Debug
void DEBUG_init();
void DEBUG_led_toggle();

//inits
void ADC_init(void); // Inicializa el ADC para leer el pin ADC5 (A5) con referencia de 5V y un prescaler de 128.
void PWM_TIM1_init(uint16_t period); // Configura el Timer1 para generar una señal PWM en el pin PB1 con un periodo pasado como argumento (en ms).

//GPIOS
error_f_t GPIO_PORTD_IT_init(uint8_t); // Configura un pin de PORTD como entrada con pull-up y habilita la interrupción por cambio de pin para ese pin específico. Retorna ERROR_NOT_PORTD si el pin no es válido.

//ADC
uint16_t ADC_get(void); // Lee una muestra por pin ADC5 y devuelve el valor en milivoltios.
void ADC_sweep(uint16_t vector[6]); // Esta funcion realiza una lectura del ADC0, ADC1, ADC2, ADC3, ADC4 y ADC5 de forma secuencial y almacena los valores en el array estados. Hay que pasarle el vector donde guardar los resutlados.

//PWM
void PWM_set_DC(uint16_t duty_cycle); // Configura el ciclo de trabajo de la señal PWM generada por el Timer1. El argumento duty_cycle es un valor entre 0 y 100 que representa el porcentaje del ciclo de trabajo.
	
// Conversion
uint16_t volts_to_D(uint16_t tension);

#endif /* FUNCIONES_GENERALES_H_ */
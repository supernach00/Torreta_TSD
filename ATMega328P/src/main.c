/*
 * Taller de sistemas digitales
 *
 * Created: 16/05/2026 
 * Author : nachinux
 */ 


//Librerias estandar C
#include <stdio.h>

//Librerias AVR
#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include <string.h>

//Utils
#include "funciones_generales.h"

//Drivers
#include "drivers/UART.h"

//Devices
#include "devices/MG996R.h"
#include "devices/nunchuk.h"
#include "devices/vl53l0x.h"

/* Variables globales */
estado_t estado_actual = MANUAL;

volatile uint8_t flag_20ms = 0;
volatile uint8_t flag_1seg = 0;

volatile int16_t x_angulo = 0;
volatile int16_t y_angulo = 0;

volatile uint8_t debug_flag = 0;

/* Rutinas de interrupciones */

ISR(TIMER2_COMPA_vect) 
{

}

ISR(TIMER0_COMPA_vect) // Timer0 1 ms tick para base de tiempos
{
	static uint8_t contador_20ms = 0;
	static uint16_t contador_1seg = 0;

	contador_1seg++;
	if (contador_1seg >= 1000) { 
		contador_1seg = 0;
		flag_1seg = 1;
	}

	contador_20ms++;
	if (contador_20ms >= 20) { 
		contador_20ms = 0;
		flag_20ms = 1;
	}

}

int main(void)
{
	/* Inicializaciones */
	DEBUG_init();
	DEBUG_led_on();

	I2C_init();
	while (NUN_init() != NUN_ERROR_OK){
		// Busco conectar el nunchuck hasta que no de error
		_delay_ms(50);
		DEBUG_led_toggle();
	}

	USART_init();
	TIMER0_init_1ms();
	PWM_TIM1_init(SERVO_PERIODO_ms); // Configuroo el timer1 para generar una señal PWM con un periodo de 20ms (50Hz) en el pin PB1.1

	DEBUG_led_off();
	
	sei();

	uint8_t buffer_nunchuk[NUN_DATA_SIZE];

	error_distancia_t error = {0};
	error = error;

	while (1)
	{

		if (flag_1seg){

			flag_1seg = 0;
			// DEBUG_led_toggle();

		}

		switch(estado_actual){

			case MANUAL:

				if (flag_20ms) {
					flag_20ms = 0;

					NUN_get_raw(buffer_nunchuk);

					procesar_joystick(buffer_nunchuk, NUN_DATA_SIZE);

				}

			break;

			case AUTOMATICO:

			   if (flag_20ms) {
					flag_20ms = 0;
					// DEBUG_led_toggle();

					// _delay_ms(1000);

					// debug_flag = 0;

					error = get_error();
					procesar_error(error);

					// // USART_put_uint16(error.x);

					NUN_get_raw(buffer_nunchuk);
					procesar_boton_z(buffer_nunchuk, NUN_DATA_SIZE);
			   }

			break;

		}


	}

	return 0;
}


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
#include <stdio.h>

//Utils
#include "funciones_generales.h"

//Drivers
#include "drivers/UART.h"

//Devices
#include "devices/MG996R.h"
#include "devices/nunchuk.h"
#include "devices/vl53l0x.h"

// Variables globales

volatile uint8_t flag_20ms = 0;
// int8_t x_angulo = 0;
// int8_t y_angulo = 0;

ISR(TIMER2_COMPA_vect) 
{

}

ISR(TIMER0_COMPA_vect) // Timer0 1 ms tick para base de tiempos
{
	static uint8_t contador_20ms = 0;
	DEBUG_led_toggle();

	contador_20ms++;
	if (contador_20ms >= 20) { 
		contador_20ms = 0;
		flag_20ms = 1;
	}


}

	int main(void)
	{
		
		I2C_init();

		while (NUN_init() != NUN_ERROR_OK){
			DEBUG_led_toggle();
			_delay_ms(100);
		}

		USART_init();
		TIMER0_init_1ms();
		PWM_TIM1_init(SERVO_PERIODO_ms); // Configuroo el timer1 para generar una señal PWM con un periodo de 20ms (50Hz) en el pin PB1.1
		DEBUG_init();

		sei();

		uint8_t buffer_nunchuk[NUN_DATA_SIZE];

		while (1)
		{

			if (flag_20ms) {
				flag_20ms = 0;

				NUN_get_raw(buffer_nunchuk);
				procesar_joystick(buffer_nunchuk, NUN_DATA_SIZE);

			}

		}

		return 0;
	}


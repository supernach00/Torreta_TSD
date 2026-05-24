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

ISR(TIMER2_COMPA_vect) 
{

}

ISR(PCINT2_vect) { // Interrupción cuando se presiona el switch 1 (PD4)
	
    if (PIND & (1 << PD4)) {


    } else {

    }

};

ISR(INT1_vect) // Interrupción cuando se presiona el switch 2 (PD3)
{

}

ISR(TIMER0_COMPA_vect) // Código que se ejecuta a 61 Hz (cada 16.39 ms)
{

}

	int main(void)
	{
		
		// PWM_TIM1_init(20);
		// USART_init();
		NUN_init();
		sei();
		// uint8_t buf[NUN_DATA_SIZE];
		// NUN_get_raw(buf);

		// _delay_ms(5000);

		// if (buf[0] != 0 || buf[1] != 0 || buf[2] != 0 || buf[3] != 0 || buf[4] != 0 || buf[5] != 0){
		// 	USART_putstring("Nunchuk data received:\n");
		// 	for (int i = 0; i < NUN_DATA_SIZE; i++){
		// 		char str[4];
		// 		sprintf(str, "%d ", buf[i]);
		// 		USART_putstring(str);
		// 	}
		// 	USART_putstring("\n");
		// }

		DEBUG_init();
		while (1)
		{


		DEBUG_led_toggle();
		_delay_ms(1000);
		// NUN_get_raw(buf);
		// I2C_start();
		// I2C_connect_address(NUN_ADDRESS, I2C_WRITE);
		}

		return 0;
	}


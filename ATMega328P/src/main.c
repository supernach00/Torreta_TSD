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
#include "drivers/I2C.h"
#include "drivers/UART.h"

//Devices
#include "devices/MG996R.h"
#include "API_vl53l0x/vl53l0x_api.h"
#include "devices/nunchuck.h"

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
		I2C_init();
		_delay_ms(5000);
		USART_init();
		VL53L0X_DataInit();

		DEBUG_init();
		sei();
		
		while (1)
		{

			USART_putstring("buenas chambales\r\n");
			_delay_ms(5000);
			uint8_t status = VL53L0X_test();
			if (status) {
				USART_putstring("laser ok\r\n");
			} else {
				USART_putstring("laser not ok\r\n");
			}
				USART_putstring("uno\r\n");
			_delay_ms(1000);
				USART_putstring("dos\r\n");
			_delay_ms(1000);

		}

		return 0;
	}


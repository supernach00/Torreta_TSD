/*
 * Taller de sistemas digitales
 *
 * Created: 16/05/2026 
 * Author : nachinux
 */ 

#include "UART.h"
#include "funciones_generales.h"

#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include <stdio.h>

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
		
		PWM_TIM1_init(20);
		PWM_set_DC(50);

		sei();
		
		while (1)
		{

			uint8_t delta_dc = 1;
			Delay_ms(10000);
			PWM_set_DC(50 + delta_dc);


		}

		return 0;
	}


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

//Utils
#include "funciones_generales.h"

//Drivers
#include "drivers/I2C.h"

//Devices
#include "devices/MG996R.h"

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
		I2C_init();
		I2C_start();

		sei();
		
		while (1)
		{


		}

		return 0;
	}


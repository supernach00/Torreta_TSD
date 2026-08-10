#include "funciones_generales.h"

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#include "drivers/UART.h"
#include "devices/MG996R.h"

extern volatile int16_t x_angulo;
extern volatile int16_t y_angulo;
extern volatile estado_t estado_actual;
extern volatile uint16_t contador_WD;
extern volatile uint8_t flag_WD;

void TIMER0_init_1ms(void){

	/*
	TIMER = 0
	MODO = CTC
	PRESCALER = 64 (f = 250kHz)
	COMPARADOR = OCR0A = 249 -> interrupcion cada 1 ms
	*/

	TCCR0A = (1 << WGM01);
	TCCR0B = (1 << CS01) | (1 << CS00);
	OCR0A = 249;
	TCNT0 = 0;
	TIMSK0 = (1 << OCIE0A);
}

void ADC_sweep(uint16_t vector[6]) {	


	ADMUX = (0 << MUX3) | (0 << MUX2) | (0 << MUX1) | (0 << MUX0);
	vector[1] = ADC_get(); // Estado x2
	_delay_ms(2);

	ADMUX = (1 << MUX0);
	vector[0] = ADC_get(); // Estado x1
	_delay_ms(2);

	ADMUX = (1 << MUX1) | (0 << MUX0);
	vector[2] = ADC_get(); // Estado x3
	_delay_ms(2);

	ADMUX = (1 << MUX1) | (1 << MUX0);
	vector[3] = ADC_get(); // Estado x4
	_delay_ms(2);

	ADMUX = (1 << MUX2) | (0 << MUX1) | (0 << MUX0);
	vector[4] = ADC_get(); // Estado x5
	_delay_ms(2);

	ADMUX = (0 << MUX1) | (1 << MUX0);
	vector[5] = ADC_get(); // Salida
	_delay_ms(2);

};

void ADC_init(void){
	
	// Esta funcion configura el ADC para realizar lecturas en el pin ADC5 con una referencia de 5V y un prescaler de 128.
	
	/*
	TIMER = ADC
	MODO = SINGLE CONVERSION
	PRESCALER = 128 (f_adc = 125Khz)
	ADC = ENABLE
	ADC INTERRUPT = ENABLE
	PIN DE ENTRADA = ADC5, A5
	REFERENCIA = 5V
	*/
	
	ADMUX = (1 << REFS0) | (1 << MUX0) | (1 << MUX2);
	ADCSRA = (1 << ADEN) | (0 << ADIE) | (1 << ADPS2) | (1 << ADPS1) | (1 << ADPS0); 	
	
	
	/*
	TIMER = 2
	MODO = CTC
	PRESCALER = 64 (f = 250kHz)
	COMPARADOR PERIODO = OCR2A = 249 (Interrupción cada 1 ms)
	*/
	
	// Modo CTC
    TCCR2A = (1 << WGM21);

    // Prescaler = 64
    TCCR2B = (1 << CS22);

	// 1ms de periodo
    OCR2A = 249;

    // Habilitar interrupción por compare match
    TIMSK2 = (1 << OCIE2A);

    // Reset del contador
    TCNT2 = 0;
	
}

uint16_t ADC_get(void){
	

	ADCSRA |= (1 << ADSC);
	
	while ( !(ADCSRA & (1 << ADIF)) ); // Se espera hasta que termine la conversion.

	ADCSRA |= (1 << ADIF);

	return ADC*C; // Devuelve el valor en milivoltios. C = 5.
	
	}
		
uint16_t volts_to_D(uint16_t tension){
	
	// Esta funcion convierte un valor de tension en milivoltios a un entero entre 0 y 15999, que se utiliza
	// como valor de comparacion del timer1.
	// Esto define el ciclo de trabajo (WC) de la PWM de salida.
	
	return tension *  A - 1; //  A = 16000 / (5*1000)
	
	}

error_f_t GPIO_PORTD_IT_init(uint8_t pin){

    // Solo aceptar pines válidos de PORTD (PD0–PD7)
    if (pin > 7) return ERROR_NOT_PORTD;

    /*
     * Configurar pin como entrada con pull-up
     */
    DDRD &= ~(1 << pin);   // entrada
    PORTD |= (1 << pin);   // pull-up

    /*
     * Activar Pin Change Interrupt para PORTD
     * PCIE2 = grupo de interrupciones del PORTD
     */
    PCICR |= (1 << PCIE2);

    /*
     * Habilitar interrupción para el pin específico
     * PCINT16–PCINT23 corresponden a PD0–PD7
     */
    PCMSK2 |= (1 << (PCINT16 + pin));
    return 0; // Success
}

void PWM_TIM1_init(uint16_t period){
	
	/*
	TIMER = 1
	MODO = FAST PWM
	PRESCALER = 8 (f = 2MHz)
	1ms equivale a 2000 ciclos de reloj

	COMPARADOR PERIODO = ICR1 
	COMPARADOR DC = OCR1A
	PIN DE  SALIDA = PB1, PB2
	DC INICIAL = 0%
	*/
	
	// Configurar PB1, PB2 como salida
	DDRB |= (1 << PB1); // OC1A = PB1 en Arduino Uno
	DDRB |= (1 << PB2); // OC1B = PB2 en Arduino Uno

	// Modo Fast PWM con ICR1 como TOP, prescaler 1024.
	TCCR1A = (1 << WGM11) | (1 << COM1A1) | (1 << COM1B1);
	TCCR1B = (1 << WGM12) | (1 << WGM13) | (1 << CS11);  
	//TIMSK1 |= (1 << TOIE1);
	
	// Establecer el periodo de la señal PWM

	ICR1 = (period * 2000) - 1; // Convertir ms a ciclos de reloj (f = 15625Hz, 1ms = 15.625 ciclos)
	// ICR1 = 311; // Convertir ms a ciclos de reloj (f = 15625Hz, 1ms = 15.625 ciclos)

	// Establecer el ciclo de trabajo inicial al 0%
	OCR1A = 0;  // Valor inicial de ciclo de trabajo.

	}

void PWM_set_DC(uint16_t duty_cycle){
	
	// Esta funcion actualiza el ciclo de trabajo (DC) de la señal PWM en el pin PB1.

	OCR1A = (ICR1 * duty_cycle) / 100; // Convertir porcentaje a valor de comparación (0-1023)

	}

void DEBUG_init(){
	DDRB |= (1 << PB5);
}

void DEBUG_led_toggle(){
	PORTB ^= (1 << PB5);
}

void DEBUG_led_on(){
	PORTB |= (1 << PB5);
}

void DEBUG_led_off(){
	PORTB &= ~(1 << PB5);
}

void procesar_error(error_distancia_t error){

	#define K 0.001
	#define K2 24
	#define PI 3.14159265f
	#define RAD 1800 / PI // Conversor de rad a decigrados

	error = error;

	// float xk = (float)(error.x) * K;
	// float yk = (float)(error.y) * K;

	// double y_aux = (double)(y_angulo)/ RAD;

	// y_aux = y_aux - (xk*xk) / (2* tan(y_aux)) + yk ;

	// y_angulo = (int16_t)(y_aux) * RAD;

	// float aux = (2 + xk*xk + yk*yk) * sin(y_aux);

	// x_angulo = x_angulo - (int16_t)(RAD*( (2*xk) / (aux) ));

	x_angulo = x_angulo - (error.x / K2);
	y_angulo = y_angulo + (error.y / K2);

}

error_distancia_t get_error(void)
{
    error_distancia_t error;

    char buffer[8];
    uint8_t i = 0;
    char c;

	error.x = 0;
	error.y = 0;

	contador_WD = 0;
	flag_WD = 0;

    // Esperar inicio de paquete
    do
    {
        c = USART_receive();

    } while((c != '<') && !flag_WD);

	if (flag_WD) return error;

    // Leer X
    i = 0;

    while(1)
    {
        c = USART_receive();

        if((c == ',') || flag_WD)
            break;

        if(i < sizeof(buffer)-1)
            buffer[i++] = c;
    }

	if (flag_WD) return error;

    buffer[i] = '\0';

    error.x = atoi(buffer);



    // Leer Y
    i = 0;

    while(1)
    {
        c = USART_receive();

        if((c == '>') || flag_WD)
            break;

        if(i < sizeof(buffer)-1)
            buffer[i++] = c;
    }

	if (flag_WD)
	{
		error.x =0;
		return error;
	}

    buffer[i] = '\0';

    error.y = atoi(buffer);


    return error;
}

// mueve la camara 0.1 radianes en horizontal o vertical
// durante la etapa de pruebas para calcular la constante K

extern uint8_t flag_1seg;

void debug_0_1RAD(int8_t boton_c)
{
	if (flag_1seg)
	{
		flag_1seg = 0;
		if (boton_c == 0)
		{
			x_angulo += RAD * 0.1;
		} else {
			y_angulo += RAD * 0.1;
		}
	}
}

void procesar_joystick(uint8_t *buf, size_t len){

	if (len < 6) return; // need full nunchuk packet

	/* 
	 Esta funcion procesa los datos crudos del nunchuk y calcula los angulos de los servos.
	 Los angulos se devuelven en decimas de grado (0-1800).

	 El rango de valores del joystick es de un entero con signo de 8 bits, (-128 a 127). Se mapea a un rango de 0-1800.
	 Se invierte el eje Y para que el movimiento hacia arriba sea positivo.
	 Se manejan los botones tambien  
	*/

	#ifdef DEBUG_PROCESAR_JOYSTICK
		static char buffer[10];
	#endif

	static int8_t boton_c = 0;
	static int8_t boton_z = 0;

	boton_z = (buf[5] & 1);
	boton_c = (((~(buf[5]) >> 1) & 1));

#ifdef DEBUG_PROCESAR_JOYSTICK
	static char buffer[10];
	sprintf(buffer, "%d\r\n", boton_c);
	USART_putstring(buffer);
#endif

	if (!boton_z) {
    estado_actual = AUTOMATICO;
	// debug_0_1RAD(boton_c);
	DEBUG_led_toggle();
	}

	y_angulo += (((int16_t)(buf[1]) - 128) >> (2 + boton_c));
	if (y_angulo < 0) y_angulo = 0;
	else if (y_angulo > 899) y_angulo = 899;
    
	x_angulo -= (((int16_t)(buf[0]) - 128) >> (2 + boton_c));
	if (x_angulo < 0) x_angulo = 0;
	else if (x_angulo > 1799) x_angulo = 1799;

	SERVO_set_angulo(x_angulo, SERVO_HOR);
	SERVO_set_angulo(y_angulo, SERVO_VER);

#ifdef DEBUG_PROCESAR_JOYSTICK
	sprintf(buffer, "%d\r\n", x_angulo);   // decimal
	USART_putstring(buffer);
	sprintf(buffer, "%d\r\n", y_angulo);   // decimal
	USART_putstring(buffer);
#endif

}

void procesar_boton_z(uint8_t *buf, size_t len){

	if (len < 6) return; // need full nunchuk packet

	/* 
	 Esta funcion procesa los datos crudos del nunchuk y calcula los angulos de los servos.
	 Los angulos se devuelven en decimas de grado (0-1800).

	 El rango de valores del joystick es de un entero con signo de 8 bits, (-128 a 127). Se mapea a un rango de 0-1800.
	 Se invierte el eje Y para que el movimiento hacia arriba sea positivo.
	 Se manejan los botones tambien  
	*/

	#ifdef DEBUG_PROCESAR_JOYSTICK
		static char buffer[10];
	#endif

	static int8_t boton_z = 0;

	boton_z = (buf[5] & 1);

	if (boton_z) {
    estado_actual = MANUAL;
	DEBUG_led_toggle();
	}

	if (y_angulo < 0) y_angulo = 0;
	else if (y_angulo > 899) y_angulo = 899;

	if (x_angulo < 0) x_angulo = 0;
	else if (x_angulo > 1799) x_angulo = 1799;

	SERVO_set_angulo(x_angulo, SERVO_HOR);
	SERVO_set_angulo(y_angulo, SERVO_VER);

}
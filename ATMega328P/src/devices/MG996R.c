#include "devices/MG996R.h"

void SERVO_set_angulo(uint16_t angulo, servo_e servo){ // Centecimas de grados, grados multiplicados por 10 

	switch(servo){

		case SERVO_VER:
			OCR1B = angulo * 20 / 9 + 999;
			break;

		case SERVO_HOR:
			OCR1A = angulo * 20 / 9 + 999;
			break;

		default: break;

	}

}

void SERVO_test(servo_e servoA, servo_e servoB){

	int i = 0;

	SERVO_set_angulo(0, servoA);
	SERVO_set_angulo(0, servoB);

	_delay_ms(1000);

	for (i = 0; i <= 1800; i++){

		SERVO_set_angulo(i*1, servoA);
		SERVO_set_angulo(i*1, servoB);
		_delay_ms(1);

	}

	for (i = 1800; i >= 0; i--){

		SERVO_set_angulo(i*1, servoA);
		SERVO_set_angulo(i*1, servoB);
		_delay_ms(1);

	}

	SERVO_set_angulo(0, servoA);
	SERVO_set_angulo(0, servoB);

	SERVO_set_angulo(1800, servoA);
	SERVO_set_angulo(1800, servoB);
	_delay_ms(1000);

	SERVO_set_angulo(0, servoA);
	SERVO_set_angulo(0, servoB);
	_delay_ms(1000);
}
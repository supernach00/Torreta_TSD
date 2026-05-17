#ifndef MG996R_H_
#define MG996R_H_

#include <stdint.h>
#include <avr/io.h>
#include <util/delay.h>

typedef enum {

	SERVO_HOR,
	SERVO_VER,

}servo_e;

void SERVO_set_angulo(uint16_t angulo, servo_e servo); // Define un angulo (en decimas de grado) para el servo pasado como parametro.
void SERVO_test(servo_e servoA, servo_e servoB); // Recorre todos los angulos con cada servo y vuelve a la posicion inicial. Bloqueante.

#endif
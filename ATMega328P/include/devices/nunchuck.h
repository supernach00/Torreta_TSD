#ifndef NUNCHUCK_H_
#define NUNCHUCK_H_

#include <stdio.h>
#include "drivers/I2C.h"
#include "error.h"

void NUN_init(void); // Inicializa el i2c y envia comandos al nunchuck para dejarlo listo. Luego de llamar NUN_init() ya se pueden usar las funciones de abajo.
void NUN_get_raw(uint8_t read_buffer[6]); // Lee los 6 bytes crudos que envia el nunchuck, los guarda en el array pasado.
void NUN_get_joystick(uint8_t joy_position[2]); // Devuelve solo los bytes de posicion del jostick. byte 0 y 1 corresponden a X y Y respectivamente
uint8_t NUN_get_CZ(); // bit 0 y 1 del valor retornado corresponden a Z y C respectivamente.

#endif

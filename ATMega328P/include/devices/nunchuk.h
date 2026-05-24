#ifndef NUNCHUK_H_
#define NUNCHUK_H_

#include <stdio.h>
#include <util/delay.h>
#include "drivers/I2C.h"
#include "error.h"
#include "dev_config.h"

#define NUN_ADDRESS 0x52
#define NUN_DATA_SIZE 6

typedef enum {

    NUN_ERROR_INIT,
    NUN_ERROR_CONNECT,
    NUN_ERROR_GET_DATA,
    NUN_ERROR_OK

}NUN_ERROR_e;

NUN_ERROR_e NUN_init(void); // Inicializa el i2c y envia comandos al nunchuck para dejarlo listo. Luego de llamar NUN_init() ya se pueden usar las funciones de abajo.
void NUN_get_raw(uint8_t read_buffer[NUN_DATA_SIZE]); // Lee los 6 bytes crudos que envia el nunchuk, los guarda en el array pasado.
void NUN_get_joystick(uint8_t joy_position[2]); // Devuelve solo los bytes de posicion del jostick. byte 0 y 1 corresponden a X y Y respectivamente
uint8_t NUN_get_buttons(void); // bit 0 y 1 del valor retornado corresponden a Z y C respectivamente.

#endif

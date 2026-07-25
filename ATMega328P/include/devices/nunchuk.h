#ifndef NUNCHUK_H_
#define NUNCHUK_H_

#include <stdio.h>
#include <util/delay.h>
#include "drivers/I2C.h"
#include "error.h"
#include "dev_config.h"

#define NUN_ADDRESS 0x52
#define NUN_DATA_SIZE 6

#ifdef NUNCHUK_BLACK

    #define COMMAND_1 0xF0
    #define COMMAND_2 0x55
    #define COMMAND_3 0xFB
    #define COMMAND_4 0x00

#else // if NUNCHUK_WHITE

    #define COMMAND_1 0x40
    #define COMMAND_2 0x00

#endif

typedef enum {

    NUN_ERROR_INIT,
    NUN_ERROR_START,
    NUN_ERROR_CONNECT,
    NUN_ERROR_WRITE_DATA,
    NUN_ERROR_GET_DATA,
    NUN_ERROR_OK

}NUN_ERROR_e;

NUN_ERROR_e NUN_init(void); // Inicializa el i2c y envia comandos al nunchuck para dejarlo listo. Luego de llamar NUN_init() ya se pueden usar las funciones de abajo.
NUN_ERROR_e NUN_get_raw(uint8_t read_buffer[NUN_DATA_SIZE]); // Lee los 6 bytes crudos que envia el nunchuk, los guarda en el array pasado.
NUN_ERROR_e NUN_get_joystick(uint8_t joy_position[2]); // Devuelve solo los bytes de posicion del jostick. byte 0 y 1 corresponden a X y Y respectivamente
NUN_ERROR_e NUN_get_buttons(uint8_t *buttons); // bit 0 y 1 del valor retornado corresponden a Z y C respectivamente.

#endif

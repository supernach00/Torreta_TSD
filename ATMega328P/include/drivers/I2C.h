#ifndef I2C_H_
#define I2C_H_

/*
Utiliza los pines PC4 y PC5

*/

#include <avr/io.h>
#include <stdint.h>

typedef enum {

    I2C_READ,
    I2C_WRITE,

}I2C_RW_e;

void I2C_init();
void I2C_write(uint8_t data);
void I2C_start();
void I2C_write_address(uint8_t address, I2C_RW_e rw);
uint8_t I2C_read_ACK();
uint8_t I2C_read_NACK();
void I2C_handshake();

#endif /* I2C_H_ */
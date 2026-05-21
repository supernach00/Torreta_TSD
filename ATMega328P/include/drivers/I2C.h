#ifndef I2C_H_
#define I2C_H_

/*
Utiliza los pines PC4 y PC5

*/

#include <avr/io.h>
#include <stdint.h>

typedef enum {

    I2C_WRITE,
    I2C_READ,

}I2C_RW_e;

typedef enum {

    I2C_ERROR_INIT,
    I2C_ERROR_START,
    I2C_ERROR_WRITE,
    I2C_ERROR_WRITE_ADDRESS,
    I2C_ERROR_READ_ADDRESS,
    I2C_ERROR_READ,
    I2C_ERROR_OK

}I2C_ERROR_e;

I2C_ERROR_e I2C_init(void);
I2C_ERROR_e I2C_write(uint8_t data);
I2C_ERROR_e I2C_start(void);
void I2C_stop(void);
I2C_ERROR_e I2C_connect_address(uint8_t address, I2C_RW_e rw);
uint8_t I2C_read_ACK(void);
uint8_t I2C_read_NACK(void);

#endif /* I2C_H_ */
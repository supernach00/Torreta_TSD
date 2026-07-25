#ifndef I2C_H_
#define I2C_H_

/*
Utiliza los pines PC4 y PC5

*/

#include <avr/io.h>
#include <stdint.h>

/* Errores periferico TWI */
#define START_OK 0x08
#define REPEATED_START_OK 0x10

#define SLA_W_ACK 0x18
#define SLA_W_NACK 0x20
#define DATA_T_ACK 0x28
#define DATA_T_NACK 0x30

#define SLA_R_ACK 0x40
#define SLA_R_NACK 0x48
#define DATA_R_ACK 0x50
#define DATA_R_NACK 0x58

#define ARBITRATION_LOST 0x38

typedef enum {

    I2C_WRITE,
    I2C_READ,

}I2C_RW_e;

typedef enum {

    I2C_ERROR_INIT,
    I2C_ERROR_START,
    I2C_ERROR_READ,
    I2C_ERROR_WRITE,
    I2C_ERROR_READ_ADDRESS,
    I2C_ERROR_WRITE_ADDRESS,
    I2C_ERROR_NOT_FOUND,
    I2C_ERROR_OK

}I2C_ERROR_e;

I2C_ERROR_e I2C_init(void);
I2C_ERROR_e I2C_write(uint8_t data);
I2C_ERROR_e I2C_start(void);
I2C_ERROR_e I2C_scan(uint8_t *found_address);
void I2C_stop(void);
I2C_ERROR_e I2C_connect_address(uint8_t address, I2C_RW_e rw);
uint8_t I2C_read_ACK(void);
uint8_t I2C_read_NACK(void);

#endif /* I2C_H_ */
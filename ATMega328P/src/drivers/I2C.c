#include "drivers/I2C.h"

void I2C_init(void){

    // Prescaler = 1
    TWSR = 0x00;

    // 100kHz
    TWBR = 72;

    // Habilitar TWI
    TWCR = (1 << TWEN);

    // Pines como entrada 
    DDRC &= ~((1 << PC4) | (1 << PC5));

}

void I2C_start(void){

    // START + enable
    TWCR = (1 << TWINT) | // Limpio flag de start terminada
           (1 << TWSTA) | // Generar condicion start
           (1 << TWEN);   // Habilita el periferico i2c

    // Esperar fin
    while(!(TWCR & (1 << TWINT)));
}

void I2C_write_address(uint8_t address, I2C_RW_e rw){

    //Direccion
    TWDR = (address << 1) | rw;

    TWCR = (1 << TWINT) |
           (1 << TWEN);

    while(!(TWCR & (1 << TWINT)));
}

void I2C_write(uint8_t data){

    TWDR = data;

    TWCR = (1 << TWINT) |
           (1 << TWEN);

    while(!(TWCR & (1 << TWINT)));
}

uint8_t I2C_read_ACK(void){

    TWCR = (1 << TWINT) |
           (1 << TWEN) |
           (1 << TWEA);

    while(!(TWCR & (1 << TWINT)));

    return TWDR;
}

uint8_t I2C_read_NACK(void){

    TWCR = (1 << TWINT) |
           (1 << TWEN);

    while(!(TWCR & (1 << TWINT)));

    return TWDR;
}

void I2C_stop(void){

    TWCR = (1 << TWINT) |
           (1 << TWSTO) |
           (1 << TWEN);
}

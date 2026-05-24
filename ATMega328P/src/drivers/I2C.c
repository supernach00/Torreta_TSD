#include "drivers/I2C.h"

// #define I2C_TIMEOUT_CYCLES 65000UL

// static uint8_t I2C_wait_twint(void){
//     uint32_t timeout = I2C_TIMEOUT_CYCLES;
//     while (!(TWCR & (1 << TWINT))){
//         if (timeout-- == 0){
//             return 0;
//         }
//     }
//     return 1;
// }

// TODO: Agregar una funcion de manejor de errores y definir codigos con enums.
//SDA = A4
//SCL = A5

I2C_ERROR_e I2C_init(void){

    // SDA/SCL entradas
    DDRC &= ~((1 << PC4) | (1 << PC5));

    // prescaler 1
    TWSR = 0x00;

    // 100kHz con f_cpu = 16MHz
    // formula = 16MHz / (16 + 2*TWBR*prescaler) = 100kHz -> TWBR = 72
    TWBR = 72;
    // TWBR = 255;
 
    // enable TWI
    TWCR = (1 << TWEN);

    return I2C_ERROR_OK;
}

I2C_ERROR_e I2C_start(void){

    // START + enable
    TWCR = (1 << TWINT) | // Limpio flag de start terminada
           (1 << TWSTA) | // Generar condicion start
           (1 << TWEN);   // Habilita el periferico i2c

    // Esperar fin
    while(!(TWCR & (1 << TWINT))); // No tengo que tocar el flag de TWINT!!!

    // Manejo de error
    if ((TWSR & 0xF8) != 0x08){

        return I2C_ERROR_START;
   
    }

    return I2C_ERROR_OK;
}

I2C_ERROR_e I2C_connect_address(uint8_t address, I2C_RW_e rw){

    //A la direccion la shifteo y le meto el bit rw al final. La escribo en el registro data.
    TWDR = (address << 1) | rw;

    TWCR = (1 << TWINT) | // Limpio flag 
           (1 << TWEN);   // Habilito el periferico i2c

    // Espero fin
    while(!(TWCR & (1 << TWINT))); // No tengo que tocar el flag de TWINT!!!

    //Verifico el ACK y manejo errores según si es escritura o lectura
    uint8_t status = TWSR & 0xF8;
    if (rw == I2C_WRITE){
        if (status != 0x18){ // SLA+W transmitted, ACK received
            return I2C_ERROR_WRITE_ADDRESS;
        }
    } else {
        if (status != 0x40){ // SLA+R transmitted, ACK received
            return I2C_ERROR_READ_ADDRESS;
        }
    }

    return I2C_ERROR_OK;
}

I2C_ERROR_e I2C_write(uint8_t data){

    // Cargo el byte en el data register
    TWDR = data;

    TWCR = (1 << TWINT) | // Limpio flag y mando el dato.
           (1 << TWEN); // Habilito de nuevo por las dudas aunque no hace falta.

    while(!(TWCR & (1 << TWINT))); // Poll, no tocar el flag de TWINT!!!

    if ( (TWSR & 0xF8) != 0x28 ){ //Checkeo el status register para ver si el dato se envio correctamente, maskeo bits del prescaler.
        
        return I2C_ERROR_WRITE;

    } else {

        return I2C_ERROR_OK;

    }

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
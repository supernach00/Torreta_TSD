#include "drivers/I2C.h"
// TODO: Agregar una funcion de manejor de errores y definir codigos con enums.

/* Pines de salida i2c en arduino uno*/
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

    // Manejo de error: aceptar START normal y repeated START
    uint8_t status = TWSR & 0xF8;
    if (status != START_OK && status != REPEATED_START_OK){
        return I2C_ERROR_START;
    }

    return I2C_ERROR_OK;
}

I2C_ERROR_e I2C_scan(uint8_t *found_address){

    if (found_address != 0){
        *found_address = 0;
    }

    // El LED de debug solo se enciende cuando hay deteccion.
    DDRB |= (1 << PB5);
    PORTB &= ~(1 << PB5);

    // Rango valido de 7-bit address: 0x08 a 0x77.
    for (uint8_t address = 0x08; address <= 0x77; address++){

        if (I2C_start() != I2C_ERROR_OK){
            I2C_stop();
            continue;
        }

        if (I2C_connect_address(address, I2C_WRITE) == I2C_ERROR_OK){
            I2C_stop();

            if (found_address != 0){
                *found_address = address;
            }

            PORTB ^= (1 << PB5);
            return I2C_ERROR_OK;
        }

        I2C_stop();
    }

    return I2C_ERROR_NOT_FOUND;

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
        if (status != SLA_W_ACK){ // SLA+W transmitted, ACK received
            return I2C_ERROR_WRITE_ADDRESS;
        }
    } else {
        if (status != SLA_R_ACK){ // SLA+R transmitted, ACK received
            return I2C_ERROR_READ_ADDRESS;
        }
    }

    PORTB |= (1 << PB5); // Enciendo el LED de debug para indicar que se conecto a un dispositivo.

    return I2C_ERROR_OK;
}

I2C_ERROR_e I2C_write(uint8_t data){

    // Cargo el byte en el data register
    TWDR = data;

    TWCR = (1 << TWINT) | // Limpio flag y mando el dato.
           (1 << TWEN); // Habilito de nuevo por las dudas aunque no hace falta.

    while(!(TWCR & (1 << TWINT))); // Poll, no tocar el flag de TWINT!!!

    if ( (TWSR & 0xF8) != DATA_T_ACK ){ //Checkeo el status register para ver si el dato se envio correctamente, maskeo bits del prescaler.
        
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
#include "devices/nunchuck.h"

#define NUN_ID_READ 0xA5
#define NUN_ID_WRITE 0xA4
#define DATA_SIZE 6

void NUN_init(){

    // Inicializo periferico i2c.

    if (I2C_init() != I2C_ERROR_OK){
        Error_Handler();
    }

    if (I2C_start() != I2C_ERROR_OK){ //Genero condicion de start
        Error_Handler();
    }

    // The initialization consists of two write transactions, each of which writes a single byte to a register
    // internal to the I2C slave: reg[0xf0]=0x55, reg[0xfb]= 0x00. Normally this done once only.

    I2C_connect_address(NUN_ID_WRITE, I2C_WRITE);
    I2C_write(0xF0); // Escribo en este registro
    I2C_write(0x55); // Este valor
    I2C_stop();

    if (I2C_start() != I2C_ERROR_OK){ //Genero condicion de start
        Error_Handler();
    }

    I2C_connect_address(NUN_ID_WRITE, I2C_WRITE);
    I2C_write(0xFB); // Escribo en este registro
    I2C_write(0x00); // Este valor
    I2C_stop();

    // The read process consists of writing a 0 and then reading 6 bytes of data.
    // Send this command to get all sensor data and store into the 6-byte register within Nunchuk
    // controller. This must be executed before reading data from the Nunchuk

    if (I2C_start() != I2C_ERROR_OK){ //Genero condicion de start
        Error_Handler();
    }
    
    I2C_connect_address(NUN_ID_WRITE, I2C_WRITE);
    I2C_write(0x00); 
    I2C_stop();
    // NUN_handshake();

}

void NUN_get_raw(uint8_t read_buffer[DATA_SIZE]){

    // Send the slave ID for reading (0xA5) and wait for the stream data 6-byte from the Nunchuk.

    if (I2C_start() != I2C_ERROR_OK){ 
        Error_Handler();
    }

    I2C_connect_address(NUN_ID_READ, I2C_READ);

    for (int i = 0; i < DATA_SIZE - 1; i++){
        read_buffer[i] = I2C_read_ACK();
    }
    read_buffer[DATA_SIZE - 1] = I2C_read_NACK();

    I2C_stop();

}

void NUN_get_joystick(uint8_t joy_position[2]){
    uint8_t buf[6] = {0};
    NUN_get_raw(buf);

    // The joystick data are in the range 0..255 roughly centered at 128. The dynamic range is somewhat
    // less than the full range (approximately 30-220).
    joy_position[0] = buf[0];
    joy_position[1] = buf[1];

}

uint8_t NUN_get_CZ(){

    uint8_t buf[6] = {0};
    NUN_get_raw(buf);

    return (buf[5] & 0xFC); // bit 0 y 1 del valor retornado corresponden a Z y C respectivamente.
}
#include "devices/nunchuk.h"

#ifdef NUNCHUK_BLACK

    #define COMMAND_1 0xF0
    #define COMMAND_2 0x55
    #define COMMAND_3 0xFB
    #define COMMAND_4 0x00

#else

    #define COMMAND_1 0x40
    #define COMMAND_2 0x00

#endif

NUN_ERROR_e NUN_init(){

    I2C_init();

    // internal to the I2C slave: reg[0xf0]=0x55, reg[0xfb]= 0x00. Normally this done once only.

    I2C_start();
    I2C_connect_address(NUN_ADDRESS, I2C_WRITE);
    I2C_write(COMMAND_1); // Escribo en este registro
    I2C_write(COMMAND_2); // Este valor

    I2C_stop();

    // Termina aca si es un white nunchuck. Si es black escribo dos registros mas:

    #ifdef NUNCHUK_BLACK

    I2C_start(); // Genero otra start condition
    I2C_connect_address(NUN_ADDRESS, I2C_WRITE);
    I2C_write(COMMAND_3); // Escribo en este registro
    I2C_write(COMMAND_4); // Este valor

    I2C_stop();

    #endif

    // Realizo una primer lectura para verificar funcionamiento

    // The read process consists of writing a 0 and then reading 6 bytes of data.
    // Send this command to get all sensor data and store into the 6-byte register within Nunchuk
    // controller. This must be executed before reading data from the Nunchuk
    uint8_t buf[DATA_SIZE];
    NUN_get_raw(buf);

    return NUN_ERROR_OK;
}

void NUN_get_raw(uint8_t read_buffer[DATA_SIZE]){

    // Send the slave ID for reading (0xA5) and wait for the stream data 6-byte from the Nunchuk.

    I2C_start();
    I2C_connect_address(NUN_ADDRESS, I2C_WRITE);
    I2C_write(0x00); 
    I2C_stop();

    _delay_ms(1); // Dejo un aire al pequenio chuk

    I2C_start();
    I2C_connect_address(NUN_ADDRESS, I2C_READ);

    for (int i = 0; i < DATA_SIZE - 1; i++){
        read_buffer[i] = I2C_read_ACK();
    }
    read_buffer[DATA_SIZE - 1] = I2C_read_NACK();

    I2C_stop();

}

void NUN_get_joystick(uint8_t joy_position[2]){
    uint8_t buf[6];
    NUN_get_raw(buf);

    // The joystick data are in the range 0..255 roughly centered at 128. The dynamic range is somewhat
    // less than the full range (approximately 30-220).
    joy_position[0] = buf[0];
    joy_position[1] = buf[1];

}

uint8_t NUN_get_buttons(){

    uint8_t buf[6] = {0};
    NUN_get_raw(buf);

    return (buf[5] & 0x03); // bit 0 y 1 del valor retornado corresponden a Z y C respectivamente.
}
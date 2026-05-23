#include "devices/vl53l0x.h"

uint8_t VL53L0X_test(){

    uint8_t buf = 0;
    I2C_init();
    I2C_start();
    I2C_connect_address(VL53L0X_ADDRESS, I2C_WRITE);
    I2C_write(0xC0);
    I2C_stop();

    I2C_start();
    I2C_connect_address(VL53L0X_ADDRESS, I2C_READ);
    buf = I2C_read_NACK();
    I2C_stop();

    if (buf == 0xEE){
        return 1;
    } else {
        return 0;
    }

}
// void VL43L0X_init(){


// }
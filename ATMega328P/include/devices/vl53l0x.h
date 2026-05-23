#ifndef VL53L0X_H_
#define VL53L0X_H_

#include <stdint.h>
#include "drivers/I2C.h"

#define VL53L0X_ADDRESS 0x29 // 7-bit I2C address for VL53L0X (0x52/0x53 are 8-bit R/W addresses)

uint8_t VL53L0X_test();
void VL53L0X_init();

#endif
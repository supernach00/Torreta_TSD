# AVR-GCC Makefile for ATmega328P

# Project name
TARGET = main

# Define the microcontroller
MCU = atmega328p

# Define the clock frequency
F_CPU = 16000000UL

PROGRAMMER = arduino
BAUD = 115200
PORT=/dev/ttyUSB0
AVRDUDE = avrdude

# Source files
SRC = $(wildcard src/*.c)

# Included directories
INCLUDE_DIR = include

# Compiler and linker flags
# Considerar: -Werror -Wfatal-errors -Wall -Wextra
CFLAGS = -mmcu=$(MCU) -DF_CPU=$(F_CPU) -Os -I${INCLUDE_DIR} -Wall -Wextra -Werror -Wfatal-errors
LDFLAGS = -mmcu=$(MCU)

# Output directory
BUILD_DIR = build

# Tools
CC = avr-gcc
OBJCOPY = avr-objcopy
SIZE = avr-size
OBJDUMP = avr-objdump

# Output file names
ELF = $(BUILD_DIR)/$(TARGET).elf
HEX = $(BUILD_DIR)/$(TARGET).hex

# Default target
all: $(BUILD_DIR) $(HEX)

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

# Build elf from source
$(ELF): $(SRC)
	$(CC) $(CFLAGS) $(LDFLAGS) $^ -o $@

# Build hex from elf
$(HEX): $(ELF)
	$(OBJCOPY) -O ihex $< $@
	$(SIZE) $<
	$(OBJDUMP) -d $< > $(BUILD_DIR)/$(TARGET).asm

# Flashing the microcontroller
flash: $(HEX)
	$(AVRDUDE) -c $(PROGRAMMER) -p $(MCU) -P$(PORT) -b $(BAUD) -U flash:w:$(HEX):i

# Clean up build directory
clean:
	rm -rf $(BUILD_DIR)

# Phony targets
.PHONY: all clean flash
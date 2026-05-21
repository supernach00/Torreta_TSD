#include <avr/wdt.h>
#include "error.h"

void Error_Handler(void){

    wdt_enable(WDTO_15MS);

    while(1){
    }
}
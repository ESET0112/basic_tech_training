#include <util/delay.h>

#include "hal_gpio.h"
#include "pin_config.h"



int main(void){
  hal_init(LED_PIN,BUTTON_PIN);
  uint8_t led_state =0;
  uint8_t last_state = 1;

  while(1){
    uint8_t button_state= hal_read(BUTTON_PIN);
    if((last_state ==1 && button_state==0)){
        led_state = ! led_state;
        if(led_state){
          hal_set(LED_PIN);
        }
        else{
          hal_clear(LED_PIN);
        }
        _delay_ms(500);
      }
    last_state=button_state;
    }
  }
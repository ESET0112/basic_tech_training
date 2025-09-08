#include <avr/io.h>
#include <util/delay.h>

#define LED_PIN PD4   //Digital pin 4 = PD4
#define BUTTON_PIN PD2

int main(void){
  DDRD |=(1<<LED_PIN);

  DDRD &= ~(1<<BUTTON_PIN);

  PORTD |= (1<<BUTTON_PIN);

  while(1){
    if(!(PIND & (1<<BUTTON_PIN))){
        //Turn LED on
        PORTD |= (1<<LED_PIN);
        _delay_ms(500);

        //Turn LED off
        PORTD &= ~(1<<LED_PIN);
        _delay_ms(500);
      }
    else{
      //Turn LED off
        PORTD &= ~(1<<LED_PIN);
        _delay_ms(500);
    }
    }
    

  }
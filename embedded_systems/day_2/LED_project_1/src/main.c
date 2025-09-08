#include <avr/io.h>
#include <util/delay.h>

#define LED_PIN PD4   //Digital pin 4 = PD4

int main(void){
  DDRD |=(1<<LED_PIN);

  while(1){
    //Turn LED on
    PORTD |= (1<<LED_PIN);
    _delay_ms(500);

    //Turn LED off
    PORTD &= ~(1<<LED_PIN);
    _delay_ms(500);
  }
}



















// // put function declarations here:
// int myFunction(int, int);

// void setup() {
//   // put your setup code here, to run once:
//   int result = myFunction(2, 3);
// }

// void loop() {
//   // put your main code here, to run repeatedly:
// }

// // put function definitions here:
// int myFunction(int x, int y) {
//   return x + y;
// }
#include <Arduino.h>
#include <avr/io.h>
#include <util/delay.h>

#define DATA_PIND7 PD7
#define DATA_PIND6 PB0
#define DATA_PIND5 PB1
#define DATA_PIND4 PB2
#define ENABLE PB3
#define DATA_RS PB4

void lcd_pulse(){
    PORTB |=(1<<ENABLE);
    _delay_ms(100);
    PORTB &= ~(1<<ENABLE);
    _delay_ms(200);
}


void lcd_command(unsigned char cmd){
  PORTB &= ~(1<<DATA_RS);  //RS=0 for command    RS=1 for text

  //send high nibble
  if(cmd & 0x10){
    PORTB |= (1<<DATA_PIND4); //SET 1
  }
  else{
    PORTB &= ~(1<<DATA_PIND4); //CLEAR 0
  }

  if(cmd & 0x20) PORTB |= (1<<DATA_PIND5); else PORTB &= ~(1<<DATA_PIND5);
  if(cmd & 0x40) PORTB |= (1<<DATA_PIND6); else PORTB &= ~(1<<DATA_PIND6);
  if(cmd & 0x80) PORTD |= (1<<DATA_PIND7); else PORTD &= ~(1<<DATA_PIND7);

  lcd_pulse();

  //send low nibble
  if(cmd & 0x01) PORTB |= (1<<DATA_PIND4); else PORTB &= ~(1<<DATA_PIND4);
  if(cmd & 0x02) PORTB |= (1<<DATA_PIND5); else PORTB &= ~(1<<DATA_PIND5);
  if(cmd & 0x04) PORTB |= (1<<DATA_PIND6); else PORTB &= ~(1<<DATA_PIND6);
  if(cmd & 0x08) PORTD |= (1<<DATA_PIND7); else PORTD &= ~(1<<DATA_PIND7);

  lcd_pulse();

}
void lcd_data(unsigned char cmd){
    PORTB |= (1<<DATA_RS);  //RS=0 for command    RS=1 for text

  //send high nibble
  if(cmd & 0x10){
    PORTB |= (1<<DATA_PIND4); //SET 1
  }
  else{
    PORTB &= ~(1<<DATA_PIND4); //CLEAR 0
  }

  if(cmd & 0x20) PORTB |= (1<<DATA_PIND5); else PORTB &= ~(1<<DATA_PIND5);
  if(cmd & 0x40) PORTB |= (1<<DATA_PIND6); else PORTB &= ~(1<<DATA_PIND6);
  if(cmd & 0x80) PORTD |= (1<<DATA_PIND7); else PORTD &= ~(1<<DATA_PIND7);

  lcd_pulse();

  //send low nibble
  if(cmd & 0x01) PORTB |= (1<<DATA_PIND4); else PORTB &= ~(1<<DATA_PIND4);
  if(cmd & 0x02) PORTB |= (1<<DATA_PIND5); else PORTB &= ~(1<<DATA_PIND5);
  if(cmd & 0x04) PORTB |= (1<<DATA_PIND6); else PORTB &= ~(1<<DATA_PIND6);
  if(cmd & 0x08) PORTD |= (1<<DATA_PIND7); else PORTD &= ~(1<<DATA_PIND7);

  lcd_pulse();

}

void lcd_print(char *str){
    while(*str){
        lcd_data(*str++);
    }

}

void lcd_init(){
    _delay_ms(200);      //Wait for LCD power on
    lcd_command(0x02);   //4-bit mode
    lcd_command(0x28);   //2 line, 5x7 matrix
    lcd_command(0x0C);   //Display on, cursor off
    lcd_command(0x06);   //Increment cursor
    lcd_command(0x01);   //Clear screen
    _delay_ms(200);

}

int main(){
    DDRB = 0XFF;
    DDRD |= (1<<DATA_PIND7);

    lcd_init();

    lcd_command(0x80);
    lcd_print("Hello, Nilanjan!");

    lcd_command(0xC0);
    lcd_print("LCD Working: ");

    while(1){

    }

}


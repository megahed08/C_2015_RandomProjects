 sbit LED1 at Rb0_bit;
void main() {
         short i;
         trisb= 0b00000000;
         portb= 0b00000000;


         for(i=0;i<10;i++){
            portb=~portb;
            delay_ms(200);
            portb= 0b01010101;
            delay_ms(200);
            portb=~ portb;
            delay_ms(200);
            portb= 0b11000011;
            delay_ms(200);
            portb=~ portb;
            delay_ms(200);
            portb= 0;
            delay_ms(200);
         }
}
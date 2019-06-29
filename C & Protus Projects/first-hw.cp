#line 1 "C:/MikroC Projects/first-hw.c"
void main() {
 short i;
 trisb=0b00000000;
 trisc=0b00000000;
 while(1){
 portb=0b00000001;
 portc=0b00001000;
 i=0;
 while(i<3){
 delay_ms(200);
 portb=portb<<1;
 portc=portc>>1;
 i++;
 }

 portb=0b00001000;
 portc=0b00000001;
 i=0;

 while(i<3){
 delay_ms(200);
 portb=portb>>1;
 portc=portc<<1;
 i++;
 }
 }
}

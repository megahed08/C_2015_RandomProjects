#line 1 "C:/MikroC Projects/2nd1.c"
void main() {
 short i;
 trisb=0b00000000;
 portb=0b00000000;
 while(1){

 for(i=0;i<5;i++){
 RB0_bit=1;
 delay_ms(1);
 RB0_bit=0;
 delay_ms(19);
 }
 delay_ms(1000);


 for(i=0;i<5;i++){
 RB0_bit=1;
 delay_us(1166);
 RB0_bit=0;
 delay_us(18834);
 }
 delay_ms(1000);


 for(i=0;i<5;i++){
 RB0_bit=1;
 delay_us(1333);
 RB0_bit=0;
 delay_us(18667);
 }
 delay_ms(1000);


 for(i=0;i<5;i++){
 RB0_bit=1;
 delay_us(1500);
 RB0_bit=0;
 delay_us(18500);
 }
 delay_ms(1000);


 for(i=0;i<5;i++){
 RB0_bit=1;
 delay_us(1666);
 RB0_bit=0;
 delay_us(18334);
 }
 delay_ms(1000);


 for(i=0;i<5;i++){
 RB0_bit=1;
 delay_us(1833);
 RB0_bit=0;
 delay_us(18167);
 }
 delay_ms(1000);


 for(i=0;i<5;i++){
 RB0_bit=1;
 delay_ms(2);
 RB0_bit=0;
 delay_ms(18);
 }
 delay_ms(1000);
 }
}

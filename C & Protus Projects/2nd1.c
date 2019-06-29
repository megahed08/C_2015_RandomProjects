void main() {
     short i;
     trisb.b0 = 0;
     portb.b0 = 0;
     while(1){
        //0deg
        for(i=0;i<5;i++){
           RB0_bit=1;
           delay_ms(1);
           RB0_bit=0;
           delay_ms(19);
        }
        delay_ms(1000);

         //30deg
         for(i=0;i<5;i++){
           RB0_bit=1;
           delay_us(1166);
           RB0_bit=0;
           delay_us(18834);
         }
         delay_ms(1000);

         //60deg
         for(i=0;i<5;i++){
           RB0_bit=1;
           delay_us(1333);
           RB0_bit=0;
           delay_us(18667);
         }
         delay_ms(1000);
         
         //90deg
         for(i=0;i<5;i++){
           RB0_bit=1;
           delay_us(1500);
           RB0_bit=0;
           delay_us(18500);
         }
         delay_ms(1000);

         //120deg
         for(i=0;i<5;i++){
           RB0_bit=1;
           delay_us(1666);
           RB0_bit=0;
           delay_us(18334);
         }
         delay_ms(1000);
         
         //150deg
         for(i=0;i<5;i++){
           RB0_bit=1;
           delay_us(1833);
           RB0_bit=0;
           delay_us(18167);
         }
         delay_ms(1000);

         //180deg
         for(i=0;i<5;i++){
           RB0_bit=1;
           delay_ms(2);
           RB0_bit=0;
           delay_ms(18);
         }
         delay_ms(1000);
     }
}
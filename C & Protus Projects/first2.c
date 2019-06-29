void main() {
     short i;
     trisb=0b00000000;
     portb=0b10000000;
     while(1){
         portb=0b10000000;
         i=0;
         while(i<7){
         delay_ms(200);
         portb=portb>>1;
         i++;
         }
         
         portb=0b00000001;
         i=0;
         
         while(i<7){
         delay_ms(200);
         portb=portb<<1;
         i++;
         }
     }
}
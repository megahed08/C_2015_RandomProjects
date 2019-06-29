void main() {
     short i;
     unsigned x=0b00000001;
     unsigned y=0b10000000;
     trisb=0b00000000;
     portb=0b00000000;
     while(1){
         for(i=0;i<4;i++){
         delay_ms(200);
         portb=portb+x+y;
         x=x<<1;
         y=y>>1;
         }
         for(i=0;i<4;i++){
         delay_ms(200);
         x=x>>1;
         y=y<<1;
         portb=portb-(x+y);
         }
     }
     
}
     
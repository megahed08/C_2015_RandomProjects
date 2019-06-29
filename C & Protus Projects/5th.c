void main() {
short f=0;
short c=0;
short f2=0;
short c2=0;
trisd0_bit=1;
trisd1_bit=1;
trisd2_bit=0;
trisd3_bit=0;
rd2_bit=0;
rd3_bit=0;
trisb=0;
portb=0;
while(1){
   if(rd0_bit==0&&f==0){
      delay_ms(100);
      if(rd0_bit==0&&f==0){
         f=1;
         c++;
         }
      }
      if(rd0_bit==1){f=0;}
      if(c==1){portb=255;}
      if(c==2){portb=0b10101010;}
      if(c==3){portb=0b11000011;}
      if(c==4){portb=0b00111100;}
      if(c==5){portb=0;}
      if(c==6){c=1;}

      if(rd1_bit==0&&f2==0){
         delay_ms(100);
         if(rd1_bit==0&&f2==0){
            f2=1;
            c2++;
          }
       }
      if(rd1_bit==1){f2=0;}
      if(c2==1){rd2_bit=0; rd3_bit=1;}
      if(c2==2){rd2_bit=0; rd3_bit=0;}
      if(c2==3){rd2_bit=1; rd3_bit=0;}
      if(c2==4){rd2_bit=1; rd3_bit=1;}
      if(c2==5){c2=1;}
}
}
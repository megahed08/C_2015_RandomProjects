void main() {
short f=0;
short c=0;
trisd0_bit=1;
trisb=0;
portb=0;
while(1){
if(rd0_bit==0&&f==0){
delay_ms(100);
if(rd0_bit==0&&f==0){
f=1;
c++;}
}
if(rd0_bit==1){f=0;}
if(c==1){portb=255;}
if(c==2){portb=0b10101010;}
if(c==3){portb=0b11000011;}
if(c==4){portb=0b00111100;}
if(c==5){portb=0;}
if(c==6){c=1;}
}
}`
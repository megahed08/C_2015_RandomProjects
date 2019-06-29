
int i=0;
char read;
void main(){
  TRISB=0;
  PORTB=0b00000001;
  UART1_Init(9600);
  Delay_ms(100);
  while(1){
    if(UART1_Data_Ready()){
      read=UART1_Read();
      Delay_ms(10);
      if(read=='s'){
        PORTB=portb<<1;
        if(PORTB==0b00000000){
          PORTB=0b00000001;
         }
      }
      if(read=='b'){
        PORTB=0b11111111;
        delay_ms (1000);
        PORTB=0b00000000;
        delay_ms(1000);
        PORTB=0b11111111;
        delay_ms (1000);
        PORTB=0b00000000;
        delay_ms(1000);
        PORTB=0b11111111;
        delay_ms (1000);
        PORTB=0b00000000;
        delay_ms(1000);
        PORTB=0b00000001;
      }
      if(read=='o'){
        PORTB=0b11111111;
        delay_ms(1000);
        PORTB=0b00000001;
      }
    }
  }
}
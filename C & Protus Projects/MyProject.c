long temp;
uart_init(9600);
long int out;
char  ww [18]     ;
char  www ;
void main() {
uart_init(9600);
   while(1){
ADCON1=0x80;    TRISA=0xff;
  Glcd_Init(); // you have to initialize the GLCD module
  Glcd_Fill(0x00); //Clear GLCD
  temp = ADC_Read(2);
  out=temp*50000/1024;
  longtostr(out,ww);
  www[0]=ww[6];
  www[1]=ww[7];
  www[2]=ww[8];
  www[3]=ww[9];
  uart1_write(www[3]);
  
  
  
  }
  }

  
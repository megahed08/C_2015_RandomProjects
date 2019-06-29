/*
char GLCD_DataPort at PORTD;
sbit GLCD_CS1 at RC5_bit;
sbit GLCD_CS2 at RC4_bit;
sbit GLCD_RS  at RC3_bit;
sbit GLCD_RW  at RC2_bit;
sbit GLCD_EN  at RC1_bit;
sbit GLCD_RST at RC0_bit;
sbit GLCD_CS1_Direction at TRISC5_bit;
sbit GLCD_CS2_Direction at TRISC4_bit;
sbit GLCD_RS_Direction  at TRISC3_bit;
sbit GLCD_RW_Direction  at TRISC2_bit;
sbit GLCD_EN_Direction  at TRISC1_bit;
sbit GLCD_RST_Direction at TRISC0_bit;
// End Glcd module connections


long temp;
long int out;
char  ww [18]     ;
char  www []="0.000"    ;
void main() {
   while(1){
ADCON1=0x80;    TRISA=0xff;
  Glcd_Init(); // you have to initialize the GLCD module
  Glcd_Fill(0x00); //Clear GLCD
  temp = ADC_Read(2);
  out=temp*50000/1024;
  if(out==0){
    Glcd_Write_Text("0.000",0, 1, 1);
  }
  else{
  longtostr(out,ww);

  www[0]=ww[6];
  www[2]=ww[7];
  www[3]=ww[8];
  www[4]=ww[9];

  Glcd_Write_Text(www,0, 1, 1); }
  delay_ms(1000);
} }
*/
 /*
char GLCD_DataPort at PORTD;
sbit GLCD_CS1 at RC5_bit;
sbit GLCD_CS2 at RC4_bit;
sbit GLCD_RS  at RC3_bit;
sbit GLCD_RW  at RC2_bit;
sbit GLCD_EN  at RC1_bit;
sbit GLCD_RST at RC0_bit;
sbit GLCD_CS1_Direction at TRISC5_bit;
sbit GLCD_CS2_Direction at TRISC4_bit;
sbit GLCD_RS_Direction  at TRISC3_bit;
sbit GLCD_RW_Direction  at TRISC2_bit;
sbit GLCD_EN_Direction  at TRISC1_bit;
sbit GLCD_RST_Direction at TRISC0_bit;
// End Glcd module connections


long temp;
long int out;
char  ww [18]     ;
char  www []="00.000"    ;
void main() {
   while(1){

ADCON1=0x80;    TRISA=0xff;


  Glcd_Init(); // you have to initialize the GLCD module
  Glcd_Fill(0x00); //Clear GLCD
  temp = ADC_Read(2);
  out=temp*50000/1024;
  if(out==0){
    Glcd_Write_Text(" 0.000",0, 1, 1);
  }
  else{
  longtostr(out,ww);

  www[0]=ww[7];
  www[1]=ww[8];
  www[3]=ww[9];
  www[4]=ww[10];

  Glcd_Write_Text(www,0, 1, 1); }
  delay_ms(1000);
} }
*/

char GLCD_DataPort at PORTD;
sbit GLCD_CS1 at RC5_bit;
sbit GLCD_CS2 at RC4_bit;
sbit GLCD_RS  at RC3_bit;
sbit GLCD_RW  at RC2_bit;
sbit GLCD_EN  at RC1_bit;
sbit GLCD_RST at RC0_bit;
sbit GLCD_CS1_Direction at TRISC5_bit;
sbit GLCD_CS2_Direction at TRISC4_bit;
sbit GLCD_RS_Direction  at TRISC3_bit;
sbit GLCD_RW_Direction  at TRISC2_bit;
sbit GLCD_EN_Direction  at TRISC1_bit;
sbit GLCD_RST_Direction at TRISC0_bit;
// End Glcd module connections


int temp=0;
int out;
int i=0;
void main() {
   ADCON1=0x80;
   TRISA=0xff;
   Glcd_Init(); // you have to initialize the GLCD module
   Glcd_Fill(0x00); //Clear GLCD
   GLCD_V_line(0,64,0,1);
   GLCD_H_line(0,128,32,1);
   while(1){
     i++;
     if(i==127){
       i=1;
     }
     out=ADC_Read(2)*63/1024;
     GLCD_V_line(0,64,i+1,0);
     GLCD_line(i-1,temp,i,64-(out),1);
     temp=64-(out);
     GLCD_H_line(0,128,32,1);
     delay_ms(4);
   }
}
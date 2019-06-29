#line 1 "C:/MikroC Projects/lab2ex3.c"
char GLCD_DataPort at PORTD;

sbit GLCD_CS1 at RC5_bit;
sbit GLCD_CS2 at RC4_bit;
sbit GLCD_RS at RC3_bit;
sbit GLCD_RW at RC2_bit;
sbit GLCD_EN at RC1_bit;
sbit GLCD_RST at RC0_bit;
sbit GLCD_CS1_Direction at TRISC5_bit;
sbit GLCD_CS2_Direction at TRISC4_bit;
sbit GLCD_RS_Direction at TRISC3_bit;
sbit GLCD_RW_Direction at TRISC2_bit;
sbit GLCD_EN_Direction at TRISC1_bit;
sbit GLCD_RST_Direction at TRISC0_bit;

void main() {

 TRISB = 0;
 PORTB = 0;

 Glcd_Init();
 delay_ms(100);


 Glcd_Write_Text("RED",5,2,1);
 delay_ms(100);

 Glcd_Box(75,50,120,60,2);
 delay_ms(100);
 Glcd_Box(75,50,120,60,1);
 delay_ms(100);
 Glcd_H_Line(0,127,32,2);
 delay_ms(100);

 Glcd_V_Line(0,63,64,2);
 delay_ms(100);

 Glcd_Line(0,63,127,0,2);
 delay_ms(100);

 Glcd_Circle(64,32,10,2);
 delay_ms(1000);

 Glcd_Box(0,0,25,25,2);
 delay_ms(100);




 while(1);

 }

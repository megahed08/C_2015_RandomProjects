#line 1 "C:/MikroC Projects/lab2ex4.c"

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


 int x1 = 0;
 int y1 = 0;
 int z1 = 0;
 int i = 0;

 char x[7];
 char y[7];
 char z2[7];

 char x2[3];
 char y2[3];
 char z3[3];


void main()
{
 TRISB = 0;
 PORTB = 0;


 Glcd_Init();
 Delay_ms(1000);

 Glcd_Write_Text("sec",13,1,1);
 Glcd_Write_Text("min",53,1,1);
 Glcd_Write_Text("hrs",93,1,1);
 Glcd_Rectangle(7,20,40,53,1);
 Glcd_Rectangle(47,20,80,53,1);
 Glcd_Rectangle(87,20,120,53,1);

 for(i=0; i<=180;i++){

 InttoStr(x1,x);
 InttoStr(y1,y);
 InttoStr(z1,z2);

 x2[0] = x[4];
 x2[1] = x[5];
 y2[0] = y[4];
 y2[1] = y[5];
 z3[0] = z2[4];
 z3[1] = z2[5];

 Glcd_Write_Text(x2,17,4,2);
 Glcd_Write_Text(y2,57,4,2);
 Glcd_Write_Text(z3,97,4,2);

 x1++;
 delay_ms(1000);

 if(x1 >= 60){
 y1++;
 x1 = 0;
 i = 0;
 }
 if(y1 >= 60){
 z1++;
 y1 = 0;
 i = 0;
 }

 }
#line 90 "C:/MikroC Projects/lab2ex4.c"
 while(1);

}

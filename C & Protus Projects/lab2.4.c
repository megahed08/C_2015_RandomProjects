
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
int se = 0;
int mi = 0;
int hr = 0;
char sec ;
char minu;
char hrs;
// End Glcd module connections
void main()
{
TRISB = 0;
portB = 0;
Glcd_Init(); // you have to initialize the GLCD module
Delay_ms(2000);
Glcd_Fill(0xFF); //Fill GLCD
Delay_ms(1000);
Glcd_Fill(0x00); //Clear GLCD
Delay_ms(1000);
Glcd_Write_Text("Hello world", 30, 3, 1);

Delay_ms(10000)  ;
Glcd_Fill(0x00); //Clear GLCD
Glcd_Write_Text("Name",    0, 0, 1);
Glcd_Write_Text("Ramy",    0, 1, 1);
Glcd_Write_Text("Aly",     0, 2, 1);
Glcd_Write_Text("Youssef", 0, 3, 1);
Glcd_Write_Text("Mohamed", 0, 4, 1);

Glcd_Write_Text("ID"   , 40,0, 1);
Glcd_Write_Text("10488", 40,1, 1);
Glcd_Write_Text("1507" , 40,2, 1);
Glcd_Write_Text("7177" , 40,3, 1);
Glcd_Write_Text("7041" , 40,4, 1);
Delay_ms(10000)  ;
Glcd_Fill(0x00); //Clear GLCD

Glcd_Write_Text("SEC"    ,0, 0, 1);
Glcd_Write_Text("MIN"    ,40,0, 1);
Glcd_Write_Text("HRS"    ,80,0, 1);

while(1)
{
delay_ms(1000);
  se++ ;
if(se%60==0)
{
    mi++;
}
if(mi%60==0)
{
   hr++;
}
inttostr(se,sec);
inttostr(mi,minu);
inttostr(hr,hrs);

glcd_write_text(sec,0,2,1)    ;
glcd_write_text(minu,40,2,1)    ;
glcd_write_text(hrs,80,2,1)     ;


}



 Delay_ms(10000)  ;
Glcd_Fill(0x00); //Clear GLCD
glcd_line(0,63,127,0,1) ;
glcd_V_Line(0,63,63,1);
glcd_V_Line(0,127,32,1);
glcd_rectangle(0,0,30,20,1);
glcd_write_text("ARMY",1,1,1);
glcd_circle(62,31,10,1) ;
glcd_box(100,40,126,62,1);

}
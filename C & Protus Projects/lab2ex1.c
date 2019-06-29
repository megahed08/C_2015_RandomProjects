// Glcd module connections
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
do
{
;
}while(1);
}

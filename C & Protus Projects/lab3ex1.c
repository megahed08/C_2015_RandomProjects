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



   unsigned temp;
   long volt = 0;
   char final[12];
   char volt1[6] = "0.000";


void main()
{

   TRISA = 0xFF;

   Glcd_Init(); // you have to initialize the GLCD module
   Delay_ms(100);

   ADCON1 = 0x80;
   temp = ADC_Read(1);

   volt = temp * (500000/1024);
   LongtoStr(volt, final);

   volt1[0] = final[6];
   volt1[2] = final[7];
   volt1[3] = final[8];
   volt1[4] = final[9];

   GLCD_Write_Text("The Voltage is: ",0,2,1);
   delay_ms(10);
   GLCD_Write_Text(volt1,60,3,1);
   delay_ms(1000);

}

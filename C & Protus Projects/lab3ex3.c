
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



   unsigned tmp;
   int volt = 0;
   char temp[12];
   int i = 0;


void main()
{

   TRISA = 0xFF;

   Glcd_Init(); // you have to initialize the GLCD module
   Delay_ms(100);

   ADCON1 = 0x80;
   tmp = ADC_Read(1);

   volt = tmp * (1024/64);
   //LongtoStr(volt, temp);

   for(i=0; i<128; i++){
           tmp = ADC_Read(1);
           volt = tmp / 16;
           Glcd_Dot(i,volt,1);

           if(i == 127){
                Glcd_Fill(0x00);
                delay_ms(100);
                i = 0;
           }
    }

    //Glcd_write_text(temp,20,2,1);
}

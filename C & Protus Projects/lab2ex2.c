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
       delay_ms(2000);

       GLCD_Write_Text("Name",5,2,1);
       delay_ms(100);
       GLCD_Write_Text("ID",70,2,1);
       delay_ms(100);
       GLCD_Write_Text("Reem",5,3,1);
       delay_ms(100);
       GLCD_Write_Text("28-5498",70,3,1);
       delay_ms(100);
       GLCD_Write_Text("Eman",5,4,1);
       delay_ms(100);
       GLCD_Write_Text("28-5775",70,4,1);
       delay_ms(100);
       GLCD_Write_Text("Duha",5,5,1);
       delay_ms(100);
       GLCD_Write_Text("28-2284",70,5,1);
       delay_ms(1000);

       while(1);
}



//Declarations------------------------------------------------------------------
const code char truck_bmp[1024];
//--------------------------------------------------------------end-declarations

// Glcd module connections
char GLCD_DataPort at PORTD;

sbit GLCD_CS1 at RB0_bit;
sbit GLCD_CS2 at RB1_bit;
sbit GLCD_RS  at RB2_bit;
sbit GLCD_RW  at RB3_bit;
sbit GLCD_EN  at RB4_bit;
sbit GLCD_RST at RB5_bit;

sbit GLCD_CS1_Direction at TRISB0_bit;
sbit GLCD_CS2_Direction at TRISB1_bit;
sbit GLCD_RS_Direction  at TRISB2_bit;
sbit GLCD_RW_Direction  at TRISB3_bit;
sbit GLCD_EN_Direction  at TRISB4_bit;
sbit GLCD_RST_Direction at TRISB5_bit;
// End Glcd module connections

 // ------------------------------------------------------
// GLCD Picture name: DSC_0062_2.bmp
// GLCD Model: KS0108 128x64
// ------------------------------------------------------


void main() {
glcd_init();
glcd_fill(0);
//glcd_image(DSC_0062_2);
//glcd_write_char_adv('A',10,10);


//task 3 temp graph till y 128 then repeat
}
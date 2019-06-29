// LCD module connections
sbit LCD_RS at RB4_bit;
sbit LCD_EN at RB5_bit;
sbit LCD_D4 at RB0_bit;
sbit LCD_D5 at RB1_bit;
sbit LCD_D6 at RB2_bit;
sbit LCD_D7 at RB3_bit;

sbit LCD_RS_Direction at TRISB4_bit;
sbit LCD_EN_Direction at TRISB5_bit;
sbit LCD_D4_Direction at TRISB0_bit;
sbit LCD_D5_Direction at TRISB1_bit;
sbit LCD_D6_Direction at TRISB2_bit;
sbit LCD_D7_Direction at TRISB3_bit;
// End LCD module connections


unsigned char readbuff[64] absolute 0x500;   // Buffers should be in USB RAM, please consult datasheet
unsigned char writebuff[64] absolute 0x540;

char cnt;
char kk;

void interrupt(){
   USB_Interrupt_Proc();                   // USB servicing is done inside the interrupt
}

void main(void){
  ADCON1 |= 0x0F;                         // Configure all ports with analog function as digital
  CMCON  |= 7;
 
 lcd_init();

  HID_Enable(&readbuff,&writebuff);       // Enable HID communication

  while(1){
    while(!HID_Read())
      ;
       lcd_out(1,1,readbuff);

  }
}
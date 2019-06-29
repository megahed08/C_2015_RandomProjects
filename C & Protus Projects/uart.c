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

char x;

void main() {
     trisc0_bit=0;
     lcd_init();
     uart1_init(9600);
     uart1_write_text("yossof");
     while(1){
       if(uart1_data_ready()) {
          x = uart1_read();
          if(x=='y'){
            rc0_bit=1;
          }
          if(x=='n'){
            rc0_bit=0;
          }

          lcd_chr_cp(x);
        }
     }
}
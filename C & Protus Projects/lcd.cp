#line 1 "C:/Users/youssef/Desktop/lcd/lcd.c"

const char character[] = {0,2,5,20,18,12,0,10};

void CustomChar(char pos_row, char pos_char) {
 char i;
 Lcd_Cmd(64);
 for (i = 0; i<=7; i++) Lcd_Chr_CP(character[i]);
 Lcd_Cmd(_LCD_RETURN_HOME);
 Lcd_Chr(pos_row, pos_char, 0);
}


const char character1[] = {12,18,18,15,2,2,28,0};

void CustomChar1(char pos_row, char pos_char) {
 char i;
 Lcd_Cmd(72);
 for (i = 0; i<=7; i++) Lcd_Chr_CP(character1[i]);
 Lcd_Cmd(_LCD_RETURN_HOME);
 Lcd_Chr(pos_row, pos_char, 1);
}


const char character2[] = {0,21,21,30,0,0,0,0};

void CustomChar2(char pos_row, char pos_char) {
 char i;
 Lcd_Cmd(80);
 for (i = 0; i<=7; i++) Lcd_Chr_CP(character2[i]);
 Lcd_Cmd(_LCD_RETURN_HOME);
 Lcd_Chr(pos_row, pos_char, 2);
}


const char character3[] = {2,0,2,5,19,30,0,0};

void CustomChar3(char pos_row, char pos_char) {
 char i;
 Lcd_Cmd(88);
 for (i = 0; i<=7; i++) Lcd_Chr_CP(character3[i]);
 Lcd_Cmd(_LCD_RETURN_HOME);
 Lcd_Chr(pos_row, pos_char, 3);
}



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

int temp;
int i;
char x[7];

void main() {
 trisc7_bit=0;
 lcd_init();
 lcd_cmd(_LCD_CURSOR_OFF);
#line 85 "C:/Users/youssef/Desktop/lcd/lcd.c"
 while(1){
 temp=adc_read(3)*0.4887;
 inttostr(temp,x);
 lcd_chr(1,1,x[3]);
 lcd_chr(1,2,x[4]);
 lcd_chr(1,3,x[5]);
 delay_ms(200);
 if(temp>30){
 RC7_bit=1;
 }
 else{
 RC7_bit=0;
 }

 }
#line 138 "C:/Users/youssef/Desktop/lcd/lcd.c"
}

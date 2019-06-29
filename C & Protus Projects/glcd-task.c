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

void task1(){
 //task1
  while(1){
    glcd_fill(0);
    glcd_circle(30,30,5,2);
    glcd_line(30,30,60,30,1);
    delay_ms(200);
    glcd_fill(0);
    glcd_circle(30,30,5,2);
    glcd_line(30,30,45,45,1);
    delay_ms(200);
    glcd_fill(0);
    glcd_circle(30,30,5,2);
    glcd_line(30,30,30,60,1);
    delay_ms(200);
    glcd_fill(0);
    glcd_circle(30,30,5,2);
    glcd_line(30,30,15,45,1);
    delay_ms(200);
    glcd_fill(0);
    glcd_circle(30,30,5,2);
    glcd_line(30,30,0,30,1);
    delay_ms(200);
    glcd_fill(0);
    glcd_circle(30,30,5,2);
    glcd_line(30,30,15,15,1);
    delay_ms(200);
    glcd_fill(0);
    glcd_circle(30,30,5,2);
    glcd_line(30,30,30,0,1);
    delay_ms(200);
    glcd_fill(0);
    glcd_circle(30,30,5,2);
    glcd_line(30,30,45,15,1);
    delay_ms(200);
    glcd_fill(0);
    glcd_circle(30,30,5,2);
    glcd_line(30,30,60,30,1);
    delay_ms(200);
  }
}
void main (){
  glcd_init();
  glcd_fill(0);
  task1();
}
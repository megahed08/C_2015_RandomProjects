#line 1 "C:/MikroC Projects/glcd-tasks.c"

const code char truck_bmp[1024];



char GLCD_DataPort at PORTD;

sbit GLCD_CS1 at RB0_bit;
sbit GLCD_CS2 at RB1_bit;
sbit GLCD_RS at RB2_bit;
sbit GLCD_RW at RB3_bit;
sbit GLCD_EN at RB4_bit;
sbit GLCD_RST at RB5_bit;

sbit GLCD_CS1_Direction at TRISB0_bit;
sbit GLCD_CS2_Direction at TRISB1_bit;
sbit GLCD_RS_Direction at TRISB2_bit;
sbit GLCD_RW_Direction at TRISB3_bit;
sbit GLCD_EN_Direction at TRISB4_bit;
sbit GLCD_RST_Direction at TRISB5_bit;







const code char DSC_0019_12[1024] = {
255, 255, 254, 255, 223, 63, 255, 255, 255, 255, 255, 254, 255, 255, 255, 255, 255, 159, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 254, 255, 255, 254, 254, 254, 254, 252, 252, 248, 248, 240, 248, 252, 252, 248, 240, 160, 128, 160, 192, 16, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
239, 127, 47, 31, 63, 254, 253, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 127, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 254, 255, 255, 254, 254, 252, 244, 240, 192, 192, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
241, 224, 24, 240, 126, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 31, 7, 3, 3, 3, 3, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 3, 3, 7, 31, 255, 255, 255, 255, 255, 255, 255, 255, 250, 224, 224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
103, 29, 248, 7, 132, 253, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 249, 240, 240, 240, 240, 240, 224, 224, 224, 224, 224, 192, 192, 192, 128, 128, 192, 128, 192, 192, 192, 192, 224, 224, 224, 224, 224, 224, 224, 240, 240, 240, 176, 176, 240, 224, 224, 224, 128, 4, 63, 255, 255, 255, 255, 255, 127, 31, 15, 15, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
252, 254, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 31, 31, 31, 31, 31, 31, 31, 31, 31, 13, 13, 15, 15, 15, 15, 159, 191, 255, 127, 1, 1, 1, 1, 1, 3, 3, 3, 7, 7, 7, 15, 15, 15, 11, 11, 11, 9, 9, 3, 3, 3, 0, 0, 0, 0, 0, 255, 63, 199, 255, 57, 160, 240, 240, 32, 192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
191, 255, 127, 255, 255, 247, 255, 239, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 252, 252, 248, 248, 248, 248, 252, 252, 252, 254, 254, 254, 255, 255, 248, 249, 249, 251, 243, 224, 224, 224, 224, 224, 224, 224, 240, 112, 176, 144, 194, 198, 198, 254, 252, 252, 248, 120, 248, 240, 240, 248, 248, 248, 252, 252, 255, 255, 255, 67, 60, 223, 31, 255, 255, 65, 51, 38, 0, 128, 0, 0, 0, 0, 0, 128, 0, 128, 0, 0, 128, 0, 0, 0, 0, 0, 128, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
 1, 11, 207, 255, 255, 255, 255, 255, 255, 251, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 251, 255, 255, 255, 255, 127, 127, 255, 255, 247, 243, 227, 227, 227, 225, 225, 113, 113, 113, 33, 3, 1, 1, 1, 0, 193, 225, 241, 252, 126, 63, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 248, 240, 255, 254, 255, 244, 240, 247, 246, 253, 243, 230, 246, 255, 254, 254, 254, 252, 239, 246, 249, 224, 252, 56, 4, 192, 128, 248, 248, 248, 128, 0, 0, 0, 0, 0, 192, 192, 128, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
240, 248, 248, 253, 255, 255, 254, 255, 255, 255, 255, 239, 223, 159, 63, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 254, 252, 252, 248, 248, 248, 248, 248, 248, 248, 248, 248, 248, 248, 252, 252, 252, 252, 254, 255, 255, 255, 243, 243, 240, 243, 231, 199, 239, 207, 31, 31, 63, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 254, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 235, 95, 255, 248, 66, 62, 184, 0, 135, 253, 255, 252, 248, 0, 0, 48, 0, 0, 0, 0, 0, 0, 0, 0, 0
};


short x,i;
int temp,y1,y2;

void task1(){
 while(1){
 glcd_fill(0);
 glcd_circle(30,30,5,2);
 glcd_line(30,30,60,30,1);
 delay_ms(100);

 glcd_fill(0);
 glcd_circle(30,30,5,2);
 glcd_line(30,30,45,45,1);
 delay_ms(100);

 glcd_fill(0);
 glcd_circle(30,30,5,2);
 glcd_line(30,30,30,60,1);
 delay_ms(100);

 glcd_fill(0);
 glcd_circle(30,30,5,2);
 glcd_line(30,30,15,45,1);
 delay_ms(100);

 glcd_fill(0);
 glcd_circle(30,30,5,2);
 glcd_line(30,30,0,30,1);
 delay_ms(100);

 glcd_fill(0);
 glcd_circle(30,30,5,2);
 glcd_line(30,30,15,15,1);
 delay_ms(100);

 glcd_fill(0);
 glcd_circle(30,30,5,2);
 glcd_line(30,30,30,0,1);
 delay_ms(100);

 glcd_fill(0);
 glcd_circle(30,30,5,2);
 glcd_line(30,30,45,15,1);
 delay_ms(100);
 }
}

void task2(){
 glcd_circle(15,30,15,1);
 glcd_circle(45,30,15,1);
 glcd_circle(75,30,15,1);
 Glcd_Rectangle_Round_Edges_Fill(0,30,30,60,0,0);
 Glcd_Rectangle_Round_Edges_Fill(30,0,60,30,0,0);
 Glcd_Rectangle_Round_Edges_Fill(60,30,90,60,0,0);
 glcd_line(29,27,30,33,1);
 glcd_line(59,33,60,27,1);
}

void task3(){
 y1=64;
 y2=64;
 while(1){
 x=0;
 glcd_fill(0);
 for(i=0;i<127;i++){
 temp=adc_read(3)*0.4887;
 glcd_line(x,y1,x+1,y2,1);
 y1=y2;
 y2=64-temp;
 delay_ms(300);
 x++;
 }
 }
}

 void task4(){
 glcd_line(30,30,60,30,1);
 glcd_line(60,30,30,60,1);
 glcd_line(30,60,30,30,1);
 glcd_line(60,60,60,30,1);
 glcd_line(30,60,60,60,1);
 glcd_line(0,60,30,30,1);
 glcd_line(0,30,30,30,1);
 glcd_line(0,60,0,30,1);
 glcd_line(0,60,30,60,1);
 glcd_line(0,0,0,30,1);
 glcd_line(0,0,30,0,1);
 glcd_line(30,0,0,30,1);
 glcd_line(30,0,30,30,1);
 glcd_line(30,0,60,0,1);
 glcd_line(30,30,60,0,1);
 glcd_line(60,30,60,0,1);
}

void main (){
 glcd_init();
 glcd_fill(0);


 x=0;
 glcd_fill(0);
 for(i=0;i<127;i++){
 glcd_line(x,y1,x+1,y2,1);
 y1=y2;
 y2=100*sin(x);
 delay_ms(300);
 x++;
 }
}
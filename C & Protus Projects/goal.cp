#line 1 "C:/MikroC Projects/goal.c"

char GLCD_DataPort at PORTD;
sbit GLCD_CS1 at RB4_bit;
sbit GLCD_CS2 at RB5_bit;
sbit GLCD_RS at RB3_bit;
sbit GLCD_RW at RB2_bit;
sbit GLCD_EN at RB1_bit;
sbit GLCD_RST at RB0_bit;
sbit GLCD_CS1_Direction at TRISB4_bit;
sbit GLCD_CS2_Direction at TRISB5_bit;
sbit GLCD_RS_Direction at TRISB3_bit;
sbit GLCD_RW_Direction at TRISB2_bit;
sbit GLCD_EN_Direction at TRISB1_bit;
sbit GLCD_RST_Direction at TRISB0_bit;

Glcd_Init();

short fan =0;
short light=0;
short boiler=0;
char read;
static void welcomemenu(){
 GLCD_fill(0);
 GLCD_Write_Text("WELCOME HOME",25,0,1);
 Delay_ms(1000);
 GLCD_Write_Text("BEDROOM",0,2,1);
 GLCD_Write_Text("BATHROOM",0,3,1);
 GLCD_Write_Text("OUT",0,6,1);
 Delay_ms(10);
}
void main(){
 GLCD_Init();
 TRISE=0;
 PORTE=0;
 UART1_Init(9600);
 Delay_ms(10);
 GLCD_fill(0);
 GLCD_Write_Text("ENTER PASSWORD",20,3,1);
 delay_ms(10);
 while(1){
 if(UART1_Data_Ready()){
 read=UART1_Read();
 Delay_ms(10);
 if(read=='p'){
 welcomemenu();
 while(1){
 if(UART1_Data_Ready()){
 read=UART1_Read();
 Delay_ms(10);
 if(read=='a'){
 GLCD_fill(0);
 GLCD_Write_Text("BEDROOM",40,1,1);
 if(light==0){
 GLCD_Write_Text("LIGHT OFF",0,3,1);
 }
 else{
 GLCD_Write_Text("LIGHT ON",0,3,1);
 }
 GLCD_Write_Text("OUT",0,4,1);
 Delay_ms(10);
 while(1){
 if(UART1_Data_Ready()){
 read=UART1_Read();
 Delay_ms(10);
 if(read=='l' && light==0){
 re1_bit=1;
 light=1;
 GLCD_Write_Text("           ",0,3,1);
 GLCD_Write_Text("LIGHT ON",0,3,1);
 }
 else if(read=='l'&& light==1){
 re1_bit=0;
 light=0;
 GLCD_Write_Text("           ",0,3,0);
 GLCD_Write_Text("LIGHT OFF",0,3,1);
 }
 if(read=='o'){
 welcomemenu();
 break;
 }
 }
 }
 }
 if(read=='b'){
 GLCD_fill(0);
 GLCD_Write_Text("BATHROOM",40,1,1);
 if(fan==0){
 GLCD_Write_Text("FAN OFF",0,3,1);
 }
 else{
 GLCD_Write_Text("FAN ON",0,3,1);
 }
 GLCD_Write_Text("OUT",0,4,1);
 Delay_ms(10);
 while(1){
 if(UART1_Data_Ready()){
 read=UART1_Read();
 Delay_ms(10);
 if(read=='f' && fan==0){
 re2_bit=1;
 fan=1;
 GLCD_Write_Text("        ",0,3,1);
 GLCD_Write_Text("FAN ON",0,3,1);
 }
 else if(read=='f'&& fan==1){
 re2_bit=0;
 fan=0;
 GLCD_Write_Text("FAN ON",0,3,0);
 GLCD_Write_Text("FAN OFF",0,3,1);
 }
 if(read=='o'){
 welcomemenu();
 break;
 }
 }
 }
 }
 else if(read=='o'){
 GLCD_fill(0);
 GLCD_Write_Text("GOOD BYE",40,2,1);
 delay_ms(1000);
 GLCD_fill(0);
 GLCD_Write_Text("ENTER PASSWORD",20,3,1);
 break;
 }
 delay_ms(10);
 }
 }
 }
 }
 }
}

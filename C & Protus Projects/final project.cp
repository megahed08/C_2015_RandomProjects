#line 1 "C:/MikroC Projects/final project.c"

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
 Delay_ms(200);
 GLCD_Write_Text("WELCOME HOME",25,0,1);
 Delay_ms(500);
 GLCD_Write_Text("BEDROOM LIGHT    OFF",0,2,1);
 GLCD_Write_Text("BATHROOM FAN     OFF",0,3,1);
 GLCD_Write_Text("KITCHEN BOILER   OFF",0,4,1);
 GLCD_Write_Text("OUT",0,7,1);
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
 if(light==0){
 GLCD_Write_Text("   ",102,2,1);
 GLCD_Write_Text("ON", 102,2,1);
 light=1;
 }
 else{
 GLCD_Write_Text("   ",102,2,1);
 GLCD_Write_Text("OFF",102,2,1);
 light=0;
 }
 }
 else if(read=='b'){
 if(fan==0){
 GLCD_Write_Text("   ",102,3,1);
 GLCD_Write_Text("ON", 102,3,1);
 fan=1;
 }
 else{
 GLCD_Write_Text("   ",102,3,1);
 GLCD_Write_Text("OFF",102,3,1);
 fan=0;
 }
 }
 else if(read=='c'){
 if(boiler==0){
 GLCD_Write_Text("OFF",102,4,0);
 GLCD_Write_Text("ON", 102,4,1);
 boiler=1;
 }
 else{
 GLCD_Write_Text("   ",102,4,1);
 GLCD_Write_Text("OFF",102,4,1);
 boiler=0;
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
 if(boiler==0){
 if(fan==0){
 if(light==0){
 porte=0b000;
 }
 else{
 porte=0b001;
 }
 }
 else{
 if(light==0){
 porte=0b010;
 }
 else{
 porte=0b011;
 }
 }
 }
 else{
 if(fan==0){
 if(light==0){
 porte=0b100;
 }
 else{
 porte=0b101;
 }
 }
 else{
 if(light==0){
 porte=0b110;
 }
 else{
 porte=0b111;
 }
 }
 }
 delay_ms(10);
 }
 }
 }
 }
 }
}

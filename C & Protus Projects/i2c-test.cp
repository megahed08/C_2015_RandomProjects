#line 1 "C:/MikroC Projects/i2c-test.c"

char GLCD_DataPort at PORTD;
sbit GLCD_CS1 at RB5_bit;
sbit GLCD_CS2 at RB4_bit;
sbit GLCD_RS at RB3_bit;
sbit GLCD_RW at RB2_bit;
sbit GLCD_EN at RB1_bit;
sbit GLCD_RST at RB0_bit;
sbit GLCD_CS1_Direction at TRISB5_bit;
sbit GLCD_CS2_Direction at TRISB4_bit;
sbit GLCD_RS_Direction at TRISB3_bit;
sbit GLCD_RW_Direction at TRISB2_bit;
sbit GLCD_EN_Direction at TRISB1_bit;
sbit GLCD_RST_Direction at TRISB0_bit;



int AXAxisl=0, AYAxisl=0, AZAxisl=0,
AXAxish=0, AYAxish=0, AZAxish=0,
MXAxis=0, MYAxis=0, MZAxis=0;

unsigned char AXAxislS[10], AYAxislS[10], AZAxislS[10],
AXAxishS[10], AYAxishS[10], AZAxishS[10],
MXAxisS[10], MYAxisS[10], MZAxisS[10];


void set_Regs(){

 I2C1_Start();
 I2C1_Wr(0x3C);
 I2C1_Wr(0x00);
 I2C1_Wr(0x14);
 I2C1_Stop();

 I2C1_Start();
 I2C1_Wr(0x3C);
 I2C1_Wr(0x02);
 I2C1_Wr(0x00);
 I2C1_Stop();

 I2C1_Start();
 I2C1_Wr(0x32);
 I2C1_Wr(0x20);
 I2C1_Wr(0x27);
 I2C1_Stop();

 I2C1_Start();
 I2C1_Wr(0x32);
 I2C1_Wr(0x23);
 I2C1_Wr(0x40);
 I2C1_Stop();
}


void Accelerometer(void){

 I2C1_Start();
 I2C1_Wr(0x32);
 I2C1_Wr(0x29);
 I2C1_Repeated_Start();
 I2C1_Wr(0x33);
 AXAxish =(int)I2C1_Rd (0);
 I2C1_Stop();

 I2C1_Start();
 I2C1_Wr(0x32);
 I2C1_Wr(0x28);
 I2C1_Repeated_Start();
 I2C1_Wr(0x33);
 AXAxisl =(int)I2C1_Rd (0);
 I2C1_Stop();
 Delay_ms(10);

 I2C1_Start();
 I2C1_Wr(0x32);
 I2C1_Wr(0x2B);
 I2C1_Repeated_Start();
 I2C1_Wr(0x33);
 AYAxish =(int) I2C1_Rd (0);
 I2C1_Stop();

 I2C1_Start();
 I2C1_Wr(0x32);
 I2C1_Wr(0x2A);
 I2C1_Repeated_Start();
 I2C1_Wr(0x33);
 AYAxisl =(int) I2C1_Rd (0);
 I2C1_Stop();
 Delay_ms(10);

 I2C1_Start();
 I2C1_Wr(0x32);
 I2C1_Wr(0x2D);
 I2C1_Repeated_Start();
 I2C1_Wr(0x33);
 AZAxish =(int) I2C1_Rd (0);
 I2C1_Stop();

 I2C1_Start();
 I2C1_Wr(0x32);
 I2C1_Wr(0x2C);
 I2C1_Repeated_Start();
 I2C1_Wr(0x33);
 AZAxisl =(int) I2C1_Rd (0);
 I2C1_Stop();
}


void Magnetometer(void){
 I2C1_Start();
 I2C1_Wr(0x3C);
 I2C1_Wr(0x03);
 I2C1_Repeated_Start();
 I2C1_Wr(0x3D);

 MXAxis =(int) ((I2C1_Rd (1) << 8) + I2C1_Rd (1));
 MYAxis =(int) ((I2C1_Rd (1) << 8) + I2C1_Rd (1));
 MZAxis =(int) ((I2C1_Rd (1) << 8) + I2C1_Rd (0));
 I2C1_Stop();
}


void main() {
 Glcd_init();
 Glcd_fill(0);
 Glcd_Write_Text("A.X = ", 0, 0, 1);
 Glcd_Write_Text("A.Y = ", 0, 1, 1);
 Glcd_Write_Text("A.Z = ", 0, 2, 1);
 Glcd_Write_Text("____________________ ", 0, 3, 1);
 Glcd_Write_Text("M.X = ", 0, 4, 1);
 Glcd_Write_Text("M.Y = ", 0, 5, 1);
 Glcd_Write_Text("M.Z = ", 0, 6, 1);
 I2C1_Init(100000);
 delay_ms(1000);
 set_Regs();
 while(1){
 Magnetometer();
 Delay_ms(50);
 Accelerometer();
 Delay_ms(50);
 inttostr(AXAxisl, AXAxislS);
 inttostr(AYAxisl, AYAxislS);
 inttostr(AZAxisl, AZAxislS);
 inttostr(AXAxish, AXAxishS);
 inttostr(AYAxish, AYAxishS);
 inttostr(AZAxish, AZAxishS);

 inttostr(MXAxis/16, MXAxisS);
 inttostr(MYAxis/16, MYAxisS);
 inttostr(MZAxis/16, MZAxisS);

 Glcd_Write_Text(AXAxishS, 30, 0, 1);
 Glcd_Write_Text(AYAxishS, 30, 1, 1);
 Glcd_Write_Text(AZAxishS, 30, 2, 1);
 Glcd_Write_Text(AXAxislS, 60, 0, 1);
 Glcd_Write_Text(AYAxislS, 60, 1, 1);
 Glcd_Write_Text(AZAxislS, 60, 2, 1);

 Glcd_Write_Text(MXAxisS, 30, 4, 1);
 Glcd_Write_Text(MYAxisS, 30, 5, 1);
 Glcd_Write_Text(MZAxisS, 30, 6, 1);
 }
}

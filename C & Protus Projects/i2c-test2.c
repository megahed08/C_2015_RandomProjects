              // Glcd module connections
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
// End Glcd module connections
Glcd_Init(); //initialize the GLCD module


int AXAxis=0, AYAxis=0, AZAxis=0, MXAxis=1, MYAxis=0, MZAxis=0;
char AXAxisS[10], AYAxisS[10], AZAxisS[10], MXAxisS[10], MYAxisS[10], MZAxisS[10];
char a[5]="full";
short b=9;
      unsigned char ACC_Data[6];
int Ax, Ay, Az;
void Accelerometer(void){
 /* I2C1_Start();
  delay_ms(10);
  I2C1_Wr(0x32);
  delay_ms(10);
  I2C1_Wr(0b10101000);
  delay_ms(10);
  I2C1_Repeated_Start();
  delay_ms(10);
  I2C1_Wr(0x33);
  delay_ms(10);   */
  /*AXAxis = (int)((I2C1_rd(0xA9)<<8)+I2C1_rd(0xA8))/16;
  delay_ms(10);
  AYAxis = (int)((I2C1_rd(0xAB)<<8)+I2C1_rd(0xAA))/16;
  delay_ms(10);
  AZAxis = (int)((I2C1_rd(0xAD)<<8)+I2C1_rd(0xAC))/16;  */
/*AXAxis = I2C1_rd(0);
  delay_ms(10);
  I2C1_Stop();
  delay_ms(10);

  I2C1_Start();
  I2C1_Wr(0x32);
  I2C1_Wr(0b10101010);
  I2C1_Repeated_Start();
  I2C1_Wr(0x33);
  AYAxis = I2C1_rd(0);
  I2C1_Stop();

  I2C1_Start();
  I2C1_Wr(0x32);
  I2C1_Wr(0b10101101);
  I2C1_Repeated_Start();
  I2C1_Wr(0x33);
  AZAxis = I2C1_rd(1);
  I2C1_Stop();             */

  I2C1_Start();
  I2C1_Wr(0x32);
  I2C1_Wr(0x20);
  I2C1_Repeated_Start();
  I2C1_Wr(0x33);
  AXAxis = (int)((I2C1_rd(0x29)<<8)+I2C1_rd(0x28))/16;
  I2C1_Stop();

  I2C1_Start();
  I2C1_Wr(0x32);
  I2C1_Wr(0x20);
  I2C1_Repeated_Start();
  I2C1_Wr(0x33);
  AYAxis = I2C1_rd(0);
  I2C1_Stop();

  I2C1_Start();
  I2C1_Wr(0x32);
  I2C1_Wr(0x21);
  I2C1_Repeated_Start();
  I2C1_Wr(0x33);
  AZAxis = I2C1_rd(0);
  I2C1_Stop();


}


void Magnetometer(void){
  I2C1_Start();
  delay_ms(10);
  I2C1_Wr(0x03);
  delay_ms(10);
  I2C1_Repeated_Start();
  delay_ms(10);
  I2C1_Wr(0x3D);
  delay_ms(10);
  MXAxis = (int)((I2C1_rd(0x03)<<8)+I2C1_rd(0x04));
/*MXAxis = (int)((I2C1_rd(0x03)<<8)+I2C1_rd(0x04));
  delay_ms(10);
  MYAxis = (int)((I2C1_rd(0x07)<<8)+I2C1_rd(0x08));
  delay_ms(10);
  MZAxis = (int)((I2C1_rd(0x05)<<8)+I2C1_rd(0x06));
  delay_ms(10);       */
  I2C1_Stop();
  delay_ms(10);

  I2C1_Start();
  delay_ms(10);
  I2C1_Wr(0x3C);
  delay_ms(10);
  I2C1_Wr(0x06);
  delay_ms(10);
  I2C1_Repeated_Start();
  delay_ms(10);
  I2C1_Wr(0x3D);
  delay_ms(10);
  MYAxis = I2C1_rd(0);
  I2C1_Stop();
  delay_ms(10);

  I2C1_Start();
  delay_ms(10);
  I2C1_Wr(0x3C);
  delay_ms(10);
  I2C1_Wr(0x08);
  delay_ms(10);
  I2C1_Repeated_Start();
  delay_ms(10);
  I2C1_Wr(0x3D);
  delay_ms(10);
  MZAxis = I2C1_rd(1);
  I2C1_Stop();
  delay_ms(10);
}

void main() {
     glcd_init();
     I2C1_Init(100000);
     delay_ms(1000);
     while(1){

         Accelerometer();

     //    Magnetometer();
         inttostr(AXAxis, AXAxisS);
         inttostr(AYAxis, AYAxisS);
         inttostr(AZAxis, AZAxisS);
         inttostr(MXAxis, MXAxisS);
         inttostr(MYAxis, MYAxisS);
         inttostr(MZAxis, MZAxisS);
      /* Glcd_Write_Text("Hello", 4, 1, 1);
         Glcd_Write_Text(a, 5, 2, 1);
         Glcd_Write_Text(b, 1, 3, 1);  */
           /*
         Glcd_Write_Text(AXAxisS, 1, 1, 1);
         Glcd_Write_Text(AYAxisS, 1, 2, 1);
         Glcd_Write_Text(AZAxisS, 1, 3, 1);
         Glcd_Write_Text(MXAxisS, 1, 4, 1);
         Glcd_Write_Text(MYAxisS, 1, 5, 1);
         Glcd_Write_Text(MZAxisS, 1, 6, 1);
         delay_ms(500);
       */
       /*
I2C1_start();
I2C1_Wr(0x18);
I2C1_Wr(0x20);
I2C1_Wr(0x27);//set CTRL_REG1_A register
I2C1_Wr(0x18);
I2C1_Wr(0x23);
I2C1_Wr(0x40);//set CTRL_REG4_A register
while (1){
ACC_Data[0] = I2C1_Rd(0x28);//read OUT_X_L_A (MSB)
ACC_Data[1] = I2C1_Rd(0x29);//read OUT_X_H_A (LSB)
ACC_Data[2] = I2C1_Rd(0x2A);//read OUT_Y_L_A (MSB)
ACC_Data[3] = I2C1_Rd(0x2B);//read OUT_Y_H_A (LSB)
ACC_Data[4] = I2C1_Rd(0x2C);//read OUT_Z_L_A (MSB)
ACC_Data[5] = I2C1_Rd(0x2D);//read OUT_Z_H_A (LSB)
I2C1_stop();
Ax = (int) (ACC_Data[0] << 8) + ACC_Data[1];
Ay = (int) (ACC_Data[2] << 8) + ACC_Data[3];
Az = (int) (ACC_Data[4] << 8) + ACC_Data[5];

         inttostr(Ax, AXAxisS);
         inttostr(Ay, AYAxisS);
         inttostr(Az, AZAxisS);
         */

                glcd_fill(0);
         Glcd_Write_Text(AXAxisS, 1, 1, 1);
         Glcd_Write_Text(AYAxisS, 1, 2, 1);
         Glcd_Write_Text(AZAxisS, 1, 3, 1);
         Glcd_Write_Text(MXAxisS, 1, 4, 1);
         Glcd_Write_Text(MYAxisS, 1, 5, 1);
         Glcd_Write_Text(MZAxisS, 1, 6, 1);
         delay_ms(500);
         }

}
//-------------------------------------------------------
// Glcd module connections
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
// End Glcd module connections


int AXAxis=0, AYAxis=0, AZAxis=0, MXAxis=1, MYAxis=0, MZAxis=0;
unsigned char AXAxisS[10], AYAxisS[10], AZAxisS[10], MXAxisS[10], MYAxisS[10], MZAxisS[10];

void Accelerometer(void){
  I2C1_Start();
  I2C1_Wr(0x32);
  I2C1_Wr(0x20);
  I2C1_Repeated_Start();
  I2C1_Wr(0x33);
  AXAxis = I2C1_rd(0);
 // AYAxis = (int)((I2C1_rd(1)<<8)+I2C1_rd(1))/16;
  //AZAxis = (int)((I2C1_rd(1)<<8)+I2C1_rd(0))/16;
  I2C1_Stop();
}


void Magnetometer(void){
  I2C1_Start();
  I2C1_Wr(0x3C);
  I2C1_Wr(0x20);
  I2C1_Repeated_Start();
  I2C1_Wr(0x3D);
  MXAxis = (int)((I2C1_rd(0x03)<<8)+I2C1_rd(0x04));
  MYAxis = (int)((I2C1_rd(0x07)<<8)+I2C1_rd(0x08));
  MZAxis = (int)((I2C1_rd(0x05)<<8)+I2C1_rd(0x06));
  I2C1_Stop();
}

void main() {
     Glcd_init();
     I2C1_Init(100000);
     delay_ms(1000);

     //set CRA_REG_M register
             I2C1_Start();
             I2C1_Wr(0x1E);
             I2C1_Wr(0x00);
             I2C1_Wr(0x14);
             I2C1_Stop();

      //set MR_REG_M register
             I2C1_Start();
             I2C1_Wr(0x1E);
             I2C1_Wr(0x02);
             I2C1_Wr(0x00);
             I2C1_Stop();


     while(1){
         delay_ms(200);
         Accelerometer();
         Magnetometer();
         inttostr(AXAxis, AXAxisS);
         inttostr(AYAxis, AYAxisS);
         inttostr(AZAxis, AZAxisS);
         inttostr(MXAxis, MXAxisS);
         inttostr(MYAxis, MYAxisS);
         inttostr(MZAxis, MZAxisS);

         Glcd_fill(0);
         Glcd_Write_Text(AXAxisS, 30, 1, 1);
         Glcd_Write_Text(AYAxisS, 30, 2, 1);
         Glcd_Write_Text(AZAxisS, 30, 3, 1);
         Glcd_Write_Text(MXAxisS, 30, 4, 1);
         Glcd_Write_Text(MYAxisS, 30, 5, 1);
         Glcd_Write_Text(MZAxisS, 30, 6, 1);
     }

}
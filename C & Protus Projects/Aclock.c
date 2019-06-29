
char GLCD_DataPort at PORTD;
sbit GLCD_CS1 at RC5_bit;
sbit GLCD_CS2 at RC4_bit;
sbit GLCD_RS  at RC3_bit;
sbit GLCD_RW  at RC2_bit;
sbit GLCD_EN  at RC1_bit;
sbit GLCD_RST at RC0_bit;
sbit GLCD_CS1_Direction at TRISC5_bit;
sbit GLCD_CS2_Direction at TRISC4_bit;
sbit GLCD_RS_Direction  at TRISC3_bit;
sbit GLCD_RW_Direction  at TRISC2_bit;
sbit GLCD_EN_Direction  at TRISC1_bit;
sbit GLCD_RST_Direction at TRISC0_bit;
// End Glcd module connections

short se = 0;
short mi = 0;
short hr = 0;
short sx [] = {67,68,69,70,71,73,75,77,79,81,83,85,87,90,93,96,99,102,105,107,109,111,113,115,117,119,121,122,123,124,125};
short sy [] = {3,3,4,5,6,7,8,9,10,12,15,18,21,24,28,32,36,40,43,46,49,52,54,55,56,57,58,59,60,61,61};
short mx [] = {77,77,78,79,80,81,82,83,84,85,86,88,90,92,94,96,98,100,102,104,106,107,108,109,110,111,112,113,114,115,115};
short my [] = {13,13,14,15,16,17,18,19,20,21,22,24,26,28,30,32,34,36,38,40,42,43,44,45,46,47,48,49,50,51,51};
char seconds  [] = "text";
char minutes  [] = "text";
char hours    [] = "text";

void init(){
  Glcd_Init(); // you have to initialize the GLCD module
  Glcd_Fill(0x00); //Clear GLCD
  Glcd_V_Line(0, 64, 63, 1);
  Glcd_rectangle(0,18,61,35,1);
  Glcd_Write_Text("SEC",0, 1, 1);
  Glcd_Write_Text("MIN",21,1, 1);
  Glcd_Write_Text("HRS",42,1, 1);
  shorttostr(se,seconds);
  shorttostr(mi,minutes);
  shorttostr(hr,hours);
  Glcd_write_text(seconds,-11,3,1);
  Glcd_write_text(minutes, 12,3,1);
  Glcd_write_text(hours  , 35,3,1);
  Glcd_V_Line(18, 35, 20, 1);
  Glcd_V_Line(18, 35, 41, 1);
  Glcd_circle(96,32,30,1);
}

void mise(int ms, short ax [], short ay []){
  if(ms<=15){
    Glcd_line(96,32,ax[14],ay[1],0);
    Glcd_line(96,32,ax[ms+14],ay[ms-1],0);
    Glcd_line(96,32,ax[ms+15],ay[ms],1);
    }
  if(ms<=30&&ms>15){
    Glcd_line(96,32,ax[(30-(ms-16))],ay[ms-1],0);
    Glcd_line(96,32,ax[30-(ms-15)],ay[ms],1);
    }
  if(ms<=45&&ms>30){
    Glcd_line(96,32,ax[15-(ms-31)],ay[30-(ms-31)],0);
    Glcd_line(96,32,ax[15-(ms-30)],ay[30-(ms-30)],1);
    }
  if(ms<=60&&ms>45){
    Glcd_line(96,32,ax[ms-46],ay[15-(ms-46)],0);
    Glcd_line(96,32,ax[ms-45],ay[15-(ms-45)],1);
    }
}
void digital(){
  shorttostr(se,seconds);
  shorttostr(mi,minutes);
  shorttostr(hr,hours);
  Glcd_write_text(seconds,-11,3,1);
  Glcd_write_text(minutes, 12,3,1);
  Glcd_write_text(hours  , 35,3,1);
  Glcd_V_Line(18, 35, 20, 1);
  Glcd_V_Line(18, 35, 41, 1);
}
  
void analogue(){
  mise(se,sx,sy );
  mise(mi,mx,my );
  Glcd_circle(96,32,30,1);
  switch (hr){
    case 1: Glcd_line(96,32,96,17,0);
            Glcd_line(96,32,102,20,1);
           break;
    case 2: Glcd_line(96,32,102,20,0);
            Glcd_line(96,32,107,25,1);
           break;
    case 3: Glcd_line(96,32,107,25,0);
            Glcd_line(96,32,110,32,1);
           break;
    case 4: Glcd_line(96,32,110,32,0);
            Glcd_line(96,32,107,39,1);
           break;
    case 5: Glcd_line(96,32,107,39,0);
            Glcd_line(96,32,102,44,1);
           break;
    case 6: Glcd_line(96,32,102,44,0);
            Glcd_line(96,32,96,47,1);
           break;
    case 7: Glcd_line(96,32,96,47,0);
            Glcd_line(96,32,89,44,1);
           break;
    case 8: Glcd_line(96,32,89,44,0);
            Glcd_line(96,32,84,39,1);
           break;
    case 9: Glcd_line(96,32,84,39,0);
            Glcd_line(96,32,81,32,1);
           break;
    case 10: Glcd_line(96,32,81,32,0);
             Glcd_line(96,32,84,25,1);
            break;
    case 11: Glcd_line(96,32,84,25,0);
             Glcd_line(96,32,89,20,1);
            break;
    default: Glcd_line(96,32,89,20,0);
             Glcd_line(96,32,96,17,1);
            break;
  }
}

void main(){
  init();
  while(1){
    delay_ms(559);
      se++ ;
    if(se==60){
      se=0;
      mi++;
      if(mi==60){
        mi=0;
        hr++;
        if(hr==24){
          hr=0;
        }
      }
    }
    digital();
    analogue();
  }
}
#line 1 "C:/MikroC Projects/MyProject.c"
long temp;
long int out;
char ww [18] ;
char www []="0.000" ;
void main() {
 while(1){
ADCON1=0x80; TRISA=0xff;
 Glcd_Init();
 Glcd_Fill(0x00);
 temp = ADC_Read(2);
 out=temp*50000/1024;
 if(out==0){
 Glcd_Write_Text("0.000",0, 1, 1);
 }
 else{
 longtostr(out+".",ww);
 }
 }
 }

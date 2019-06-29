#line 1 "C:/MikroC Projects/6th.c"
void main() {
int x;
short temp;
trisb0_bit=0;
rb0_bit=0;
while(1){
 x=adc_read(3);
 temp=x*0.4887;
 if(temp>30){
 rb0_bit=1;
 }
 if(temp<30){
 rb0_bit=0;
 }
}
}

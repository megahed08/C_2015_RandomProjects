short out0=0;
short out1=0;
short out2=0; 
short out3=0;
short out4=0;
void main() {
TRISB =0xff;
UART1_Init(9600);
delay_ms(1000);

while(1)
{
///////////////////////////////////
    if(portb.b0==1 && out0==0)
    {
    UART1_Write('p');
    out0=1;
    }
    else
    {
     if(portb.b0==0 && out0==1)
     {
     UART1_Write('p');
     out0=0;
     }
    }
/////////////////////////////////////////

    if(portb.b1==1 && out1==0)
    {
    UART1_Write('a');
    out1=1;
    }
    else
    {
     if(portb.b1==0 && out1==1)
     {
     UART1_Write('a');
     out1=0;
     }
    }
//////////////////////////////////////

    if(portb.b2==1 && out2==0)
    {
    UART1_Write('b');
    out2=1;
    }
    else
    {
     if(portb.b2==0 && out2==1)
     {
     UART1_Write('b');
     out2=0;
     }
    }
//////////////////////////////////////

    if(portb.b3==1 && out3==0)
    {
    UART1_Write('c');
    out3=1;
    }
    else
    {
     if(portb.b3==0 && out3==1)
     {
     UART1_Write('c');
     out3=0;
     }
    }
//////////////////////////////////////

    if(portb.b4==1 && out4==0)
    {
    UART1_Write('o');
    out4=1;
    }
    else
    {
     if(portb.b4==0 && out4==1)
     {
     UART1_Write('o');
     out4=0;
     }
    }
//////////////////////////////////////

}
}
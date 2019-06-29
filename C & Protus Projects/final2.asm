
_main:

;final2.c,7 :: 		void main() {
;final2.c,8 :: 		TRISB =0xff;
	MOVLW      255
	MOVWF      TRISB+0
;final2.c,9 :: 		UART1_Init(9600);
	MOVLW      25
	MOVWF      SPBRG+0
	BSF        TXSTA+0, 2
	CALL       _UART1_Init+0
;final2.c,10 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main0:
	DECFSZ     R13+0, 1
	GOTO       L_main0
	DECFSZ     R12+0, 1
	GOTO       L_main0
	DECFSZ     R11+0, 1
	GOTO       L_main0
	NOP
	NOP
;final2.c,12 :: 		while(1){
L_main1:
;final2.c,13 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
	NOP
;final2.c,15 :: 		if(portb.b0==1 && out0==0){
	BTFSS      PORTB+0, 0
	GOTO       L_main6
	MOVF       _out0+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main6
L__main48:
;final2.c,16 :: 		UART1_Write('p');
	MOVLW      112
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;final2.c,17 :: 		out0=1;
	MOVLW      1
	MOVWF      _out0+0
;final2.c,18 :: 		continue;
	GOTO       L_main1
;final2.c,19 :: 		}
L_main6:
;final2.c,21 :: 		if(portb.b0==0 && out0==1){
	BTFSC      PORTB+0, 0
	GOTO       L_main10
	MOVF       _out0+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_main10
L__main47:
;final2.c,22 :: 		UART1_Write('p');
	MOVLW      112
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;final2.c,23 :: 		out0=0;
	CLRF       _out0+0
;final2.c,24 :: 		continue;
	GOTO       L_main1
;final2.c,25 :: 		}
L_main10:
;final2.c,28 :: 		if(portb.b1==1 && out1==0){
	BTFSS      PORTB+0, 1
	GOTO       L_main13
	MOVF       _out1+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main13
L__main46:
;final2.c,29 :: 		UART1_Write('a');
	MOVLW      97
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;final2.c,30 :: 		out1=1;
	MOVLW      1
	MOVWF      _out1+0
;final2.c,31 :: 		continue;
	GOTO       L_main1
;final2.c,32 :: 		}
L_main13:
;final2.c,34 :: 		if(portb.b1==0 && out1==1){
	BTFSC      PORTB+0, 1
	GOTO       L_main17
	MOVF       _out1+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_main17
L__main45:
;final2.c,35 :: 		UART1_Write('a');
	MOVLW      97
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;final2.c,36 :: 		out1=0;
	CLRF       _out1+0
;final2.c,37 :: 		continue;
	GOTO       L_main1
;final2.c,38 :: 		}
L_main17:
;final2.c,41 :: 		if(portb.b2==1 && out2==0){
	BTFSS      PORTB+0, 2
	GOTO       L_main20
	MOVF       _out2+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main20
L__main44:
;final2.c,42 :: 		UART1_Write('b');
	MOVLW      98
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;final2.c,43 :: 		out2=1;
	MOVLW      1
	MOVWF      _out2+0
;final2.c,44 :: 		continue;
	GOTO       L_main1
;final2.c,45 :: 		}
L_main20:
;final2.c,47 :: 		if(portb.b2==0 && out2==1){
	BTFSC      PORTB+0, 2
	GOTO       L_main24
	MOVF       _out2+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_main24
L__main43:
;final2.c,48 :: 		UART1_Write('b');
	MOVLW      98
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;final2.c,49 :: 		out2=0;
	CLRF       _out2+0
;final2.c,50 :: 		continue;
	GOTO       L_main1
;final2.c,51 :: 		}
L_main24:
;final2.c,54 :: 		if(portb.b3==1 && out3==0){
	BTFSS      PORTB+0, 3
	GOTO       L_main27
	MOVF       _out3+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main27
L__main42:
;final2.c,55 :: 		UART1_Write('c');
	MOVLW      99
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;final2.c,56 :: 		out3=1;
	MOVLW      1
	MOVWF      _out3+0
;final2.c,57 :: 		continue;
	GOTO       L_main1
;final2.c,58 :: 		}
L_main27:
;final2.c,60 :: 		if(portb.b3==0 && out3==1){
	BTFSC      PORTB+0, 3
	GOTO       L_main31
	MOVF       _out3+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_main31
L__main41:
;final2.c,61 :: 		UART1_Write('c');
	MOVLW      99
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;final2.c,62 :: 		out3=0;
	CLRF       _out3+0
;final2.c,63 :: 		continue;
	GOTO       L_main1
;final2.c,64 :: 		}
L_main31:
;final2.c,67 :: 		if(portb.b4==1 && out4==0){
	BTFSS      PORTB+0, 4
	GOTO       L_main34
	MOVF       _out4+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main34
L__main40:
;final2.c,68 :: 		UART1_Write('o');
	MOVLW      111
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;final2.c,69 :: 		out4=1;
	MOVLW      1
	MOVWF      _out4+0
;final2.c,70 :: 		continue;
	GOTO       L_main1
;final2.c,71 :: 		}
L_main34:
;final2.c,73 :: 		if(portb.b4==0 && out4==1){
	BTFSC      PORTB+0, 4
	GOTO       L_main38
	MOVF       _out4+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_main38
L__main39:
;final2.c,74 :: 		UART1_Write('o');
	MOVLW      111
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;final2.c,75 :: 		out4=0;
	CLRF       _out4+0
;final2.c,76 :: 		continue;
	GOTO       L_main1
;final2.c,77 :: 		}
L_main38:
;final2.c,80 :: 		}
	GOTO       L_main1
;final2.c,81 :: 		}
	GOTO       $+0
; end of _main

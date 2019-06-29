
_main:

;4th.c,1 :: 		void main() {
;4th.c,2 :: 		short f=0;
	CLRF       main_f_L0+0
	CLRF       main_c_L0+0
	CLRF       main_f2_L0+0
	CLRF       main_c2_L0+0
;4th.c,6 :: 		trisd0_bit=1;
	BSF        TRISD0_bit+0, BitPos(TRISD0_bit+0)
;4th.c,7 :: 		trisd1_bit=1;
	BSF        TRISD1_bit+0, BitPos(TRISD1_bit+0)
;4th.c,8 :: 		trisd2_bit=0;
	BCF        TRISD2_bit+0, BitPos(TRISD2_bit+0)
;4th.c,9 :: 		trisd3_bit=0;
	BCF        TRISD3_bit+0, BitPos(TRISD3_bit+0)
;4th.c,10 :: 		rd2_bit=0;
	BCF        RD2_bit+0, BitPos(RD2_bit+0)
;4th.c,11 :: 		rd3_bit=0;
	BCF        RD3_bit+0, BitPos(RD3_bit+0)
;4th.c,12 :: 		trisb=0;
	CLRF       TRISB+0
;4th.c,13 :: 		portb=0;
	CLRF       PORTB+0
;4th.c,14 :: 		while(1){
L_main0:
;4th.c,15 :: 		if(rd0_bit==0&&f==0){
	BTFSC      RD0_bit+0, BitPos(RD0_bit+0)
	GOTO       L_main4
	MOVF       main_f_L0+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main4
L__main51:
;4th.c,16 :: 		delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	NOP
	NOP
;4th.c,17 :: 		if(rd0_bit==0&&f==0){
	BTFSC      RD0_bit+0, BitPos(RD0_bit+0)
	GOTO       L_main8
	MOVF       main_f_L0+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main8
L__main50:
;4th.c,18 :: 		f=1;
	MOVLW      1
	MOVWF      main_f_L0+0
;4th.c,19 :: 		c++;
	INCF       main_c_L0+0, 1
;4th.c,20 :: 		}
L_main8:
;4th.c,21 :: 		}
L_main4:
;4th.c,23 :: 		if(rd1_bit==0&&f2==0){
	BTFSC      RD1_bit+0, BitPos(RD1_bit+0)
	GOTO       L_main11
	MOVF       main_f2_L0+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main11
L__main49:
;4th.c,24 :: 		delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main12:
	DECFSZ     R13+0, 1
	GOTO       L_main12
	DECFSZ     R12+0, 1
	GOTO       L_main12
	NOP
	NOP
;4th.c,25 :: 		if(rd1_bit==0&&f2==0){
	BTFSC      RD1_bit+0, BitPos(RD1_bit+0)
	GOTO       L_main15
	MOVF       main_f2_L0+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main15
L__main48:
;4th.c,26 :: 		f2=1;
	MOVLW      1
	MOVWF      main_f2_L0+0
;4th.c,27 :: 		c2++;
	INCF       main_c2_L0+0, 1
;4th.c,28 :: 		}
L_main15:
;4th.c,29 :: 		}
L_main11:
;4th.c,31 :: 		if(rd0_bit==1){f=0;}
	BTFSS      RD0_bit+0, BitPos(RD0_bit+0)
	GOTO       L_main16
	CLRF       main_f_L0+0
L_main16:
;4th.c,32 :: 		if(rd1_bit==1){f2=0;}
	BTFSS      RD1_bit+0, BitPos(RD1_bit+0)
	GOTO       L_main17
	CLRF       main_f2_L0+0
L_main17:
;4th.c,33 :: 		if(c2==1||c==1){portb=255;}
	MOVF       main_c2_L0+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L__main47
	MOVF       main_c_L0+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L__main47
	GOTO       L_main20
L__main47:
	MOVLW      255
	MOVWF      PORTB+0
L_main20:
;4th.c,34 :: 		if(c2==2||c==2){portb=0b10101010;}
	MOVF       main_c2_L0+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L__main46
	MOVF       main_c_L0+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L__main46
	GOTO       L_main23
L__main46:
	MOVLW      170
	MOVWF      PORTB+0
L_main23:
;4th.c,35 :: 		if(c2==3||c==3){portb=0b11000011;}
	MOVF       main_c2_L0+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L__main45
	MOVF       main_c_L0+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L__main45
	GOTO       L_main26
L__main45:
	MOVLW      195
	MOVWF      PORTB+0
L_main26:
;4th.c,36 :: 		if(c2==4||c==4){portb=0b00111100;}
	MOVF       main_c2_L0+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L__main44
	MOVF       main_c_L0+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L__main44
	GOTO       L_main29
L__main44:
	MOVLW      60
	MOVWF      PORTB+0
L_main29:
;4th.c,37 :: 		if(c2==5||c==5){portb=0;}
	MOVF       main_c2_L0+0, 0
	XORLW      5
	BTFSC      STATUS+0, 2
	GOTO       L__main43
	MOVF       main_c_L0+0, 0
	XORLW      5
	BTFSC      STATUS+0, 2
	GOTO       L__main43
	GOTO       L_main32
L__main43:
	CLRF       PORTB+0
L_main32:
;4th.c,38 :: 		if(c2==6||c==6){c=1;c2=1;}
	MOVF       main_c2_L0+0, 0
	XORLW      6
	BTFSC      STATUS+0, 2
	GOTO       L__main42
	MOVF       main_c_L0+0, 0
	XORLW      6
	BTFSC      STATUS+0, 2
	GOTO       L__main42
	GOTO       L_main35
L__main42:
	MOVLW      1
	MOVWF      main_c_L0+0
	MOVLW      1
	MOVWF      main_c2_L0+0
L_main35:
;4th.c,40 :: 		if(rd1_bit==1){f2=0;}
	BTFSS      RD1_bit+0, BitPos(RD1_bit+0)
	GOTO       L_main36
	CLRF       main_f2_L0+0
L_main36:
;4th.c,41 :: 		if(c2==1){rd2_bit==0b0; rd3_bit==0b1;}
	MOVF       main_c2_L0+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_main37
L_main37:
;4th.c,42 :: 		if(c2==2){rd2_bit==0b0; rd3_bit==0b0;}
	MOVF       main_c2_L0+0, 0
	XORLW      2
	BTFSS      STATUS+0, 2
	GOTO       L_main38
L_main38:
;4th.c,43 :: 		if(c2==3){rd2_bit==0b1; rd3_bit==0b0;}
	MOVF       main_c2_L0+0, 0
	XORLW      3
	BTFSS      STATUS+0, 2
	GOTO       L_main39
L_main39:
;4th.c,44 :: 		if(c2==4){rd2_bit==0b1; rd3_bit==0b1;}
	MOVF       main_c2_L0+0, 0
	XORLW      4
	BTFSS      STATUS+0, 2
	GOTO       L_main40
L_main40:
;4th.c,45 :: 		if(c2==5){c2==1;}
	MOVF       main_c2_L0+0, 0
	XORLW      5
	BTFSS      STATUS+0, 2
	GOTO       L_main41
L_main41:
;4th.c,47 :: 		}
	GOTO       L_main0
;4th.c,48 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

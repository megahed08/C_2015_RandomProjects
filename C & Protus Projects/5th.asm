
_main:

;5th.c,1 :: 		void main() {
;5th.c,2 :: 		short f=0;
	CLRF       main_f_L0+0
	CLRF       main_c_L0+0
	CLRF       main_f2_L0+0
	CLRF       main_c2_L0+0
;5th.c,6 :: 		trisd0_bit=1;
	BSF        TRISD0_bit+0, BitPos(TRISD0_bit+0)
;5th.c,7 :: 		trisd1_bit=1;
	BSF        TRISD1_bit+0, BitPos(TRISD1_bit+0)
;5th.c,8 :: 		trisd2_bit=0;
	BCF        TRISD2_bit+0, BitPos(TRISD2_bit+0)
;5th.c,9 :: 		trisd3_bit=0;
	BCF        TRISD3_bit+0, BitPos(TRISD3_bit+0)
;5th.c,10 :: 		rd2_bit=0;
	BCF        RD2_bit+0, BitPos(RD2_bit+0)
;5th.c,11 :: 		rd3_bit=0;
	BCF        RD3_bit+0, BitPos(RD3_bit+0)
;5th.c,12 :: 		trisb=0;
	CLRF       TRISB+0
;5th.c,13 :: 		portb=0;
	CLRF       PORTB+0
;5th.c,14 :: 		while(1){
L_main0:
;5th.c,15 :: 		if(rd0_bit==0&&f==0){
	BTFSC      RD0_bit+0, BitPos(RD0_bit+0)
	GOTO       L_main4
	MOVF       main_f_L0+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main4
L__main32:
;5th.c,16 :: 		delay_ms(100);
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
;5th.c,17 :: 		if(rd0_bit==0&&f==0){
	BTFSC      RD0_bit+0, BitPos(RD0_bit+0)
	GOTO       L_main8
	MOVF       main_f_L0+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main8
L__main31:
;5th.c,18 :: 		f=1;
	MOVLW      1
	MOVWF      main_f_L0+0
;5th.c,19 :: 		c++;
	INCF       main_c_L0+0, 1
;5th.c,20 :: 		}
L_main8:
;5th.c,21 :: 		}
L_main4:
;5th.c,22 :: 		if(rd0_bit==1){f=0;}
	BTFSS      RD0_bit+0, BitPos(RD0_bit+0)
	GOTO       L_main9
	CLRF       main_f_L0+0
L_main9:
;5th.c,23 :: 		if(c==1){portb=255;}
	MOVF       main_c_L0+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_main10
	MOVLW      255
	MOVWF      PORTB+0
L_main10:
;5th.c,24 :: 		if(c==2){portb=0b10101010;}
	MOVF       main_c_L0+0, 0
	XORLW      2
	BTFSS      STATUS+0, 2
	GOTO       L_main11
	MOVLW      170
	MOVWF      PORTB+0
L_main11:
;5th.c,25 :: 		if(c==3){portb=0b11000011;}
	MOVF       main_c_L0+0, 0
	XORLW      3
	BTFSS      STATUS+0, 2
	GOTO       L_main12
	MOVLW      195
	MOVWF      PORTB+0
L_main12:
;5th.c,26 :: 		if(c==4){portb=0b00111100;}
	MOVF       main_c_L0+0, 0
	XORLW      4
	BTFSS      STATUS+0, 2
	GOTO       L_main13
	MOVLW      60
	MOVWF      PORTB+0
L_main13:
;5th.c,27 :: 		if(c==5){portb=0;}
	MOVF       main_c_L0+0, 0
	XORLW      5
	BTFSS      STATUS+0, 2
	GOTO       L_main14
	CLRF       PORTB+0
L_main14:
;5th.c,28 :: 		if(c==6){c=1;}
	MOVF       main_c_L0+0, 0
	XORLW      6
	BTFSS      STATUS+0, 2
	GOTO       L_main15
	MOVLW      1
	MOVWF      main_c_L0+0
L_main15:
;5th.c,30 :: 		if(rd1_bit==0&&f2==0){
	BTFSC      RD1_bit+0, BitPos(RD1_bit+0)
	GOTO       L_main18
	MOVF       main_f2_L0+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main18
L__main30:
;5th.c,31 :: 		delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main19:
	DECFSZ     R13+0, 1
	GOTO       L_main19
	DECFSZ     R12+0, 1
	GOTO       L_main19
	NOP
	NOP
;5th.c,32 :: 		if(rd1_bit==0&&f2==0){
	BTFSC      RD1_bit+0, BitPos(RD1_bit+0)
	GOTO       L_main22
	MOVF       main_f2_L0+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main22
L__main29:
;5th.c,33 :: 		f2=1;
	MOVLW      1
	MOVWF      main_f2_L0+0
;5th.c,34 :: 		c2++;
	INCF       main_c2_L0+0, 1
;5th.c,35 :: 		}
L_main22:
;5th.c,36 :: 		}
L_main18:
;5th.c,37 :: 		if(rd1_bit==1){f2=0;}
	BTFSS      RD1_bit+0, BitPos(RD1_bit+0)
	GOTO       L_main23
	CLRF       main_f2_L0+0
L_main23:
;5th.c,38 :: 		if(c2==1){rd2_bit=0; rd3_bit=1;}
	MOVF       main_c2_L0+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_main24
	BCF        RD2_bit+0, BitPos(RD2_bit+0)
	BSF        RD3_bit+0, BitPos(RD3_bit+0)
L_main24:
;5th.c,39 :: 		if(c2==2){rd2_bit=0; rd3_bit=0;}
	MOVF       main_c2_L0+0, 0
	XORLW      2
	BTFSS      STATUS+0, 2
	GOTO       L_main25
	BCF        RD2_bit+0, BitPos(RD2_bit+0)
	BCF        RD3_bit+0, BitPos(RD3_bit+0)
L_main25:
;5th.c,40 :: 		if(c2==3){rd2_bit=1; rd3_bit=0;}
	MOVF       main_c2_L0+0, 0
	XORLW      3
	BTFSS      STATUS+0, 2
	GOTO       L_main26
	BSF        RD2_bit+0, BitPos(RD2_bit+0)
	BCF        RD3_bit+0, BitPos(RD3_bit+0)
L_main26:
;5th.c,41 :: 		if(c2==4){rd2_bit=1; rd3_bit=1;}
	MOVF       main_c2_L0+0, 0
	XORLW      4
	BTFSS      STATUS+0, 2
	GOTO       L_main27
	BSF        RD2_bit+0, BitPos(RD2_bit+0)
	BSF        RD3_bit+0, BitPos(RD3_bit+0)
L_main27:
;5th.c,42 :: 		if(c2==5){c2=1;}
	MOVF       main_c2_L0+0, 0
	XORLW      5
	BTFSS      STATUS+0, 2
	GOTO       L_main28
	MOVLW      1
	MOVWF      main_c2_L0+0
L_main28:
;5th.c,43 :: 		}
	GOTO       L_main0
;5th.c,44 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

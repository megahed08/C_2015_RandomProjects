
_main:

;first-hw2.c,1 :: 		void main() {
;first-hw2.c,3 :: 		unsigned x=0b00000001;
	MOVLW      1
	MOVWF      main_x_L0+0
	MOVLW      0
	MOVWF      main_x_L0+1
	MOVLW      128
	MOVWF      main_y_L0+0
	MOVLW      0
	MOVWF      main_y_L0+1
;first-hw2.c,5 :: 		trisb=0b00000000;
	CLRF       TRISB+0
;first-hw2.c,6 :: 		portb=0b00000000;
	CLRF       PORTB+0
;first-hw2.c,7 :: 		while(1){
L_main0:
;first-hw2.c,8 :: 		for(i=0;i<4;i++){
	CLRF       R5+0
L_main2:
	MOVLW      128
	XORWF      R5+0, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      4
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main3
;first-hw2.c,9 :: 		delay_ms(200);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	NOP
;first-hw2.c,10 :: 		portb=portb+x+y;
	MOVF       main_x_L0+0, 0
	ADDWF      PORTB+0, 0
	MOVWF      R0+0
	MOVF       main_y_L0+0, 0
	ADDWF      R0+0, 0
	MOVWF      PORTB+0
;first-hw2.c,11 :: 		x=x<<1;
	RLF        main_x_L0+0, 1
	RLF        main_x_L0+1, 1
	BCF        main_x_L0+0, 0
;first-hw2.c,12 :: 		y=y>>1;
	RRF        main_y_L0+1, 1
	RRF        main_y_L0+0, 1
	BCF        main_y_L0+1, 7
;first-hw2.c,8 :: 		for(i=0;i<4;i++){
	INCF       R5+0, 1
;first-hw2.c,13 :: 		}
	GOTO       L_main2
L_main3:
;first-hw2.c,14 :: 		for(i=0;i<4;i++){
	CLRF       R5+0
L_main6:
	MOVLW      128
	XORWF      R5+0, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      4
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main7
;first-hw2.c,15 :: 		delay_ms(200);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	DECFSZ     R11+0, 1
	GOTO       L_main9
	NOP
;first-hw2.c,16 :: 		x=x>>1;
	MOVF       main_x_L0+0, 0
	MOVWF      R3+0
	MOVF       main_x_L0+1, 0
	MOVWF      R3+1
	RRF        R3+1, 1
	RRF        R3+0, 1
	BCF        R3+1, 7
	MOVF       R3+0, 0
	MOVWF      main_x_L0+0
	MOVF       R3+1, 0
	MOVWF      main_x_L0+1
;first-hw2.c,17 :: 		y=y<<1;
	MOVF       main_y_L0+0, 0
	MOVWF      R0+0
	MOVF       main_y_L0+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	MOVWF      main_y_L0+0
	MOVF       R0+1, 0
	MOVWF      main_y_L0+1
;first-hw2.c,18 :: 		portb=portb-(x+y);
	MOVF       R3+0, 0
	ADDWF      R0+0, 1
	MOVF       R0+0, 0
	SUBWF      PORTB+0, 1
;first-hw2.c,14 :: 		for(i=0;i<4;i++){
	INCF       R5+0, 1
;first-hw2.c,19 :: 		}
	GOTO       L_main6
L_main7:
;first-hw2.c,20 :: 		}
	GOTO       L_main0
;first-hw2.c,22 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

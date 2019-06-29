
_main:

;first-hw.c,1 :: 		void main() {
;first-hw.c,3 :: 		trisb=0b00000000;
	CLRF       TRISB+0
;first-hw.c,4 :: 		trisc=0b00000000;
	CLRF       TRISC+0
;first-hw.c,5 :: 		while(1){
L_main0:
;first-hw.c,6 :: 		portb=0b00000001;
	MOVLW      1
	MOVWF      PORTB+0
;first-hw.c,7 :: 		portc=0b00001000;
	MOVLW      8
	MOVWF      PORTC+0
;first-hw.c,8 :: 		i=0;
	CLRF       R2+0
;first-hw.c,9 :: 		while(i<3){
L_main2:
	MOVLW      128
	XORWF      R2+0, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      3
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main3
;first-hw.c,10 :: 		delay_ms(200);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	DECFSZ     R11+0, 1
	GOTO       L_main4
	NOP
;first-hw.c,11 :: 		portb=portb<<1;
	MOVF       PORTB+0, 0
	MOVWF      R0+0
	RLF        R0+0, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;first-hw.c,12 :: 		portc=portc>>1;
	MOVF       PORTC+0, 0
	MOVWF      R0+0
	RRF        R0+0, 1
	BCF        R0+0, 7
	MOVF       R0+0, 0
	MOVWF      PORTC+0
;first-hw.c,13 :: 		i++;
	INCF       R2+0, 1
;first-hw.c,14 :: 		}
	GOTO       L_main2
L_main3:
;first-hw.c,16 :: 		portb=0b00001000;
	MOVLW      8
	MOVWF      PORTB+0
;first-hw.c,17 :: 		portc=0b00000001;
	MOVLW      1
	MOVWF      PORTC+0
;first-hw.c,18 :: 		i=0;
	CLRF       R2+0
;first-hw.c,20 :: 		while(i<3){
L_main5:
	MOVLW      128
	XORWF      R2+0, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      3
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main6
;first-hw.c,21 :: 		delay_ms(200);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	DECFSZ     R11+0, 1
	GOTO       L_main7
	NOP
;first-hw.c,22 :: 		portb=portb>>1;
	MOVF       PORTB+0, 0
	MOVWF      R0+0
	RRF        R0+0, 1
	BCF        R0+0, 7
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;first-hw.c,23 :: 		portc=portc<<1;
	MOVF       PORTC+0, 0
	MOVWF      R0+0
	RLF        R0+0, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	MOVWF      PORTC+0
;first-hw.c,24 :: 		i++;
	INCF       R2+0, 1
;first-hw.c,25 :: 		}
	GOTO       L_main5
L_main6:
;first-hw.c,26 :: 		}
	GOTO       L_main0
;first-hw.c,27 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

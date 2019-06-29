
_main:

;first2.c,1 :: 		void main() {
;first2.c,3 :: 		trisb=0b00000000;
	CLRF       TRISB+0
;first2.c,4 :: 		portb=0b10000000;
	MOVLW      128
	MOVWF      PORTB+0
;first2.c,5 :: 		while(1){
L_main0:
;first2.c,6 :: 		portb=0b10000000;
	MOVLW      128
	MOVWF      PORTB+0
;first2.c,7 :: 		i=0;
	CLRF       R2+0
;first2.c,8 :: 		while(i<7){
L_main2:
	MOVLW      128
	XORWF      R2+0, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      7
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main3
;first2.c,9 :: 		delay_ms(200);
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
;first2.c,10 :: 		portb=portb>>1;
	MOVF       PORTB+0, 0
	MOVWF      R0+0
	RRF        R0+0, 1
	BCF        R0+0, 7
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;first2.c,11 :: 		i++;
	INCF       R2+0, 1
;first2.c,12 :: 		}
	GOTO       L_main2
L_main3:
;first2.c,14 :: 		portb=0b00000001;
	MOVLW      1
	MOVWF      PORTB+0
;first2.c,15 :: 		i=0;
	CLRF       R2+0
;first2.c,17 :: 		while(i<7){
L_main5:
	MOVLW      128
	XORWF      R2+0, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      7
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main6
;first2.c,18 :: 		delay_ms(200);
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
;first2.c,19 :: 		portb=portb<<1;
	MOVF       PORTB+0, 0
	MOVWF      R0+0
	RLF        R0+0, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;first2.c,20 :: 		i++;
	INCF       R2+0, 1
;first2.c,21 :: 		}
	GOTO       L_main5
L_main6:
;first2.c,22 :: 		}
	GOTO       L_main0
;first2.c,23 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

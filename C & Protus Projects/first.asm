
_main:

;first.c,2 :: 		void main() {
;first.c,4 :: 		trisb= 0b00000000;
	CLRF       TRISB+0
;first.c,5 :: 		portb= 0b00000000;
	CLRF       PORTB+0
;first.c,8 :: 		for(i=0;i<10;i++){
	CLRF       R1+0
L_main0:
	MOVLW      128
	XORWF      R1+0, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      10
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main1
;first.c,9 :: 		portb=~portb;
	COMF       PORTB+0, 1
;first.c,10 :: 		delay_ms(200);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
;first.c,11 :: 		portb= 0b01010101;
	MOVLW      85
	MOVWF      PORTB+0
;first.c,12 :: 		delay_ms(200);
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
;first.c,13 :: 		portb=~ portb;
	COMF       PORTB+0, 1
;first.c,14 :: 		delay_ms(200);
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
;first.c,15 :: 		portb= 0b11000011;
	MOVLW      195
	MOVWF      PORTB+0
;first.c,16 :: 		delay_ms(200);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	DECFSZ     R11+0, 1
	GOTO       L_main6
	NOP
;first.c,17 :: 		portb=~ portb;
	COMF       PORTB+0, 1
;first.c,18 :: 		delay_ms(200);
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
;first.c,19 :: 		portb= 0;
	CLRF       PORTB+0
;first.c,20 :: 		delay_ms(200);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	DECFSZ     R11+0, 1
	GOTO       L_main8
	NOP
;first.c,8 :: 		for(i=0;i<10;i++){
	INCF       R1+0, 1
;first.c,21 :: 		}
	GOTO       L_main0
L_main1:
;first.c,22 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

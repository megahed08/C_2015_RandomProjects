
_main:

;2nd1.c,1 :: 		void main() {
;2nd1.c,3 :: 		trisb=0b00000000;
	CLRF       TRISB+0
;2nd1.c,4 :: 		portb=0b00000000;
	CLRF       PORTB+0
;2nd1.c,5 :: 		while(1){
L_main0:
;2nd1.c,7 :: 		for(i=0;i<5;i++){
	CLRF       R1+0
L_main2:
	MOVLW      128
	XORWF      R1+0, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      5
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main3
;2nd1.c,8 :: 		RB0_bit=1;
	BSF        RB0_bit+0, BitPos(RB0_bit+0)
;2nd1.c,9 :: 		delay_ms(1);
	MOVLW      2
	MOVWF      R12+0
	MOVLW      75
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
;2nd1.c,10 :: 		RB0_bit=0;
	BCF        RB0_bit+0, BitPos(RB0_bit+0)
;2nd1.c,11 :: 		delay_ms(19);
	MOVLW      25
	MOVWF      R12+0
	MOVLW      171
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	NOP
	NOP
;2nd1.c,7 :: 		for(i=0;i<5;i++){
	INCF       R1+0, 1
;2nd1.c,12 :: 		}
	GOTO       L_main2
L_main3:
;2nd1.c,13 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	DECFSZ     R11+0, 1
	GOTO       L_main7
	NOP
	NOP
;2nd1.c,16 :: 		for(i=0;i<5;i++){
	CLRF       R1+0
L_main8:
	MOVLW      128
	XORWF      R1+0, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      5
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main9
;2nd1.c,17 :: 		RB0_bit=1;
	BSF        RB0_bit+0, BitPos(RB0_bit+0)
;2nd1.c,18 :: 		delay_us(1166);
	MOVLW      2
	MOVWF      R12+0
	MOVLW      130
	MOVWF      R13+0
L_main11:
	DECFSZ     R13+0, 1
	GOTO       L_main11
	DECFSZ     R12+0, 1
	GOTO       L_main11
	NOP
;2nd1.c,19 :: 		RB0_bit=0;
	BCF        RB0_bit+0, BitPos(RB0_bit+0)
;2nd1.c,20 :: 		delay_us(18834);
	MOVLW      25
	MOVWF      R12+0
	MOVLW      116
	MOVWF      R13+0
L_main12:
	DECFSZ     R13+0, 1
	GOTO       L_main12
	DECFSZ     R12+0, 1
	GOTO       L_main12
	NOP
;2nd1.c,16 :: 		for(i=0;i<5;i++){
	INCF       R1+0, 1
;2nd1.c,21 :: 		}
	GOTO       L_main8
L_main9:
;2nd1.c,22 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main13:
	DECFSZ     R13+0, 1
	GOTO       L_main13
	DECFSZ     R12+0, 1
	GOTO       L_main13
	DECFSZ     R11+0, 1
	GOTO       L_main13
	NOP
	NOP
;2nd1.c,25 :: 		for(i=0;i<5;i++){
	CLRF       R1+0
L_main14:
	MOVLW      128
	XORWF      R1+0, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      5
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main15
;2nd1.c,26 :: 		RB0_bit=1;
	BSF        RB0_bit+0, BitPos(RB0_bit+0)
;2nd1.c,27 :: 		delay_us(1333);
	MOVLW      2
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main17:
	DECFSZ     R13+0, 1
	GOTO       L_main17
	DECFSZ     R12+0, 1
	GOTO       L_main17
;2nd1.c,28 :: 		RB0_bit=0;
	BCF        RB0_bit+0, BitPos(RB0_bit+0)
;2nd1.c,29 :: 		delay_us(18667);
	MOVLW      25
	MOVWF      R12+0
	MOVLW      60
	MOVWF      R13+0
L_main18:
	DECFSZ     R13+0, 1
	GOTO       L_main18
	DECFSZ     R12+0, 1
	GOTO       L_main18
	NOP
	NOP
;2nd1.c,25 :: 		for(i=0;i<5;i++){
	INCF       R1+0, 1
;2nd1.c,30 :: 		}
	GOTO       L_main14
L_main15:
;2nd1.c,31 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main19:
	DECFSZ     R13+0, 1
	GOTO       L_main19
	DECFSZ     R12+0, 1
	GOTO       L_main19
	DECFSZ     R11+0, 1
	GOTO       L_main19
	NOP
	NOP
;2nd1.c,34 :: 		for(i=0;i<5;i++){
	CLRF       R1+0
L_main20:
	MOVLW      128
	XORWF      R1+0, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      5
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main21
;2nd1.c,35 :: 		RB0_bit=1;
	BSF        RB0_bit+0, BitPos(RB0_bit+0)
;2nd1.c,36 :: 		delay_us(1500);
	MOVLW      2
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_main23:
	DECFSZ     R13+0, 1
	GOTO       L_main23
	DECFSZ     R12+0, 1
	GOTO       L_main23
	NOP
	NOP
;2nd1.c,37 :: 		RB0_bit=0;
	BCF        RB0_bit+0, BitPos(RB0_bit+0)
;2nd1.c,38 :: 		delay_us(18500);
	MOVLW      25
	MOVWF      R12+0
	MOVLW      5
	MOVWF      R13+0
L_main24:
	DECFSZ     R13+0, 1
	GOTO       L_main24
	DECFSZ     R12+0, 1
	GOTO       L_main24
;2nd1.c,34 :: 		for(i=0;i<5;i++){
	INCF       R1+0, 1
;2nd1.c,39 :: 		}
	GOTO       L_main20
L_main21:
;2nd1.c,40 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main25:
	DECFSZ     R13+0, 1
	GOTO       L_main25
	DECFSZ     R12+0, 1
	GOTO       L_main25
	DECFSZ     R11+0, 1
	GOTO       L_main25
	NOP
	NOP
;2nd1.c,43 :: 		for(i=0;i<5;i++){
	CLRF       R1+0
L_main26:
	MOVLW      128
	XORWF      R1+0, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      5
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main27
;2nd1.c,44 :: 		RB0_bit=1;
	BSF        RB0_bit+0, BitPos(RB0_bit+0)
;2nd1.c,45 :: 		delay_us(1666);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      40
	MOVWF      R13+0
L_main29:
	DECFSZ     R13+0, 1
	GOTO       L_main29
	DECFSZ     R12+0, 1
	GOTO       L_main29
	NOP
;2nd1.c,46 :: 		RB0_bit=0;
	BCF        RB0_bit+0, BitPos(RB0_bit+0)
;2nd1.c,47 :: 		delay_us(18334);
	MOVLW      24
	MOVWF      R12+0
	MOVLW      206
	MOVWF      R13+0
L_main30:
	DECFSZ     R13+0, 1
	GOTO       L_main30
	DECFSZ     R12+0, 1
	GOTO       L_main30
	NOP
;2nd1.c,43 :: 		for(i=0;i<5;i++){
	INCF       R1+0, 1
;2nd1.c,48 :: 		}
	GOTO       L_main26
L_main27:
;2nd1.c,49 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main31:
	DECFSZ     R13+0, 1
	GOTO       L_main31
	DECFSZ     R12+0, 1
	GOTO       L_main31
	DECFSZ     R11+0, 1
	GOTO       L_main31
	NOP
	NOP
;2nd1.c,52 :: 		for(i=0;i<5;i++){
	CLRF       R1+0
L_main32:
	MOVLW      128
	XORWF      R1+0, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      5
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main33
;2nd1.c,53 :: 		RB0_bit=1;
	BSF        RB0_bit+0, BitPos(RB0_bit+0)
;2nd1.c,54 :: 		delay_us(1833);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      96
	MOVWF      R13+0
L_main35:
	DECFSZ     R13+0, 1
	GOTO       L_main35
	DECFSZ     R12+0, 1
	GOTO       L_main35
;2nd1.c,55 :: 		RB0_bit=0;
	BCF        RB0_bit+0, BitPos(RB0_bit+0)
;2nd1.c,56 :: 		delay_us(18167);
	MOVLW      24
	MOVWF      R12+0
	MOVLW      150
	MOVWF      R13+0
L_main36:
	DECFSZ     R13+0, 1
	GOTO       L_main36
	DECFSZ     R12+0, 1
	GOTO       L_main36
	NOP
	NOP
;2nd1.c,52 :: 		for(i=0;i<5;i++){
	INCF       R1+0, 1
;2nd1.c,57 :: 		}
	GOTO       L_main32
L_main33:
;2nd1.c,58 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main37:
	DECFSZ     R13+0, 1
	GOTO       L_main37
	DECFSZ     R12+0, 1
	GOTO       L_main37
	DECFSZ     R11+0, 1
	GOTO       L_main37
	NOP
	NOP
;2nd1.c,61 :: 		for(i=0;i<5;i++){
	CLRF       R1+0
L_main38:
	MOVLW      128
	XORWF      R1+0, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      5
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main39
;2nd1.c,62 :: 		RB0_bit=1;
	BSF        RB0_bit+0, BitPos(RB0_bit+0)
;2nd1.c,63 :: 		delay_ms(2);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_main41:
	DECFSZ     R13+0, 1
	GOTO       L_main41
	DECFSZ     R12+0, 1
	GOTO       L_main41
	NOP
	NOP
;2nd1.c,64 :: 		RB0_bit=0;
	BCF        RB0_bit+0, BitPos(RB0_bit+0)
;2nd1.c,65 :: 		delay_ms(18);
	MOVLW      24
	MOVWF      R12+0
	MOVLW      95
	MOVWF      R13+0
L_main42:
	DECFSZ     R13+0, 1
	GOTO       L_main42
	DECFSZ     R12+0, 1
	GOTO       L_main42
;2nd1.c,61 :: 		for(i=0;i<5;i++){
	INCF       R1+0, 1
;2nd1.c,66 :: 		}
	GOTO       L_main38
L_main39:
;2nd1.c,67 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main43:
	DECFSZ     R13+0, 1
	GOTO       L_main43
	DECFSZ     R12+0, 1
	GOTO       L_main43
	DECFSZ     R11+0, 1
	GOTO       L_main43
	NOP
	NOP
;2nd1.c,68 :: 		}
	GOTO       L_main0
;2nd1.c,69 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

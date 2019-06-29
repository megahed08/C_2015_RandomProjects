
_main:

;blutooth1.c,4 :: 		void main(){
;blutooth1.c,5 :: 		TRISB=0;
	CLRF       TRISB+0
;blutooth1.c,6 :: 		PORTB=0b00000001;
	MOVLW      1
	MOVWF      PORTB+0
;blutooth1.c,7 :: 		UART1_Init(9600);
	MOVLW      25
	MOVWF      SPBRG+0
	BSF        TXSTA+0, 2
	CALL       _UART1_Init+0
;blutooth1.c,8 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main0:
	DECFSZ     R13+0, 1
	GOTO       L_main0
	DECFSZ     R12+0, 1
	GOTO       L_main0
	NOP
	NOP
;blutooth1.c,9 :: 		while(1){
L_main1:
;blutooth1.c,10 :: 		if(UART1_Data_Ready()){
	CALL       _UART1_Data_Ready+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main3
;blutooth1.c,11 :: 		read=UART1_Read();
	CALL       _UART1_Read+0
	MOVF       R0+0, 0
	MOVWF      _read+0
;blutooth1.c,12 :: 		Delay_ms(10);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	NOP
	NOP
;blutooth1.c,13 :: 		if(read=='s'){
	MOVF       _read+0, 0
	XORLW      115
	BTFSS      STATUS+0, 2
	GOTO       L_main5
;blutooth1.c,14 :: 		PORTB=portb<<1;
	MOVF       PORTB+0, 0
	MOVWF      R0+0
	RLF        R0+0, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;blutooth1.c,15 :: 		if(PORTB==0b00000000){
	MOVF       PORTB+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main6
;blutooth1.c,16 :: 		PORTB=0b00000001;
	MOVLW      1
	MOVWF      PORTB+0
;blutooth1.c,17 :: 		}
L_main6:
;blutooth1.c,18 :: 		}
L_main5:
;blutooth1.c,19 :: 		if(read=='b'){
	MOVF       _read+0, 0
	XORLW      98
	BTFSS      STATUS+0, 2
	GOTO       L_main7
;blutooth1.c,20 :: 		PORTB=0b11111111;
	MOVLW      255
	MOVWF      PORTB+0
;blutooth1.c,21 :: 		delay_ms (1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	DECFSZ     R11+0, 1
	GOTO       L_main8
	NOP
	NOP
;blutooth1.c,22 :: 		PORTB=0b00000000;
	CLRF       PORTB+0
;blutooth1.c,23 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	DECFSZ     R11+0, 1
	GOTO       L_main9
	NOP
	NOP
;blutooth1.c,24 :: 		PORTB=0b11111111;
	MOVLW      255
	MOVWF      PORTB+0
;blutooth1.c,25 :: 		delay_ms (1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main10:
	DECFSZ     R13+0, 1
	GOTO       L_main10
	DECFSZ     R12+0, 1
	GOTO       L_main10
	DECFSZ     R11+0, 1
	GOTO       L_main10
	NOP
	NOP
;blutooth1.c,26 :: 		PORTB=0b00000000;
	CLRF       PORTB+0
;blutooth1.c,27 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main11:
	DECFSZ     R13+0, 1
	GOTO       L_main11
	DECFSZ     R12+0, 1
	GOTO       L_main11
	DECFSZ     R11+0, 1
	GOTO       L_main11
	NOP
	NOP
;blutooth1.c,28 :: 		PORTB=0b11111111;
	MOVLW      255
	MOVWF      PORTB+0
;blutooth1.c,29 :: 		delay_ms (1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main12:
	DECFSZ     R13+0, 1
	GOTO       L_main12
	DECFSZ     R12+0, 1
	GOTO       L_main12
	DECFSZ     R11+0, 1
	GOTO       L_main12
	NOP
	NOP
;blutooth1.c,30 :: 		PORTB=0b00000000;
	CLRF       PORTB+0
;blutooth1.c,31 :: 		delay_ms(1000);
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
;blutooth1.c,32 :: 		PORTB=0b00000001;
	MOVLW      1
	MOVWF      PORTB+0
;blutooth1.c,33 :: 		}
L_main7:
;blutooth1.c,34 :: 		if(read=='o'){
	MOVF       _read+0, 0
	XORLW      111
	BTFSS      STATUS+0, 2
	GOTO       L_main14
;blutooth1.c,35 :: 		PORTB=0b11111111;
	MOVLW      255
	MOVWF      PORTB+0
;blutooth1.c,36 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main15:
	DECFSZ     R13+0, 1
	GOTO       L_main15
	DECFSZ     R12+0, 1
	GOTO       L_main15
	DECFSZ     R11+0, 1
	GOTO       L_main15
	NOP
	NOP
;blutooth1.c,37 :: 		PORTB=0b00000001;
	MOVLW      1
	MOVWF      PORTB+0
;blutooth1.c,38 :: 		}
L_main14:
;blutooth1.c,39 :: 		}
L_main3:
;blutooth1.c,40 :: 		}
	GOTO       L_main1
;blutooth1.c,41 :: 		}
	GOTO       $+0
; end of _main

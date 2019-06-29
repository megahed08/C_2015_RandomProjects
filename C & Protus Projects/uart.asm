
_main:

;uart.c,17 :: 		void main() {
;uart.c,18 :: 		trisc0_bit=0;
	BCF        TRISC0_bit+0, 0
;uart.c,19 :: 		lcd_init();
	CALL       _Lcd_Init+0
;uart.c,20 :: 		uart1_init(9600);
	MOVLW      25
	MOVWF      SPBRG+0
	BSF        TXSTA+0, 2
	CALL       _UART1_Init+0
;uart.c,21 :: 		uart1_write_text("yossof");
	MOVLW      ?lstr1_uart+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;uart.c,22 :: 		while(1){
L_main0:
;uart.c,23 :: 		if(uart1_data_ready()) {
	CALL       _UART1_Data_Ready+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main2
;uart.c,24 :: 		x = uart1_read();
	CALL       _UART1_Read+0
	MOVF       R0+0, 0
	MOVWF      _x+0
;uart.c,25 :: 		if(x=='y'){
	MOVF       R0+0, 0
	XORLW      121
	BTFSS      STATUS+0, 2
	GOTO       L_main3
;uart.c,26 :: 		rc0_bit=1;
	BSF        RC0_bit+0, 0
;uart.c,27 :: 		}
L_main3:
;uart.c,28 :: 		if(x=='n'){
	MOVF       _x+0, 0
	XORLW      110
	BTFSS      STATUS+0, 2
	GOTO       L_main4
;uart.c,29 :: 		rc0_bit=0;
	BCF        RC0_bit+0, 0
;uart.c,30 :: 		}
L_main4:
;uart.c,32 :: 		lcd_chr_cp(x);
	MOVF       _x+0, 0
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
;uart.c,33 :: 		}
L_main2:
;uart.c,34 :: 		}
	GOTO       L_main0
;uart.c,35 :: 		}
	GOTO       $+0
; end of _main

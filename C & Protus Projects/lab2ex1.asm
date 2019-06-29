
_main:

;lab2ex1.c,16 :: 		void main()
;lab2ex1.c,18 :: 		TRISB = 0;
	CLRF       TRISB+0
;lab2ex1.c,19 :: 		portB = 0;
	CLRF       PORTB+0
;lab2ex1.c,20 :: 		Glcd_Init(); // you have to initialize the GLCD module
	CALL       _Glcd_Init+0
;lab2ex1.c,21 :: 		Delay_ms(2000);
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_main0:
	DECFSZ     R13+0, 1
	GOTO       L_main0
	DECFSZ     R12+0, 1
	GOTO       L_main0
	DECFSZ     R11+0, 1
	GOTO       L_main0
	NOP
;lab2ex1.c,22 :: 		Glcd_Fill(0xFF); //Fill GLCD
	MOVLW      255
	MOVWF      FARG_Glcd_Fill_pattern+0
	CALL       _Glcd_Fill+0
;lab2ex1.c,23 :: 		Delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main1:
	DECFSZ     R13+0, 1
	GOTO       L_main1
	DECFSZ     R12+0, 1
	GOTO       L_main1
	DECFSZ     R11+0, 1
	GOTO       L_main1
	NOP
	NOP
;lab2ex1.c,24 :: 		Glcd_Fill(0x00); //Clear GLCD
	CLRF       FARG_Glcd_Fill_pattern+0
	CALL       _Glcd_Fill+0
;lab2ex1.c,25 :: 		Delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
	NOP
;lab2ex1.c,26 :: 		Glcd_Write_Text("Hello world", 30, 3, 1);
	MOVLW      ?lstr1_lab2ex1+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      30
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	MOVLW      3
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;lab2ex1.c,27 :: 		do
L_main3:
;lab2ex1.c,30 :: 		}while(1);
	GOTO       L_main3
;lab2ex1.c,31 :: 		}
	GOTO       $+0
; end of _main

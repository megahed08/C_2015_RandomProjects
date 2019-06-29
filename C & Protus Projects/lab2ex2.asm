
_main:

;lab2ex2.c,16 :: 		void main() {
;lab2ex2.c,18 :: 		TRISB = 0;
	CLRF       TRISB+0
;lab2ex2.c,19 :: 		PORTB = 0;
	CLRF       PORTB+0
;lab2ex2.c,21 :: 		Glcd_Init();
	CALL       _Glcd_Init+0
;lab2ex2.c,22 :: 		delay_ms(2000);
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
;lab2ex2.c,24 :: 		GLCD_Write_Text("Name",5,2,1);
	MOVLW      ?lstr1_lab2ex2+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      5
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	MOVLW      2
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;lab2ex2.c,25 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main1:
	DECFSZ     R13+0, 1
	GOTO       L_main1
	DECFSZ     R12+0, 1
	GOTO       L_main1
	DECFSZ     R11+0, 1
	GOTO       L_main1
	NOP
;lab2ex2.c,26 :: 		GLCD_Write_Text("ID",70,2,1);
	MOVLW      ?lstr2_lab2ex2+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      70
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	MOVLW      2
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;lab2ex2.c,27 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
;lab2ex2.c,28 :: 		GLCD_Write_Text("Reem",5,3,1);
	MOVLW      ?lstr3_lab2ex2+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      5
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	MOVLW      3
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;lab2ex2.c,29 :: 		delay_ms(100);
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
;lab2ex2.c,30 :: 		GLCD_Write_Text("28-5498",70,3,1);
	MOVLW      ?lstr4_lab2ex2+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      70
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	MOVLW      3
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;lab2ex2.c,31 :: 		delay_ms(100);
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
;lab2ex2.c,32 :: 		GLCD_Write_Text("Eman",5,4,1);
	MOVLW      ?lstr5_lab2ex2+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      5
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	MOVLW      4
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;lab2ex2.c,33 :: 		delay_ms(100);
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
;lab2ex2.c,34 :: 		GLCD_Write_Text("28-5775",70,4,1);
	MOVLW      ?lstr6_lab2ex2+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      70
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	MOVLW      4
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;lab2ex2.c,35 :: 		delay_ms(100);
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
;lab2ex2.c,36 :: 		GLCD_Write_Text("Duha",5,5,1);
	MOVLW      ?lstr7_lab2ex2+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      5
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	MOVLW      5
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;lab2ex2.c,37 :: 		delay_ms(100);
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
;lab2ex2.c,38 :: 		GLCD_Write_Text("28-2284",70,5,1);
	MOVLW      ?lstr8_lab2ex2+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      70
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	MOVLW      5
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;lab2ex2.c,39 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
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
;lab2ex2.c,41 :: 		while(1);
L_main9:
	GOTO       L_main9
;lab2ex2.c,42 :: 		}
	GOTO       $+0
; end of _main


_main:

;lab3ex1.c,25 :: 		void main()
;lab3ex1.c,28 :: 		TRISA = 0xFF;
	MOVLW      255
	MOVWF      TRISA+0
;lab3ex1.c,30 :: 		Glcd_Init(); // you have to initialize the GLCD module
	CALL       _Glcd_Init+0
;lab3ex1.c,31 :: 		Delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main0:
	DECFSZ     R13+0, 1
	GOTO       L_main0
	DECFSZ     R12+0, 1
	GOTO       L_main0
	DECFSZ     R11+0, 1
	GOTO       L_main0
	NOP
;lab3ex1.c,33 :: 		ADCON1 = 0x80;
	MOVLW      128
	MOVWF      ADCON1+0
;lab3ex1.c,34 :: 		temp = ADC_Read(1);
	MOVLW      1
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _temp+0
	MOVF       R0+1, 0
	MOVWF      _temp+1
;lab3ex1.c,36 :: 		volt = temp * (500000/1024);
	MOVLW      232
	MOVWF      R4+0
	MOVLW      1
	MOVWF      R4+1
	CALL       _Mul_16x16_U+0
	MOVF       R0+0, 0
	MOVWF      _volt+0
	MOVF       R0+1, 0
	MOVWF      _volt+1
	CLRF       _volt+2
	CLRF       _volt+3
;lab3ex1.c,37 :: 		LongtoStr(volt, final);
	MOVF       _volt+0, 0
	MOVWF      FARG_LongToStr_input+0
	MOVF       _volt+1, 0
	MOVWF      FARG_LongToStr_input+1
	MOVF       _volt+2, 0
	MOVWF      FARG_LongToStr_input+2
	MOVF       _volt+3, 0
	MOVWF      FARG_LongToStr_input+3
	MOVLW      _final+0
	MOVWF      FARG_LongToStr_output+0
	CALL       _LongToStr+0
;lab3ex1.c,39 :: 		volt1[0] = final[6];
	MOVF       _final+6, 0
	MOVWF      _volt1+0
;lab3ex1.c,40 :: 		volt1[2] = final[7];
	MOVF       _final+7, 0
	MOVWF      _volt1+2
;lab3ex1.c,41 :: 		volt1[3] = final[8];
	MOVF       _final+8, 0
	MOVWF      _volt1+3
;lab3ex1.c,42 :: 		volt1[4] = final[9];
	MOVF       _final+9, 0
	MOVWF      _volt1+4
;lab3ex1.c,44 :: 		GLCD_Write_Text("The Voltage is: ",0,2,1);
	MOVLW      ?lstr1_lab3ex1+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	CLRF       FARG_Glcd_Write_Text_x_pos+0
	MOVLW      2
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;lab3ex1.c,45 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main1:
	DECFSZ     R13+0, 1
	GOTO       L_main1
	DECFSZ     R12+0, 1
	GOTO       L_main1
	NOP
;lab3ex1.c,46 :: 		GLCD_Write_Text(volt1,60,3,1);
	MOVLW      _volt1+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      60
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	MOVLW      3
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;lab3ex1.c,47 :: 		delay_ms(1000);
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
;lab3ex1.c,49 :: 		}
	GOTO       $+0
; end of _main

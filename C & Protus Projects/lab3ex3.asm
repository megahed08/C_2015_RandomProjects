
_main:

;lab3ex3.c,26 :: 		void main()
;lab3ex3.c,29 :: 		TRISA = 0xFF;
	MOVLW      255
	MOVWF      TRISA+0
;lab3ex3.c,31 :: 		Glcd_Init(); // you have to initialize the GLCD module
	CALL       _Glcd_Init+0
;lab3ex3.c,32 :: 		Delay_ms(100);
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
;lab3ex3.c,34 :: 		ADCON1 = 0x80;
	MOVLW      128
	MOVWF      ADCON1+0
;lab3ex3.c,35 :: 		tmp = ADC_Read(1);
	MOVLW      1
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _tmp+0
	MOVF       R0+1, 0
	MOVWF      _tmp+1
;lab3ex3.c,37 :: 		volt = tmp * (1024/64);
	MOVF       R0+0, 0
	MOVWF      _volt+0
	MOVF       R0+1, 0
	MOVWF      _volt+1
	RLF        _volt+0, 1
	RLF        _volt+1, 1
	BCF        _volt+0, 0
	RLF        _volt+0, 1
	RLF        _volt+1, 1
	BCF        _volt+0, 0
	RLF        _volt+0, 1
	RLF        _volt+1, 1
	BCF        _volt+0, 0
	RLF        _volt+0, 1
	RLF        _volt+1, 1
	BCF        _volt+0, 0
;lab3ex3.c,40 :: 		for(i=0; i<128; i++){
	CLRF       _i+0
	CLRF       _i+1
L_main1:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main6
	MOVLW      128
	SUBWF      _i+0, 0
L__main6:
	BTFSC      STATUS+0, 0
	GOTO       L_main2
;lab3ex3.c,41 :: 		tmp = ADC_Read(1);
	MOVLW      1
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _tmp+0
	MOVF       R0+1, 0
	MOVWF      _tmp+1
;lab3ex3.c,42 :: 		volt = tmp / 16;
	MOVF       R0+0, 0
	MOVWF      R2+0
	MOVF       R0+1, 0
	MOVWF      R2+1
	RRF        R2+1, 1
	RRF        R2+0, 1
	BCF        R2+1, 7
	RRF        R2+1, 1
	RRF        R2+0, 1
	BCF        R2+1, 7
	RRF        R2+1, 1
	RRF        R2+0, 1
	BCF        R2+1, 7
	RRF        R2+1, 1
	RRF        R2+0, 1
	BCF        R2+1, 7
	MOVF       R2+0, 0
	MOVWF      _volt+0
	MOVF       R2+1, 0
	MOVWF      _volt+1
;lab3ex3.c,43 :: 		Glcd_Dot(i,volt,1);
	MOVF       _i+0, 0
	MOVWF      FARG_Glcd_Dot_x_pos+0
	MOVF       R2+0, 0
	MOVWF      FARG_Glcd_Dot_y_pos+0
	MOVLW      1
	MOVWF      FARG_Glcd_Dot_color+0
	CALL       _Glcd_Dot+0
;lab3ex3.c,45 :: 		if(i == 127){
	MOVLW      0
	XORWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main7
	MOVLW      127
	XORWF      _i+0, 0
L__main7:
	BTFSS      STATUS+0, 2
	GOTO       L_main4
;lab3ex3.c,46 :: 		Glcd_Fill(0x00);
	CLRF       FARG_Glcd_Fill_pattern+0
	CALL       _Glcd_Fill+0
;lab3ex3.c,47 :: 		delay_ms(100);
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
;lab3ex3.c,48 :: 		i = 0;
	CLRF       _i+0
	CLRF       _i+1
;lab3ex3.c,49 :: 		}
L_main4:
;lab3ex3.c,40 :: 		for(i=0; i<128; i++){
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;lab3ex3.c,50 :: 		}
	GOTO       L_main1
L_main2:
;lab3ex3.c,53 :: 		}
	GOTO       $+0
; end of _main

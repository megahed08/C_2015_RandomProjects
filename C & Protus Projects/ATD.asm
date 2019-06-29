
_main:

;ATD.c,113 :: 		void main() {
;ATD.c,114 :: 		ADCON1=0x80;
	MOVLW      128
	MOVWF      ADCON1+0
;ATD.c,115 :: 		TRISA=0xff;
	MOVLW      255
	MOVWF      TRISA+0
;ATD.c,116 :: 		Glcd_Init(); // you have to initialize the GLCD module
	CALL       _Glcd_Init+0
;ATD.c,117 :: 		Glcd_Fill(0x00); //Clear GLCD
	CLRF       FARG_Glcd_Fill_pattern+0
	CALL       _Glcd_Fill+0
;ATD.c,118 :: 		GLCD_V_line(0,64,0,1);
	CLRF       FARG_Glcd_V_Line_y_start+0
	MOVLW      64
	MOVWF      FARG_Glcd_V_Line_y_end+0
	CLRF       FARG_Glcd_V_Line_x_pos+0
	MOVLW      1
	MOVWF      FARG_Glcd_V_Line_color+0
	CALL       _Glcd_V_Line+0
;ATD.c,119 :: 		GLCD_H_line(0,128,32,1);
	CLRF       FARG_Glcd_H_Line_x_start+0
	MOVLW      128
	MOVWF      FARG_Glcd_H_Line_x_end+0
	MOVLW      32
	MOVWF      FARG_Glcd_H_Line_y_pos+0
	MOVLW      1
	MOVWF      FARG_Glcd_H_Line_color+0
	CALL       _Glcd_H_Line+0
;ATD.c,120 :: 		while(1){
L_main0:
;ATD.c,121 :: 		i++;
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;ATD.c,122 :: 		if(i==127){
	MOVLW      0
	XORWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main4
	MOVLW      127
	XORWF      _i+0, 0
L__main4:
	BTFSS      STATUS+0, 2
	GOTO       L_main2
;ATD.c,123 :: 		i=1;
	MOVLW      1
	MOVWF      _i+0
	MOVLW      0
	MOVWF      _i+1
;ATD.c,124 :: 		}
L_main2:
;ATD.c,125 :: 		out=ADC_Read(2)*63/1024;
	MOVLW      2
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVLW      63
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Mul_16x16_U+0
	MOVLW      10
	MOVWF      R2+0
	MOVF       R0+0, 0
	MOVWF      _out+0
	MOVF       R0+1, 0
	MOVWF      _out+1
	MOVF       R2+0, 0
L__main5:
	BTFSC      STATUS+0, 2
	GOTO       L__main6
	RRF        _out+1, 1
	RRF        _out+0, 1
	BCF        _out+1, 7
	ADDLW      255
	GOTO       L__main5
L__main6:
;ATD.c,126 :: 		GLCD_V_line(0,64,i+1,0);
	CLRF       FARG_Glcd_V_Line_y_start+0
	MOVLW      64
	MOVWF      FARG_Glcd_V_Line_y_end+0
	INCF       _i+0, 0
	MOVWF      FARG_Glcd_V_Line_x_pos+0
	CLRF       FARG_Glcd_V_Line_color+0
	CALL       _Glcd_V_Line+0
;ATD.c,127 :: 		GLCD_line(i-1,temp,i,64-(out),1);
	MOVLW      1
	SUBWF      _i+0, 0
	MOVWF      FARG_Glcd_Line_x_start+0
	MOVLW      0
	BTFSS      STATUS+0, 0
	ADDLW      1
	SUBWF      _i+1, 0
	MOVWF      FARG_Glcd_Line_x_start+1
	MOVF       _temp+0, 0
	MOVWF      FARG_Glcd_Line_y_start+0
	MOVF       _temp+1, 0
	MOVWF      FARG_Glcd_Line_y_start+1
	MOVF       _i+0, 0
	MOVWF      FARG_Glcd_Line_x_end+0
	MOVF       _i+1, 0
	MOVWF      FARG_Glcd_Line_x_end+1
	MOVF       _out+0, 0
	SUBLW      64
	MOVWF      FARG_Glcd_Line_y_end+0
	MOVF       _out+1, 0
	BTFSS      STATUS+0, 0
	ADDLW      1
	CLRF       FARG_Glcd_Line_y_end+1
	SUBWF      FARG_Glcd_Line_y_end+1, 1
	MOVLW      1
	MOVWF      FARG_Glcd_Line_color+0
	CALL       _Glcd_Line+0
;ATD.c,128 :: 		temp=64-(out);
	MOVF       _out+0, 0
	SUBLW      64
	MOVWF      _temp+0
	MOVF       _out+1, 0
	BTFSS      STATUS+0, 0
	ADDLW      1
	CLRF       _temp+1
	SUBWF      _temp+1, 1
;ATD.c,129 :: 		GLCD_H_line(0,128,32,1);
	CLRF       FARG_Glcd_H_Line_x_start+0
	MOVLW      128
	MOVWF      FARG_Glcd_H_Line_x_end+0
	MOVLW      32
	MOVWF      FARG_Glcd_H_Line_y_pos+0
	MOVLW      1
	MOVWF      FARG_Glcd_H_Line_color+0
	CALL       _Glcd_H_Line+0
;ATD.c,130 :: 		delay_ms(4);
	MOVLW      6
	MOVWF      R12+0
	MOVLW      48
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	NOP
;ATD.c,131 :: 		}
	GOTO       L_main0
;ATD.c,132 :: 		}
	GOTO       $+0
; end of _main


_CustomChar:

;p2.c,4 :: 		void CustomChar(char pos_row, char pos_char) {
;p2.c,6 :: 		Lcd_Cmd(64);
	MOVLW      64
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;p2.c,7 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(character[i]);
	CLRF       CustomChar_i_L0+0
L_CustomChar0:
	MOVF       CustomChar_i_L0+0, 0
	SUBLW      7
	BTFSS      STATUS+0, 0
	GOTO       L_CustomChar1
	MOVF       CustomChar_i_L0+0, 0
	ADDLW      _character+0
	MOVWF      R0+0
	MOVLW      hi_addr(_character+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
	INCF       CustomChar_i_L0+0, 1
	GOTO       L_CustomChar0
L_CustomChar1:
;p2.c,8 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW      2
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;p2.c,9 :: 		Lcd_Chr(pos_row, pos_char, 0);
	MOVF       FARG_CustomChar_pos_row+0, 0
	MOVWF      FARG_Lcd_Chr_row+0
	MOVF       FARG_CustomChar_pos_char+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	CLRF       FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;p2.c,10 :: 		}
	RETURN
; end of _CustomChar

_CustomChar1:

;p2.c,15 :: 		void CustomChar1(char pos_row, char pos_char) {
;p2.c,17 :: 		Lcd_Cmd(72);
	MOVLW      72
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;p2.c,18 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(character1[i]);
	CLRF       CustomChar1_i_L0+0
L_CustomChar13:
	MOVF       CustomChar1_i_L0+0, 0
	SUBLW      7
	BTFSS      STATUS+0, 0
	GOTO       L_CustomChar14
	MOVF       CustomChar1_i_L0+0, 0
	ADDLW      _character1+0
	MOVWF      R0+0
	MOVLW      hi_addr(_character1+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
	INCF       CustomChar1_i_L0+0, 1
	GOTO       L_CustomChar13
L_CustomChar14:
;p2.c,19 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW      2
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;p2.c,20 :: 		Lcd_Chr(pos_row, pos_char, 1);
	MOVF       FARG_CustomChar1_pos_row+0, 0
	MOVWF      FARG_Lcd_Chr_row+0
	MOVF       FARG_CustomChar1_pos_char+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;p2.c,21 :: 		}
	RETURN
; end of _CustomChar1

_CustomChar2:

;p2.c,26 :: 		void CustomChar2(char pos_row, char pos_char) {
;p2.c,28 :: 		Lcd_Cmd(80);
	MOVLW      80
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;p2.c,29 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(character2[i]);
	CLRF       CustomChar2_i_L0+0
L_CustomChar26:
	MOVF       CustomChar2_i_L0+0, 0
	SUBLW      7
	BTFSS      STATUS+0, 0
	GOTO       L_CustomChar27
	MOVF       CustomChar2_i_L0+0, 0
	ADDLW      _character2+0
	MOVWF      R0+0
	MOVLW      hi_addr(_character2+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
	INCF       CustomChar2_i_L0+0, 1
	GOTO       L_CustomChar26
L_CustomChar27:
;p2.c,30 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW      2
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;p2.c,31 :: 		Lcd_Chr(pos_row, pos_char, 2);
	MOVF       FARG_CustomChar2_pos_row+0, 0
	MOVWF      FARG_Lcd_Chr_row+0
	MOVF       FARG_CustomChar2_pos_char+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;p2.c,32 :: 		}
	RETURN
; end of _CustomChar2

_CustomChar3:

;p2.c,37 :: 		void CustomChar3(char pos_row, char pos_char) {
;p2.c,39 :: 		Lcd_Cmd(88);
	MOVLW      88
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;p2.c,40 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(character3[i]);
	CLRF       CustomChar3_i_L0+0
L_CustomChar39:
	MOVF       CustomChar3_i_L0+0, 0
	SUBLW      7
	BTFSS      STATUS+0, 0
	GOTO       L_CustomChar310
	MOVF       CustomChar3_i_L0+0, 0
	ADDLW      _character3+0
	MOVWF      R0+0
	MOVLW      hi_addr(_character3+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
	INCF       CustomChar3_i_L0+0, 1
	GOTO       L_CustomChar39
L_CustomChar310:
;p2.c,41 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW      2
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;p2.c,42 :: 		Lcd_Chr(pos_row, pos_char, 3);
	MOVF       FARG_CustomChar3_pos_row+0, 0
	MOVWF      FARG_Lcd_Chr_row+0
	MOVF       FARG_CustomChar3_pos_char+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      3
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;p2.c,43 :: 		}
	RETURN
; end of _CustomChar3

_main:

;p2.c,65 :: 		void main() {
;p2.c,66 :: 		trisc7_bit=0;
	BCF        TRISC7_bit+0, 7
;p2.c,67 :: 		lcd_init();
	CALL       _Lcd_Init+0
;p2.c,68 :: 		lcd_cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;p2.c,85 :: 		while(1){
L_main12:
;p2.c,86 :: 		temp=adc_read(3)*0.4887;
	MOVLW      3
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	CALL       _Word2Double+0
	MOVLW      227
	MOVWF      R4+0
	MOVLW      54
	MOVWF      R4+1
	MOVLW      122
	MOVWF      R4+2
	MOVLW      125
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	CALL       _Double2Int+0
	MOVF       R0+0, 0
	MOVWF      _temp+0
	MOVF       R0+1, 0
	MOVWF      _temp+1
;p2.c,87 :: 		inttostr(temp,x);
	MOVF       R0+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       R0+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _x+0
	MOVWF      FARG_IntToStr_output+0
	CALL       _IntToStr+0
;p2.c,88 :: 		lcd_chr(1,1,x[3]);
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _x+3, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;p2.c,89 :: 		lcd_chr(1,2,x[4]);
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _x+4, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;p2.c,90 :: 		lcd_chr(1,3,x[5]);
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      3
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _x+5, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;p2.c,91 :: 		delay_ms(200);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main14:
	DECFSZ     R13+0, 1
	GOTO       L_main14
	DECFSZ     R12+0, 1
	GOTO       L_main14
	DECFSZ     R11+0, 1
	GOTO       L_main14
	NOP
;p2.c,92 :: 		if(temp>30){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _temp+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main17
	MOVF       _temp+0, 0
	SUBLW      30
L__main17:
	BTFSC      STATUS+0, 0
	GOTO       L_main15
;p2.c,93 :: 		RC7_bit=1;
	BSF        RC7_bit+0, 7
;p2.c,94 :: 		}
	GOTO       L_main16
L_main15:
;p2.c,96 :: 		RC7_bit=0;
	BCF        RC7_bit+0, 7
;p2.c,97 :: 		}
L_main16:
;p2.c,99 :: 		}
	GOTO       L_main12
;p2.c,138 :: 		}
	GOTO       $+0
; end of _main

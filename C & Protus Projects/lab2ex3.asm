
_main:

;lab2ex3.c,16 :: 		void main() {
;lab2ex3.c,18 :: 		TRISB = 0;
	CLRF       TRISB+0
;lab2ex3.c,19 :: 		PORTB = 0;
	CLRF       PORTB+0
;lab2ex3.c,21 :: 		Glcd_Init();
	CALL       _Glcd_Init+0
;lab2ex3.c,22 :: 		delay_ms(100);
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
;lab2ex3.c,25 :: 		Glcd_Write_Text("RED",5,2,1);
	MOVLW      ?lstr1_lab2ex3+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      5
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	MOVLW      2
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;lab2ex3.c,26 :: 		delay_ms(100);
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
;lab2ex3.c,28 :: 		Glcd_Box(75,50,120,60,2);
	MOVLW      75
	MOVWF      FARG_Glcd_Box_x_upper_left+0
	MOVLW      50
	MOVWF      FARG_Glcd_Box_y_upper_left+0
	MOVLW      120
	MOVWF      FARG_Glcd_Box_x_bottom_right+0
	MOVLW      60
	MOVWF      FARG_Glcd_Box_y_bottom_right+0
	MOVLW      2
	MOVWF      FARG_Glcd_Box_color+0
	CALL       _Glcd_Box+0
;lab2ex3.c,29 :: 		delay_ms(100);
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
;lab2ex3.c,30 :: 		Glcd_Box(75,50,120,60,1);
	MOVLW      75
	MOVWF      FARG_Glcd_Box_x_upper_left+0
	MOVLW      50
	MOVWF      FARG_Glcd_Box_y_upper_left+0
	MOVLW      120
	MOVWF      FARG_Glcd_Box_x_bottom_right+0
	MOVLW      60
	MOVWF      FARG_Glcd_Box_y_bottom_right+0
	MOVLW      1
	MOVWF      FARG_Glcd_Box_color+0
	CALL       _Glcd_Box+0
;lab2ex3.c,31 :: 		delay_ms(100);
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
;lab2ex3.c,32 :: 		Glcd_H_Line(0,127,32,2);
	CLRF       FARG_Glcd_H_Line_x_start+0
	MOVLW      127
	MOVWF      FARG_Glcd_H_Line_x_end+0
	MOVLW      32
	MOVWF      FARG_Glcd_H_Line_y_pos+0
	MOVLW      2
	MOVWF      FARG_Glcd_H_Line_color+0
	CALL       _Glcd_H_Line+0
;lab2ex3.c,33 :: 		delay_ms(100);
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
;lab2ex3.c,35 :: 		Glcd_V_Line(0,63,64,2);
	CLRF       FARG_Glcd_V_Line_y_start+0
	MOVLW      63
	MOVWF      FARG_Glcd_V_Line_y_end+0
	MOVLW      64
	MOVWF      FARG_Glcd_V_Line_x_pos+0
	MOVLW      2
	MOVWF      FARG_Glcd_V_Line_color+0
	CALL       _Glcd_V_Line+0
;lab2ex3.c,36 :: 		delay_ms(100);
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
;lab2ex3.c,38 :: 		Glcd_Line(0,63,127,0,2);
	CLRF       FARG_Glcd_Line_x_start+0
	CLRF       FARG_Glcd_Line_x_start+1
	MOVLW      63
	MOVWF      FARG_Glcd_Line_y_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_start+1
	MOVLW      127
	MOVWF      FARG_Glcd_Line_x_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_end+1
	CLRF       FARG_Glcd_Line_y_end+0
	CLRF       FARG_Glcd_Line_y_end+1
	MOVLW      2
	MOVWF      FARG_Glcd_Line_color+0
	CALL       _Glcd_Line+0
;lab2ex3.c,39 :: 		delay_ms(100);
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
;lab2ex3.c,41 :: 		Glcd_Circle(64,32,10,2);
	MOVLW      64
	MOVWF      FARG_Glcd_Circle_x_center+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_x_center+1
	MOVLW      32
	MOVWF      FARG_Glcd_Circle_y_center+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_y_center+1
	MOVLW      10
	MOVWF      FARG_Glcd_Circle_radius+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_radius+1
	MOVLW      2
	MOVWF      FARG_Glcd_Circle_color+0
	CALL       _Glcd_Circle+0
;lab2ex3.c,42 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
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
;lab2ex3.c,44 :: 		Glcd_Box(0,0,25,25,2);
	CLRF       FARG_Glcd_Box_x_upper_left+0
	CLRF       FARG_Glcd_Box_y_upper_left+0
	MOVLW      25
	MOVWF      FARG_Glcd_Box_x_bottom_right+0
	MOVLW      25
	MOVWF      FARG_Glcd_Box_y_bottom_right+0
	MOVLW      2
	MOVWF      FARG_Glcd_Box_color+0
	CALL       _Glcd_Box+0
;lab2ex3.c,45 :: 		delay_ms(100);
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
;lab2ex3.c,50 :: 		while(1);
L_main9:
	GOTO       L_main9
;lab2ex3.c,52 :: 		}
	GOTO       $+0
; end of _main

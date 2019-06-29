
_main:

;lab2ex4.c,31 :: 		void main()
;lab2ex4.c,33 :: 		TRISB = 0;
	CLRF       TRISB+0
;lab2ex4.c,34 :: 		PORTB = 0;
	CLRF       PORTB+0
;lab2ex4.c,37 :: 		Glcd_Init(); // you have to initialize the GLCD module
	CALL       _Glcd_Init+0
;lab2ex4.c,38 :: 		Delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main0:
	DECFSZ     R13+0, 1
	GOTO       L_main0
	DECFSZ     R12+0, 1
	GOTO       L_main0
	DECFSZ     R11+0, 1
	GOTO       L_main0
	NOP
	NOP
;lab2ex4.c,40 :: 		Glcd_Write_Text("sec",13,1,1);
	MOVLW      ?lstr1_lab2ex4+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      13
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;lab2ex4.c,41 :: 		Glcd_Write_Text("min",53,1,1);
	MOVLW      ?lstr2_lab2ex4+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      53
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;lab2ex4.c,42 :: 		Glcd_Write_Text("hrs",93,1,1);
	MOVLW      ?lstr3_lab2ex4+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      93
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;lab2ex4.c,43 :: 		Glcd_Rectangle(7,20,40,53,1);
	MOVLW      7
	MOVWF      FARG_Glcd_Rectangle_x_upper_left+0
	MOVLW      20
	MOVWF      FARG_Glcd_Rectangle_y_upper_left+0
	MOVLW      40
	MOVWF      FARG_Glcd_Rectangle_x_bottom_right+0
	MOVLW      53
	MOVWF      FARG_Glcd_Rectangle_y_bottom_right+0
	MOVLW      1
	MOVWF      FARG_Glcd_Rectangle_color+0
	CALL       _Glcd_Rectangle+0
;lab2ex4.c,44 :: 		Glcd_Rectangle(47,20,80,53,1);
	MOVLW      47
	MOVWF      FARG_Glcd_Rectangle_x_upper_left+0
	MOVLW      20
	MOVWF      FARG_Glcd_Rectangle_y_upper_left+0
	MOVLW      80
	MOVWF      FARG_Glcd_Rectangle_x_bottom_right+0
	MOVLW      53
	MOVWF      FARG_Glcd_Rectangle_y_bottom_right+0
	MOVLW      1
	MOVWF      FARG_Glcd_Rectangle_color+0
	CALL       _Glcd_Rectangle+0
;lab2ex4.c,45 :: 		Glcd_Rectangle(87,20,120,53,1);
	MOVLW      87
	MOVWF      FARG_Glcd_Rectangle_x_upper_left+0
	MOVLW      20
	MOVWF      FARG_Glcd_Rectangle_y_upper_left+0
	MOVLW      120
	MOVWF      FARG_Glcd_Rectangle_x_bottom_right+0
	MOVLW      53
	MOVWF      FARG_Glcd_Rectangle_y_bottom_right+0
	MOVLW      1
	MOVWF      FARG_Glcd_Rectangle_color+0
	CALL       _Glcd_Rectangle+0
;lab2ex4.c,47 :: 		for(i=0; i<=180;i++){
	CLRF       _i+0
	CLRF       _i+1
L_main1:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _i+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main9
	MOVF       _i+0, 0
	SUBLW      180
L__main9:
	BTFSS      STATUS+0, 0
	GOTO       L_main2
;lab2ex4.c,49 :: 		InttoStr(x1,x);
	MOVF       _x1+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       _x1+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _x+0
	MOVWF      FARG_IntToStr_output+0
	CALL       _IntToStr+0
;lab2ex4.c,50 :: 		InttoStr(y1,y);
	MOVF       _y1+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       _y1+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _y+0
	MOVWF      FARG_IntToStr_output+0
	CALL       _IntToStr+0
;lab2ex4.c,51 :: 		InttoStr(z1,z2);
	MOVF       _z1+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       _z1+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _z2+0
	MOVWF      FARG_IntToStr_output+0
	CALL       _IntToStr+0
;lab2ex4.c,53 :: 		x2[0] = x[4];
	MOVF       _x+4, 0
	MOVWF      _x2+0
;lab2ex4.c,54 :: 		x2[1] = x[5];
	MOVF       _x+5, 0
	MOVWF      _x2+1
;lab2ex4.c,55 :: 		y2[0] = y[4];
	MOVF       _y+4, 0
	MOVWF      _y2+0
;lab2ex4.c,56 :: 		y2[1] = y[5];
	MOVF       _y+5, 0
	MOVWF      _y2+1
;lab2ex4.c,57 :: 		z3[0] = z2[4];
	MOVF       _z2+4, 0
	MOVWF      _z3+0
;lab2ex4.c,58 :: 		z3[1] = z2[5];
	MOVF       _z2+5, 0
	MOVWF      _z3+1
;lab2ex4.c,60 :: 		Glcd_Write_Text(x2,17,4,2);
	MOVLW      _x2+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      17
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	MOVLW      4
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      2
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;lab2ex4.c,61 :: 		Glcd_Write_Text(y2,57,4,2);
	MOVLW      _y2+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      57
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	MOVLW      4
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      2
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;lab2ex4.c,62 :: 		Glcd_Write_Text(z3,97,4,2);
	MOVLW      _z3+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      97
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	MOVLW      4
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      2
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;lab2ex4.c,64 :: 		x1++;
	INCF       _x1+0, 1
	BTFSC      STATUS+0, 2
	INCF       _x1+1, 1
;lab2ex4.c,65 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	DECFSZ     R11+0, 1
	GOTO       L_main4
	NOP
	NOP
;lab2ex4.c,67 :: 		if(x1 >= 60){
	MOVLW      128
	XORWF      _x1+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main10
	MOVLW      60
	SUBWF      _x1+0, 0
L__main10:
	BTFSS      STATUS+0, 0
	GOTO       L_main5
;lab2ex4.c,68 :: 		y1++;
	INCF       _y1+0, 1
	BTFSC      STATUS+0, 2
	INCF       _y1+1, 1
;lab2ex4.c,69 :: 		x1 = 0;
	CLRF       _x1+0
	CLRF       _x1+1
;lab2ex4.c,70 :: 		i = 0;
	CLRF       _i+0
	CLRF       _i+1
;lab2ex4.c,71 :: 		}
L_main5:
;lab2ex4.c,72 :: 		if(y1 >= 60){
	MOVLW      128
	XORWF      _y1+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main11
	MOVLW      60
	SUBWF      _y1+0, 0
L__main11:
	BTFSS      STATUS+0, 0
	GOTO       L_main6
;lab2ex4.c,73 :: 		z1++;
	INCF       _z1+0, 1
	BTFSC      STATUS+0, 2
	INCF       _z1+1, 1
;lab2ex4.c,74 :: 		y1 = 0;
	CLRF       _y1+0
	CLRF       _y1+1
;lab2ex4.c,75 :: 		i = 0;
	CLRF       _i+0
	CLRF       _i+1
;lab2ex4.c,76 :: 		}
L_main6:
;lab2ex4.c,47 :: 		for(i=0; i<=180;i++){
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;lab2ex4.c,78 :: 		}
	GOTO       L_main1
L_main2:
;lab2ex4.c,90 :: 		while(1);
L_main7:
	GOTO       L_main7
;lab2ex4.c,92 :: 		}
	GOTO       $+0
; end of _main

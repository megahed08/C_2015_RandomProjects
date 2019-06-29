
goal_welcomemenu:

;goal.c,22 :: 		static void welcomemenu(){
;goal.c,23 :: 		GLCD_fill(0);
	CLRF       FARG_Glcd_Fill_pattern+0
	CALL       _Glcd_Fill+0
;goal.c,24 :: 		GLCD_Write_Text("WELCOME HOME",25,0,1);
	MOVLW      ?lstr1_goal+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      25
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	CLRF       FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;goal.c,25 :: 		Delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_goal_welcomemenu0:
	DECFSZ     R13+0, 1
	GOTO       L_goal_welcomemenu0
	DECFSZ     R12+0, 1
	GOTO       L_goal_welcomemenu0
	DECFSZ     R11+0, 1
	GOTO       L_goal_welcomemenu0
	NOP
	NOP
;goal.c,26 :: 		GLCD_Write_Text("BEDROOM",0,2,1);
	MOVLW      ?lstr2_goal+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	CLRF       FARG_Glcd_Write_Text_x_pos+0
	MOVLW      2
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;goal.c,27 :: 		GLCD_Write_Text("BATHROOM",0,3,1);
	MOVLW      ?lstr3_goal+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	CLRF       FARG_Glcd_Write_Text_x_pos+0
	MOVLW      3
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;goal.c,28 :: 		GLCD_Write_Text("OUT",0,6,1);
	MOVLW      ?lstr4_goal+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	CLRF       FARG_Glcd_Write_Text_x_pos+0
	MOVLW      6
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;goal.c,29 :: 		Delay_ms(10);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_goal_welcomemenu1:
	DECFSZ     R13+0, 1
	GOTO       L_goal_welcomemenu1
	DECFSZ     R12+0, 1
	GOTO       L_goal_welcomemenu1
	NOP
	NOP
;goal.c,30 :: 		}
	RETURN
; end of goal_welcomemenu

_main:

;goal.c,31 :: 		void main(){
;goal.c,32 :: 		GLCD_Init();
	CALL       _Glcd_Init+0
;goal.c,33 :: 		TRISE=0;
	CLRF       TRISE+0
;goal.c,34 :: 		PORTE=0;
	CLRF       PORTE+0
;goal.c,35 :: 		UART1_Init(9600);
	MOVLW      25
	MOVWF      SPBRG+0
	BSF        TXSTA+0, 2
	CALL       _UART1_Init+0
;goal.c,36 :: 		Delay_ms(10);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	NOP
	NOP
;goal.c,37 :: 		GLCD_fill(0);
	CLRF       FARG_Glcd_Fill_pattern+0
	CALL       _Glcd_Fill+0
;goal.c,38 :: 		GLCD_Write_Text("ENTER PASSWORD",20,3,1);                                     //password
	MOVLW      ?lstr5_goal+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      20
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	MOVLW      3
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;goal.c,39 :: 		delay_ms(10);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	NOP
	NOP
;goal.c,40 :: 		while(1){
L_main4:
;goal.c,41 :: 		if(UART1_Data_Ready()){
	CALL       _UART1_Data_Ready+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main6
;goal.c,42 :: 		read=UART1_Read();
	CALL       _UART1_Read+0
	MOVF       R0+0, 0
	MOVWF      _read+0
;goal.c,43 :: 		Delay_ms(10);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	NOP
	NOP
;goal.c,44 :: 		if(read=='p'){
	MOVF       _read+0, 0
	XORLW      112
	BTFSS      STATUS+0, 2
	GOTO       L_main8
;goal.c,45 :: 		welcomemenu();
	CALL       goal_welcomemenu+0
;goal.c,46 :: 		while(1){
L_main9:
;goal.c,47 :: 		if(UART1_Data_Ready()){
	CALL       _UART1_Data_Ready+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main11
;goal.c,48 :: 		read=UART1_Read();
	CALL       _UART1_Read+0
	MOVF       R0+0, 0
	MOVWF      _read+0
;goal.c,49 :: 		Delay_ms(10);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main12:
	DECFSZ     R13+0, 1
	GOTO       L_main12
	DECFSZ     R12+0, 1
	GOTO       L_main12
	NOP
	NOP
;goal.c,50 :: 		if(read=='a'){                                                      // bedroom
	MOVF       _read+0, 0
	XORLW      97
	BTFSS      STATUS+0, 2
	GOTO       L_main13
;goal.c,51 :: 		GLCD_fill(0);
	CLRF       FARG_Glcd_Fill_pattern+0
	CALL       _Glcd_Fill+0
;goal.c,52 :: 		GLCD_Write_Text("BEDROOM",40,1,1);
	MOVLW      ?lstr6_goal+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      40
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;goal.c,53 :: 		if(light==0){
	MOVF       _light+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main14
;goal.c,54 :: 		GLCD_Write_Text("LIGHT OFF",0,3,1);
	MOVLW      ?lstr7_goal+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	CLRF       FARG_Glcd_Write_Text_x_pos+0
	MOVLW      3
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;goal.c,55 :: 		}
	GOTO       L_main15
L_main14:
;goal.c,57 :: 		GLCD_Write_Text("LIGHT ON",0,3,1);
	MOVLW      ?lstr8_goal+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	CLRF       FARG_Glcd_Write_Text_x_pos+0
	MOVLW      3
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;goal.c,58 :: 		}
L_main15:
;goal.c,59 :: 		GLCD_Write_Text("OUT",0,4,1);
	MOVLW      ?lstr9_goal+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	CLRF       FARG_Glcd_Write_Text_x_pos+0
	MOVLW      4
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;goal.c,60 :: 		Delay_ms(10);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main16:
	DECFSZ     R13+0, 1
	GOTO       L_main16
	DECFSZ     R12+0, 1
	GOTO       L_main16
	NOP
	NOP
;goal.c,61 :: 		while(1){
L_main17:
;goal.c,62 :: 		if(UART1_Data_Ready()){
	CALL       _UART1_Data_Ready+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main19
;goal.c,63 :: 		read=UART1_Read();
	CALL       _UART1_Read+0
	MOVF       R0+0, 0
	MOVWF      _read+0
;goal.c,64 :: 		Delay_ms(10);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main20:
	DECFSZ     R13+0, 1
	GOTO       L_main20
	DECFSZ     R12+0, 1
	GOTO       L_main20
	NOP
	NOP
;goal.c,65 :: 		if(read=='l' && light==0){                                      //light on
	MOVF       _read+0, 0
	XORLW      108
	BTFSS      STATUS+0, 2
	GOTO       L_main23
	MOVF       _light+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main23
L__main52:
;goal.c,66 :: 		re1_bit=1;
	BSF        RE1_bit+0, 1
;goal.c,67 :: 		light=1;
	MOVLW      1
	MOVWF      _light+0
;goal.c,68 :: 		GLCD_Write_Text("           ",0,3,1);
	MOVLW      ?lstr10_goal+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	CLRF       FARG_Glcd_Write_Text_x_pos+0
	MOVLW      3
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;goal.c,69 :: 		GLCD_Write_Text("LIGHT ON",0,3,1);
	MOVLW      ?lstr11_goal+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	CLRF       FARG_Glcd_Write_Text_x_pos+0
	MOVLW      3
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;goal.c,70 :: 		}
	GOTO       L_main24
L_main23:
;goal.c,71 :: 		else if(read=='l'&& light==1){                                  //light off
	MOVF       _read+0, 0
	XORLW      108
	BTFSS      STATUS+0, 2
	GOTO       L_main27
	MOVF       _light+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_main27
L__main51:
;goal.c,72 :: 		re1_bit=0;
	BCF        RE1_bit+0, 1
;goal.c,73 :: 		light=0;
	CLRF       _light+0
;goal.c,74 :: 		GLCD_Write_Text("           ",0,3,0);
	MOVLW      ?lstr12_goal+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	CLRF       FARG_Glcd_Write_Text_x_pos+0
	MOVLW      3
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	CLRF       FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;goal.c,75 :: 		GLCD_Write_Text("LIGHT OFF",0,3,1);
	MOVLW      ?lstr13_goal+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	CLRF       FARG_Glcd_Write_Text_x_pos+0
	MOVLW      3
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;goal.c,76 :: 		}
L_main27:
L_main24:
;goal.c,77 :: 		if(read=='o'){                                                //out bedroom
	MOVF       _read+0, 0
	XORLW      111
	BTFSS      STATUS+0, 2
	GOTO       L_main28
;goal.c,78 :: 		welcomemenu();
	CALL       goal_welcomemenu+0
;goal.c,79 :: 		break;
	GOTO       L_main18
;goal.c,80 :: 		}
L_main28:
;goal.c,81 :: 		}
L_main19:
;goal.c,82 :: 		}
	GOTO       L_main17
L_main18:
;goal.c,83 :: 		}
L_main13:
;goal.c,84 :: 		if(read=='b'){                                                      // bathroom
	MOVF       _read+0, 0
	XORLW      98
	BTFSS      STATUS+0, 2
	GOTO       L_main29
;goal.c,85 :: 		GLCD_fill(0);
	CLRF       FARG_Glcd_Fill_pattern+0
	CALL       _Glcd_Fill+0
;goal.c,86 :: 		GLCD_Write_Text("BATHROOM",40,1,1);
	MOVLW      ?lstr14_goal+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      40
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;goal.c,87 :: 		if(fan==0){
	MOVF       _fan+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main30
;goal.c,88 :: 		GLCD_Write_Text("FAN OFF",0,3,1);
	MOVLW      ?lstr15_goal+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	CLRF       FARG_Glcd_Write_Text_x_pos+0
	MOVLW      3
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;goal.c,89 :: 		}
	GOTO       L_main31
L_main30:
;goal.c,91 :: 		GLCD_Write_Text("FAN ON",0,3,1);
	MOVLW      ?lstr16_goal+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	CLRF       FARG_Glcd_Write_Text_x_pos+0
	MOVLW      3
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;goal.c,92 :: 		}
L_main31:
;goal.c,93 :: 		GLCD_Write_Text("OUT",0,4,1);
	MOVLW      ?lstr17_goal+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	CLRF       FARG_Glcd_Write_Text_x_pos+0
	MOVLW      4
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;goal.c,94 :: 		Delay_ms(10);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main32:
	DECFSZ     R13+0, 1
	GOTO       L_main32
	DECFSZ     R12+0, 1
	GOTO       L_main32
	NOP
	NOP
;goal.c,95 :: 		while(1){
L_main33:
;goal.c,96 :: 		if(UART1_Data_Ready()){
	CALL       _UART1_Data_Ready+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main35
;goal.c,97 :: 		read=UART1_Read();
	CALL       _UART1_Read+0
	MOVF       R0+0, 0
	MOVWF      _read+0
;goal.c,98 :: 		Delay_ms(10);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main36:
	DECFSZ     R13+0, 1
	GOTO       L_main36
	DECFSZ     R12+0, 1
	GOTO       L_main36
	NOP
	NOP
;goal.c,99 :: 		if(read=='f' && fan==0){                                      //fan on
	MOVF       _read+0, 0
	XORLW      102
	BTFSS      STATUS+0, 2
	GOTO       L_main39
	MOVF       _fan+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main39
L__main50:
;goal.c,100 :: 		re2_bit=1;
	BSF        RE2_bit+0, 2
;goal.c,101 :: 		fan=1;
	MOVLW      1
	MOVWF      _fan+0
;goal.c,102 :: 		GLCD_Write_Text("        ",0,3,1);
	MOVLW      ?lstr18_goal+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	CLRF       FARG_Glcd_Write_Text_x_pos+0
	MOVLW      3
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;goal.c,103 :: 		GLCD_Write_Text("FAN ON",0,3,1);
	MOVLW      ?lstr19_goal+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	CLRF       FARG_Glcd_Write_Text_x_pos+0
	MOVLW      3
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;goal.c,104 :: 		}
	GOTO       L_main40
L_main39:
;goal.c,105 :: 		else if(read=='f'&& fan==1){                                  //fan off
	MOVF       _read+0, 0
	XORLW      102
	BTFSS      STATUS+0, 2
	GOTO       L_main43
	MOVF       _fan+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_main43
L__main49:
;goal.c,106 :: 		re2_bit=0;
	BCF        RE2_bit+0, 2
;goal.c,107 :: 		fan=0;
	CLRF       _fan+0
;goal.c,108 :: 		GLCD_Write_Text("FAN ON",0,3,0);
	MOVLW      ?lstr20_goal+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	CLRF       FARG_Glcd_Write_Text_x_pos+0
	MOVLW      3
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	CLRF       FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;goal.c,109 :: 		GLCD_Write_Text("FAN OFF",0,3,1);
	MOVLW      ?lstr21_goal+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	CLRF       FARG_Glcd_Write_Text_x_pos+0
	MOVLW      3
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;goal.c,110 :: 		}
L_main43:
L_main40:
;goal.c,111 :: 		if(read=='o'){                                                //out bathroom
	MOVF       _read+0, 0
	XORLW      111
	BTFSS      STATUS+0, 2
	GOTO       L_main44
;goal.c,112 :: 		welcomemenu();
	CALL       goal_welcomemenu+0
;goal.c,113 :: 		break;
	GOTO       L_main34
;goal.c,114 :: 		}
L_main44:
;goal.c,115 :: 		}
L_main35:
;goal.c,116 :: 		}
	GOTO       L_main33
L_main34:
;goal.c,117 :: 		}
	GOTO       L_main45
L_main29:
;goal.c,118 :: 		else if(read=='o'){                                                 // out welcome
	MOVF       _read+0, 0
	XORLW      111
	BTFSS      STATUS+0, 2
	GOTO       L_main46
;goal.c,119 :: 		GLCD_fill(0);
	CLRF       FARG_Glcd_Fill_pattern+0
	CALL       _Glcd_Fill+0
;goal.c,120 :: 		GLCD_Write_Text("GOOD BYE",40,2,1);
	MOVLW      ?lstr22_goal+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      40
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	MOVLW      2
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;goal.c,121 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main47:
	DECFSZ     R13+0, 1
	GOTO       L_main47
	DECFSZ     R12+0, 1
	GOTO       L_main47
	DECFSZ     R11+0, 1
	GOTO       L_main47
	NOP
	NOP
;goal.c,122 :: 		GLCD_fill(0);
	CLRF       FARG_Glcd_Fill_pattern+0
	CALL       _Glcd_Fill+0
;goal.c,123 :: 		GLCD_Write_Text("ENTER PASSWORD",20,3,1);
	MOVLW      ?lstr23_goal+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      20
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	MOVLW      3
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;goal.c,124 :: 		break;
	GOTO       L_main10
;goal.c,125 :: 		}
L_main46:
L_main45:
;goal.c,126 :: 		delay_ms(10);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main48:
	DECFSZ     R13+0, 1
	GOTO       L_main48
	DECFSZ     R12+0, 1
	GOTO       L_main48
	NOP
	NOP
;goal.c,127 :: 		}
L_main11:
;goal.c,128 :: 		}
	GOTO       L_main9
L_main10:
;goal.c,129 :: 		}
L_main8:
;goal.c,130 :: 		}
L_main6:
;goal.c,131 :: 		}
	GOTO       L_main4
;goal.c,132 :: 		}
	GOTO       $+0
; end of _main

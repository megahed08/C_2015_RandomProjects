
final_32project_welcomemenu:

;final project.c,27 :: 		static void welcomemenu(){
;final project.c,28 :: 		GLCD_fill(0);
	CLRF       FARG_Glcd_Fill_pattern+0
	CALL       _Glcd_Fill+0
;final project.c,29 :: 		Delay_ms(200);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_final_32project_welcomemenu0:
	DECFSZ     R13+0, 1
	GOTO       L_final_32project_welcomemenu0
	DECFSZ     R12+0, 1
	GOTO       L_final_32project_welcomemenu0
	DECFSZ     R11+0, 1
	GOTO       L_final_32project_welcomemenu0
	NOP
;final project.c,30 :: 		GLCD_Write_Text("WELCOME HOME",25,0,1);
	MOVLW      ?lstr1_final_32project+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      25
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	CLRF       FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;final project.c,31 :: 		Delay_ms(500);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_final_32project_welcomemenu1:
	DECFSZ     R13+0, 1
	GOTO       L_final_32project_welcomemenu1
	DECFSZ     R12+0, 1
	GOTO       L_final_32project_welcomemenu1
	DECFSZ     R11+0, 1
	GOTO       L_final_32project_welcomemenu1
	NOP
	NOP
;final project.c,32 :: 		GLCD_Write_Text("BEDROOM LIGHT    OFF",0,2,1);
	MOVLW      ?lstr2_final_32project+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	CLRF       FARG_Glcd_Write_Text_x_pos+0
	MOVLW      2
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;final project.c,33 :: 		GLCD_Write_Text("BATHROOM FAN     OFF",0,3,1);
	MOVLW      ?lstr3_final_32project+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	CLRF       FARG_Glcd_Write_Text_x_pos+0
	MOVLW      3
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;final project.c,34 :: 		GLCD_Write_Text("KITCHEN BOILER   OFF",0,4,1);
	MOVLW      ?lstr4_final_32project+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	CLRF       FARG_Glcd_Write_Text_x_pos+0
	MOVLW      4
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;final project.c,35 :: 		GLCD_Write_Text("OUT",0,7,1);
	MOVLW      ?lstr5_final_32project+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	CLRF       FARG_Glcd_Write_Text_x_pos+0
	MOVLW      7
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;final project.c,36 :: 		Delay_ms(10);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_final_32project_welcomemenu2:
	DECFSZ     R13+0, 1
	GOTO       L_final_32project_welcomemenu2
	DECFSZ     R12+0, 1
	GOTO       L_final_32project_welcomemenu2
	NOP
	NOP
;final project.c,37 :: 		}
	RETURN
; end of final_32project_welcomemenu

_main:

;final project.c,42 :: 		void main(){
;final project.c,43 :: 		GLCD_Init();
	CALL       _Glcd_Init+0
;final project.c,44 :: 		TRISE=0;
	CLRF       TRISE+0
;final project.c,45 :: 		PORTE=0;
	CLRF       PORTE+0
;final project.c,46 :: 		UART1_Init(9600);
	MOVLW      25
	MOVWF      SPBRG+0
	BSF        TXSTA+0, 2
	CALL       _UART1_Init+0
;final project.c,47 :: 		Delay_ms(10);
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
;final project.c,48 :: 		GLCD_fill(0);
	CLRF       FARG_Glcd_Fill_pattern+0
	CALL       _Glcd_Fill+0
;final project.c,49 :: 		GLCD_Write_Text("ENTER PASSWORD",20,3,1);                                     //password
	MOVLW      ?lstr6_final_32project+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      20
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	MOVLW      3
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;final project.c,50 :: 		delay_ms(10);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	NOP
	NOP
;final project.c,51 :: 		while(1){
L_main5:
;final project.c,52 :: 		if(UART1_Data_Ready()){
	CALL       _UART1_Data_Ready+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main7
;final project.c,53 :: 		read=UART1_Read();
	CALL       _UART1_Read+0
	MOVF       R0+0, 0
	MOVWF      _read+0
;final project.c,54 :: 		Delay_ms(10);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	NOP
	NOP
;final project.c,55 :: 		if(read=='p'){
	MOVF       _read+0, 0
	XORLW      112
	BTFSS      STATUS+0, 2
	GOTO       L_main9
;final project.c,56 :: 		welcomemenu();
	CALL       final_32project_welcomemenu+0
;final project.c,57 :: 		while(1){
L_main10:
;final project.c,58 :: 		if(UART1_Data_Ready()){
	CALL       _UART1_Data_Ready+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main12
;final project.c,59 :: 		read=UART1_Read();
	CALL       _UART1_Read+0
	MOVF       R0+0, 0
	MOVWF      _read+0
;final project.c,60 :: 		Delay_ms(10);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main13:
	DECFSZ     R13+0, 1
	GOTO       L_main13
	DECFSZ     R12+0, 1
	GOTO       L_main13
	NOP
	NOP
;final project.c,61 :: 		if(read=='a'){                                                      // bedroom light
	MOVF       _read+0, 0
	XORLW      97
	BTFSS      STATUS+0, 2
	GOTO       L_main14
;final project.c,62 :: 		if(light==0){
	MOVF       _light+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main15
;final project.c,63 :: 		GLCD_Write_Text("   ",102,2,1);
	MOVLW      ?lstr7_final_32project+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      102
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	MOVLW      2
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;final project.c,64 :: 		GLCD_Write_Text("ON", 102,2,1);
	MOVLW      ?lstr8_final_32project+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      102
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	MOVLW      2
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;final project.c,65 :: 		light=1;
	MOVLW      1
	MOVWF      _light+0
;final project.c,66 :: 		}
	GOTO       L_main16
L_main15:
;final project.c,68 :: 		GLCD_Write_Text("   ",102,2,1);
	MOVLW      ?lstr9_final_32project+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      102
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	MOVLW      2
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;final project.c,69 :: 		GLCD_Write_Text("OFF",102,2,1);
	MOVLW      ?lstr10_final_32project+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      102
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	MOVLW      2
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;final project.c,70 :: 		light=0;
	CLRF       _light+0
;final project.c,71 :: 		}
L_main16:
;final project.c,72 :: 		}
	GOTO       L_main17
L_main14:
;final project.c,73 :: 		else if(read=='b'){                                                 // bathroom fan
	MOVF       _read+0, 0
	XORLW      98
	BTFSS      STATUS+0, 2
	GOTO       L_main18
;final project.c,74 :: 		if(fan==0){
	MOVF       _fan+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main19
;final project.c,75 :: 		GLCD_Write_Text("   ",102,3,1);
	MOVLW      ?lstr11_final_32project+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      102
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	MOVLW      3
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;final project.c,76 :: 		GLCD_Write_Text("ON", 102,3,1);
	MOVLW      ?lstr12_final_32project+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      102
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	MOVLW      3
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;final project.c,77 :: 		fan=1;
	MOVLW      1
	MOVWF      _fan+0
;final project.c,78 :: 		}
	GOTO       L_main20
L_main19:
;final project.c,80 :: 		GLCD_Write_Text("   ",102,3,1);
	MOVLW      ?lstr13_final_32project+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      102
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	MOVLW      3
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;final project.c,81 :: 		GLCD_Write_Text("OFF",102,3,1);
	MOVLW      ?lstr14_final_32project+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      102
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	MOVLW      3
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;final project.c,82 :: 		fan=0;
	CLRF       _fan+0
;final project.c,83 :: 		}
L_main20:
;final project.c,84 :: 		}
	GOTO       L_main21
L_main18:
;final project.c,85 :: 		else if(read=='c'){                                                // kitchen boiler
	MOVF       _read+0, 0
	XORLW      99
	BTFSS      STATUS+0, 2
	GOTO       L_main22
;final project.c,86 :: 		if(boiler==0){
	MOVF       _boiler+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main23
;final project.c,87 :: 		GLCD_Write_Text("OFF",102,4,0);
	MOVLW      ?lstr15_final_32project+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      102
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	MOVLW      4
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	CLRF       FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;final project.c,88 :: 		GLCD_Write_Text("ON", 102,4,1);
	MOVLW      ?lstr16_final_32project+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      102
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	MOVLW      4
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;final project.c,89 :: 		boiler=1;
	MOVLW      1
	MOVWF      _boiler+0
;final project.c,90 :: 		}
	GOTO       L_main24
L_main23:
;final project.c,92 :: 		GLCD_Write_Text("   ",102,4,1);
	MOVLW      ?lstr17_final_32project+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      102
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	MOVLW      4
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;final project.c,93 :: 		GLCD_Write_Text("OFF",102,4,1);
	MOVLW      ?lstr18_final_32project+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      102
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	MOVLW      4
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;final project.c,94 :: 		boiler=0;
	CLRF       _boiler+0
;final project.c,95 :: 		}
L_main24:
;final project.c,96 :: 		}
	GOTO       L_main25
L_main22:
;final project.c,97 :: 		else if(read=='o'){                                                 // out welcome
	MOVF       _read+0, 0
	XORLW      111
	BTFSS      STATUS+0, 2
	GOTO       L_main26
;final project.c,98 :: 		GLCD_fill(0);
	CLRF       FARG_Glcd_Fill_pattern+0
	CALL       _Glcd_Fill+0
;final project.c,99 :: 		GLCD_Write_Text("GOOD BYE",40,2,1);
	MOVLW      ?lstr19_final_32project+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      40
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	MOVLW      2
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;final project.c,100 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main27:
	DECFSZ     R13+0, 1
	GOTO       L_main27
	DECFSZ     R12+0, 1
	GOTO       L_main27
	DECFSZ     R11+0, 1
	GOTO       L_main27
	NOP
	NOP
;final project.c,101 :: 		GLCD_fill(0);
	CLRF       FARG_Glcd_Fill_pattern+0
	CALL       _Glcd_Fill+0
;final project.c,102 :: 		GLCD_Write_Text("ENTER PASSWORD",20,3,1);
	MOVLW      ?lstr20_final_32project+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      20
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	MOVLW      3
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;final project.c,103 :: 		break;
	GOTO       L_main11
;final project.c,104 :: 		}
L_main26:
L_main25:
L_main21:
L_main17:
;final project.c,105 :: 		if(boiler==0){
	MOVF       _boiler+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main28
;final project.c,106 :: 		if(fan==0){
	MOVF       _fan+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main29
;final project.c,107 :: 		if(light==0){
	MOVF       _light+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main30
;final project.c,108 :: 		porte=0b000;
	CLRF       PORTE+0
;final project.c,109 :: 		}
	GOTO       L_main31
L_main30:
;final project.c,111 :: 		porte=0b001;
	MOVLW      1
	MOVWF      PORTE+0
;final project.c,112 :: 		}
L_main31:
;final project.c,113 :: 		}
	GOTO       L_main32
L_main29:
;final project.c,115 :: 		if(light==0){
	MOVF       _light+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main33
;final project.c,116 :: 		porte=0b010;
	MOVLW      2
	MOVWF      PORTE+0
;final project.c,117 :: 		}
	GOTO       L_main34
L_main33:
;final project.c,119 :: 		porte=0b011;
	MOVLW      3
	MOVWF      PORTE+0
;final project.c,120 :: 		}
L_main34:
;final project.c,121 :: 		}
L_main32:
;final project.c,122 :: 		}
	GOTO       L_main35
L_main28:
;final project.c,124 :: 		if(fan==0){
	MOVF       _fan+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main36
;final project.c,125 :: 		if(light==0){
	MOVF       _light+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main37
;final project.c,126 :: 		porte=0b100;
	MOVLW      4
	MOVWF      PORTE+0
;final project.c,127 :: 		}
	GOTO       L_main38
L_main37:
;final project.c,129 :: 		porte=0b101;
	MOVLW      5
	MOVWF      PORTE+0
;final project.c,130 :: 		}
L_main38:
;final project.c,131 :: 		}
	GOTO       L_main39
L_main36:
;final project.c,133 :: 		if(light==0){
	MOVF       _light+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main40
;final project.c,134 :: 		porte=0b110;
	MOVLW      6
	MOVWF      PORTE+0
;final project.c,135 :: 		}
	GOTO       L_main41
L_main40:
;final project.c,137 :: 		porte=0b111;
	MOVLW      7
	MOVWF      PORTE+0
;final project.c,138 :: 		}
L_main41:
;final project.c,139 :: 		}
L_main39:
;final project.c,140 :: 		}
L_main35:
;final project.c,141 :: 		delay_ms(10);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main42:
	DECFSZ     R13+0, 1
	GOTO       L_main42
	DECFSZ     R12+0, 1
	GOTO       L_main42
	NOP
	NOP
;final project.c,142 :: 		}
L_main12:
;final project.c,143 :: 		}
	GOTO       L_main10
L_main11:
;final project.c,144 :: 		}
L_main9:
;final project.c,145 :: 		}
L_main7:
;final project.c,146 :: 		}
	GOTO       L_main5
;final project.c,147 :: 		}
	GOTO       $+0
; end of _main

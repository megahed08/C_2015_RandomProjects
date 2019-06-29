
_init:

;Aclock.c,28 :: 		void init(){
;Aclock.c,29 :: 		Glcd_Init(); // you have to initialize the GLCD module
	CALL       _Glcd_Init+0
;Aclock.c,30 :: 		Glcd_Fill(0x00); //Clear GLCD
	CLRF       FARG_Glcd_Fill_pattern+0
	CALL       _Glcd_Fill+0
;Aclock.c,31 :: 		Glcd_V_Line(0, 64, 63, 1);
	CLRF       FARG_Glcd_V_Line_y_start+0
	MOVLW      64
	MOVWF      FARG_Glcd_V_Line_y_end+0
	MOVLW      63
	MOVWF      FARG_Glcd_V_Line_x_pos+0
	MOVLW      1
	MOVWF      FARG_Glcd_V_Line_color+0
	CALL       _Glcd_V_Line+0
;Aclock.c,32 :: 		Glcd_rectangle(0,18,61,35,1);
	CLRF       FARG_Glcd_Rectangle_x_upper_left+0
	MOVLW      18
	MOVWF      FARG_Glcd_Rectangle_y_upper_left+0
	MOVLW      61
	MOVWF      FARG_Glcd_Rectangle_x_bottom_right+0
	MOVLW      35
	MOVWF      FARG_Glcd_Rectangle_y_bottom_right+0
	MOVLW      1
	MOVWF      FARG_Glcd_Rectangle_color+0
	CALL       _Glcd_Rectangle+0
;Aclock.c,33 :: 		Glcd_Write_Text("SEC",0, 1, 1);
	MOVLW      ?lstr1_Aclock+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	CLRF       FARG_Glcd_Write_Text_x_pos+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;Aclock.c,34 :: 		Glcd_Write_Text("MIN",21,1, 1);
	MOVLW      ?lstr2_Aclock+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      21
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;Aclock.c,35 :: 		Glcd_Write_Text("HRS",42,1, 1);
	MOVLW      ?lstr3_Aclock+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      42
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;Aclock.c,36 :: 		shorttostr(se,seconds);
	MOVF       _se+0, 0
	MOVWF      FARG_ShortToStr_input+0
	MOVLW      _seconds+0
	MOVWF      FARG_ShortToStr_output+0
	CALL       _ShortToStr+0
;Aclock.c,37 :: 		shorttostr(mi,minutes);
	MOVF       _mi+0, 0
	MOVWF      FARG_ShortToStr_input+0
	MOVLW      _minutes+0
	MOVWF      FARG_ShortToStr_output+0
	CALL       _ShortToStr+0
;Aclock.c,38 :: 		shorttostr(hr,hours);
	MOVF       _hr+0, 0
	MOVWF      FARG_ShortToStr_input+0
	MOVLW      _hours+0
	MOVWF      FARG_ShortToStr_output+0
	CALL       _ShortToStr+0
;Aclock.c,39 :: 		Glcd_write_text(seconds,-11,3,1);
	MOVLW      _seconds+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      245
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	MOVLW      3
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;Aclock.c,40 :: 		Glcd_write_text(minutes, 12,3,1);
	MOVLW      _minutes+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      12
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	MOVLW      3
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;Aclock.c,41 :: 		Glcd_write_text(hours  , 35,3,1);
	MOVLW      _hours+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      35
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	MOVLW      3
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;Aclock.c,42 :: 		Glcd_V_Line(18, 35, 20, 1);
	MOVLW      18
	MOVWF      FARG_Glcd_V_Line_y_start+0
	MOVLW      35
	MOVWF      FARG_Glcd_V_Line_y_end+0
	MOVLW      20
	MOVWF      FARG_Glcd_V_Line_x_pos+0
	MOVLW      1
	MOVWF      FARG_Glcd_V_Line_color+0
	CALL       _Glcd_V_Line+0
;Aclock.c,43 :: 		Glcd_V_Line(18, 35, 41, 1);
	MOVLW      18
	MOVWF      FARG_Glcd_V_Line_y_start+0
	MOVLW      35
	MOVWF      FARG_Glcd_V_Line_y_end+0
	MOVLW      41
	MOVWF      FARG_Glcd_V_Line_x_pos+0
	MOVLW      1
	MOVWF      FARG_Glcd_V_Line_color+0
	CALL       _Glcd_V_Line+0
;Aclock.c,44 :: 		Glcd_circle(96,32,30,1);
	MOVLW      96
	MOVWF      FARG_Glcd_Circle_x_center+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_x_center+1
	MOVLW      32
	MOVWF      FARG_Glcd_Circle_y_center+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_y_center+1
	MOVLW      30
	MOVWF      FARG_Glcd_Circle_radius+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_radius+1
	MOVLW      1
	MOVWF      FARG_Glcd_Circle_color+0
	CALL       _Glcd_Circle+0
;Aclock.c,45 :: 		}
	RETURN
; end of _init

_mise:

;Aclock.c,47 :: 		void mise(int ms, short ax [], short ay []){
;Aclock.c,48 :: 		if(ms<=15){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      FARG_mise_ms+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__mise33
	MOVF       FARG_mise_ms+0, 0
	SUBLW      15
L__mise33:
	BTFSS      STATUS+0, 0
	GOTO       L_mise0
;Aclock.c,49 :: 		Glcd_line(96,32,ax[14],ay[1],0);
	MOVLW      96
	MOVWF      FARG_Glcd_Line_x_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_start+1
	MOVLW      32
	MOVWF      FARG_Glcd_Line_y_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_start+1
	MOVLW      14
	ADDWF      FARG_mise_ax+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_Glcd_Line_x_end+0
	MOVLW      0
	BTFSC      FARG_Glcd_Line_x_end+0, 7
	MOVLW      255
	MOVWF      FARG_Glcd_Line_x_end+1
	MOVLW      0
	BTFSC      FARG_Glcd_Line_x_end+0, 7
	MOVLW      255
	MOVWF      FARG_Glcd_Line_x_end+1
	INCF       FARG_mise_ay+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_Glcd_Line_y_end+0
	MOVLW      0
	BTFSC      FARG_Glcd_Line_y_end+0, 7
	MOVLW      255
	MOVWF      FARG_Glcd_Line_y_end+1
	MOVLW      0
	BTFSC      FARG_Glcd_Line_y_end+0, 7
	MOVLW      255
	MOVWF      FARG_Glcd_Line_y_end+1
	CLRF       FARG_Glcd_Line_color+0
	CALL       _Glcd_Line+0
;Aclock.c,50 :: 		Glcd_line(96,32,ax[ms+14],ay[ms-1],0);
	MOVLW      96
	MOVWF      FARG_Glcd_Line_x_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_start+1
	MOVLW      32
	MOVWF      FARG_Glcd_Line_y_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_start+1
	MOVLW      14
	ADDWF      FARG_mise_ms+0, 0
	MOVWF      R0+0
	MOVF       FARG_mise_ms+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R0+1
	MOVF       R0+0, 0
	ADDWF      FARG_mise_ax+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_Glcd_Line_x_end+0
	MOVLW      0
	BTFSC      FARG_Glcd_Line_x_end+0, 7
	MOVLW      255
	MOVWF      FARG_Glcd_Line_x_end+1
	MOVLW      0
	BTFSC      FARG_Glcd_Line_x_end+0, 7
	MOVLW      255
	MOVWF      FARG_Glcd_Line_x_end+1
	MOVLW      1
	SUBWF      FARG_mise_ms+0, 0
	MOVWF      R0+0
	MOVLW      0
	BTFSS      STATUS+0, 0
	ADDLW      1
	SUBWF      FARG_mise_ms+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	ADDWF      FARG_mise_ay+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_Glcd_Line_y_end+0
	MOVLW      0
	BTFSC      FARG_Glcd_Line_y_end+0, 7
	MOVLW      255
	MOVWF      FARG_Glcd_Line_y_end+1
	MOVLW      0
	BTFSC      FARG_Glcd_Line_y_end+0, 7
	MOVLW      255
	MOVWF      FARG_Glcd_Line_y_end+1
	CLRF       FARG_Glcd_Line_color+0
	CALL       _Glcd_Line+0
;Aclock.c,51 :: 		Glcd_line(96,32,ax[ms+15],ay[ms],1);
	MOVLW      96
	MOVWF      FARG_Glcd_Line_x_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_start+1
	MOVLW      32
	MOVWF      FARG_Glcd_Line_y_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_start+1
	MOVLW      15
	ADDWF      FARG_mise_ms+0, 0
	MOVWF      R0+0
	MOVF       FARG_mise_ms+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R0+1
	MOVF       R0+0, 0
	ADDWF      FARG_mise_ax+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_Glcd_Line_x_end+0
	MOVLW      0
	BTFSC      FARG_Glcd_Line_x_end+0, 7
	MOVLW      255
	MOVWF      FARG_Glcd_Line_x_end+1
	MOVLW      0
	BTFSC      FARG_Glcd_Line_x_end+0, 7
	MOVLW      255
	MOVWF      FARG_Glcd_Line_x_end+1
	MOVF       FARG_mise_ms+0, 0
	ADDWF      FARG_mise_ay+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_Glcd_Line_y_end+0
	MOVLW      0
	BTFSC      FARG_Glcd_Line_y_end+0, 7
	MOVLW      255
	MOVWF      FARG_Glcd_Line_y_end+1
	MOVLW      0
	BTFSC      FARG_Glcd_Line_y_end+0, 7
	MOVLW      255
	MOVWF      FARG_Glcd_Line_y_end+1
	MOVLW      1
	MOVWF      FARG_Glcd_Line_color+0
	CALL       _Glcd_Line+0
;Aclock.c,52 :: 		}
L_mise0:
;Aclock.c,53 :: 		if(ms<=30&&ms>15){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      FARG_mise_ms+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__mise34
	MOVF       FARG_mise_ms+0, 0
	SUBLW      30
L__mise34:
	BTFSS      STATUS+0, 0
	GOTO       L_mise3
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      FARG_mise_ms+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__mise35
	MOVF       FARG_mise_ms+0, 0
	SUBLW      15
L__mise35:
	BTFSC      STATUS+0, 0
	GOTO       L_mise3
L__mise32:
;Aclock.c,54 :: 		Glcd_line(96,32,ax[(30-(ms-16))],ay[ms-1],0);
	MOVLW      96
	MOVWF      FARG_Glcd_Line_x_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_start+1
	MOVLW      32
	MOVWF      FARG_Glcd_Line_y_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_start+1
	MOVLW      16
	SUBWF      FARG_mise_ms+0, 0
	MOVWF      R0+0
	MOVLW      0
	BTFSS      STATUS+0, 0
	ADDLW      1
	SUBWF      FARG_mise_ms+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	SUBLW      30
	MOVWF      R0+0
	MOVF       R0+1, 0
	BTFSS      STATUS+0, 0
	ADDLW      1
	CLRF       R0+1
	SUBWF      R0+1, 1
	MOVF       R0+0, 0
	ADDWF      FARG_mise_ax+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_Glcd_Line_x_end+0
	MOVLW      0
	BTFSC      FARG_Glcd_Line_x_end+0, 7
	MOVLW      255
	MOVWF      FARG_Glcd_Line_x_end+1
	MOVLW      0
	BTFSC      FARG_Glcd_Line_x_end+0, 7
	MOVLW      255
	MOVWF      FARG_Glcd_Line_x_end+1
	MOVLW      1
	SUBWF      FARG_mise_ms+0, 0
	MOVWF      R0+0
	MOVLW      0
	BTFSS      STATUS+0, 0
	ADDLW      1
	SUBWF      FARG_mise_ms+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	ADDWF      FARG_mise_ay+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_Glcd_Line_y_end+0
	MOVLW      0
	BTFSC      FARG_Glcd_Line_y_end+0, 7
	MOVLW      255
	MOVWF      FARG_Glcd_Line_y_end+1
	MOVLW      0
	BTFSC      FARG_Glcd_Line_y_end+0, 7
	MOVLW      255
	MOVWF      FARG_Glcd_Line_y_end+1
	CLRF       FARG_Glcd_Line_color+0
	CALL       _Glcd_Line+0
;Aclock.c,55 :: 		Glcd_line(96,32,ax[30-(ms-15)],ay[ms],1);
	MOVLW      96
	MOVWF      FARG_Glcd_Line_x_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_start+1
	MOVLW      32
	MOVWF      FARG_Glcd_Line_y_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_start+1
	MOVLW      15
	SUBWF      FARG_mise_ms+0, 0
	MOVWF      R0+0
	MOVLW      0
	BTFSS      STATUS+0, 0
	ADDLW      1
	SUBWF      FARG_mise_ms+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	SUBLW      30
	MOVWF      R0+0
	MOVF       R0+1, 0
	BTFSS      STATUS+0, 0
	ADDLW      1
	CLRF       R0+1
	SUBWF      R0+1, 1
	MOVF       R0+0, 0
	ADDWF      FARG_mise_ax+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_Glcd_Line_x_end+0
	MOVLW      0
	BTFSC      FARG_Glcd_Line_x_end+0, 7
	MOVLW      255
	MOVWF      FARG_Glcd_Line_x_end+1
	MOVLW      0
	BTFSC      FARG_Glcd_Line_x_end+0, 7
	MOVLW      255
	MOVWF      FARG_Glcd_Line_x_end+1
	MOVF       FARG_mise_ms+0, 0
	ADDWF      FARG_mise_ay+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_Glcd_Line_y_end+0
	MOVLW      0
	BTFSC      FARG_Glcd_Line_y_end+0, 7
	MOVLW      255
	MOVWF      FARG_Glcd_Line_y_end+1
	MOVLW      0
	BTFSC      FARG_Glcd_Line_y_end+0, 7
	MOVLW      255
	MOVWF      FARG_Glcd_Line_y_end+1
	MOVLW      1
	MOVWF      FARG_Glcd_Line_color+0
	CALL       _Glcd_Line+0
;Aclock.c,56 :: 		}
L_mise3:
;Aclock.c,57 :: 		if(ms<=45&&ms>30){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      FARG_mise_ms+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__mise36
	MOVF       FARG_mise_ms+0, 0
	SUBLW      45
L__mise36:
	BTFSS      STATUS+0, 0
	GOTO       L_mise6
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      FARG_mise_ms+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__mise37
	MOVF       FARG_mise_ms+0, 0
	SUBLW      30
L__mise37:
	BTFSC      STATUS+0, 0
	GOTO       L_mise6
L__mise31:
;Aclock.c,58 :: 		Glcd_line(96,32,ax[15-(ms-31)],ay[30-(ms-31)],0);
	MOVLW      96
	MOVWF      FARG_Glcd_Line_x_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_start+1
	MOVLW      32
	MOVWF      FARG_Glcd_Line_y_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_start+1
	MOVLW      31
	SUBWF      FARG_mise_ms+0, 0
	MOVWF      R2+0
	MOVLW      0
	BTFSS      STATUS+0, 0
	ADDLW      1
	SUBWF      FARG_mise_ms+1, 0
	MOVWF      R2+1
	MOVF       R2+0, 0
	SUBLW      15
	MOVWF      R0+0
	MOVF       R2+1, 0
	BTFSS      STATUS+0, 0
	ADDLW      1
	CLRF       R0+1
	SUBWF      R0+1, 1
	MOVF       R0+0, 0
	ADDWF      FARG_mise_ax+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_Glcd_Line_x_end+0
	MOVLW      0
	BTFSC      FARG_Glcd_Line_x_end+0, 7
	MOVLW      255
	MOVWF      FARG_Glcd_Line_x_end+1
	MOVLW      0
	BTFSC      FARG_Glcd_Line_x_end+0, 7
	MOVLW      255
	MOVWF      FARG_Glcd_Line_x_end+1
	MOVF       R2+0, 0
	SUBLW      30
	MOVWF      R0+0
	MOVF       R2+1, 0
	BTFSS      STATUS+0, 0
	ADDLW      1
	CLRF       R0+1
	SUBWF      R0+1, 1
	MOVF       R0+0, 0
	ADDWF      FARG_mise_ay+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_Glcd_Line_y_end+0
	MOVLW      0
	BTFSC      FARG_Glcd_Line_y_end+0, 7
	MOVLW      255
	MOVWF      FARG_Glcd_Line_y_end+1
	MOVLW      0
	BTFSC      FARG_Glcd_Line_y_end+0, 7
	MOVLW      255
	MOVWF      FARG_Glcd_Line_y_end+1
	CLRF       FARG_Glcd_Line_color+0
	CALL       _Glcd_Line+0
;Aclock.c,59 :: 		Glcd_line(96,32,ax[15-(ms-30)],ay[30-(ms-30)],1);
	MOVLW      96
	MOVWF      FARG_Glcd_Line_x_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_start+1
	MOVLW      32
	MOVWF      FARG_Glcd_Line_y_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_start+1
	MOVLW      30
	SUBWF      FARG_mise_ms+0, 0
	MOVWF      R2+0
	MOVLW      0
	BTFSS      STATUS+0, 0
	ADDLW      1
	SUBWF      FARG_mise_ms+1, 0
	MOVWF      R2+1
	MOVF       R2+0, 0
	SUBLW      15
	MOVWF      R0+0
	MOVF       R2+1, 0
	BTFSS      STATUS+0, 0
	ADDLW      1
	CLRF       R0+1
	SUBWF      R0+1, 1
	MOVF       R0+0, 0
	ADDWF      FARG_mise_ax+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_Glcd_Line_x_end+0
	MOVLW      0
	BTFSC      FARG_Glcd_Line_x_end+0, 7
	MOVLW      255
	MOVWF      FARG_Glcd_Line_x_end+1
	MOVLW      0
	BTFSC      FARG_Glcd_Line_x_end+0, 7
	MOVLW      255
	MOVWF      FARG_Glcd_Line_x_end+1
	MOVF       R2+0, 0
	SUBLW      30
	MOVWF      R0+0
	MOVF       R2+1, 0
	BTFSS      STATUS+0, 0
	ADDLW      1
	CLRF       R0+1
	SUBWF      R0+1, 1
	MOVF       R0+0, 0
	ADDWF      FARG_mise_ay+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_Glcd_Line_y_end+0
	MOVLW      0
	BTFSC      FARG_Glcd_Line_y_end+0, 7
	MOVLW      255
	MOVWF      FARG_Glcd_Line_y_end+1
	MOVLW      0
	BTFSC      FARG_Glcd_Line_y_end+0, 7
	MOVLW      255
	MOVWF      FARG_Glcd_Line_y_end+1
	MOVLW      1
	MOVWF      FARG_Glcd_Line_color+0
	CALL       _Glcd_Line+0
;Aclock.c,60 :: 		}
L_mise6:
;Aclock.c,61 :: 		if(ms<=60&&ms>45){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      FARG_mise_ms+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__mise38
	MOVF       FARG_mise_ms+0, 0
	SUBLW      60
L__mise38:
	BTFSS      STATUS+0, 0
	GOTO       L_mise9
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      FARG_mise_ms+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__mise39
	MOVF       FARG_mise_ms+0, 0
	SUBLW      45
L__mise39:
	BTFSC      STATUS+0, 0
	GOTO       L_mise9
L__mise30:
;Aclock.c,62 :: 		Glcd_line(96,32,ax[ms-46],ay[15-(ms-46)],0);
	MOVLW      96
	MOVWF      FARG_Glcd_Line_x_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_start+1
	MOVLW      32
	MOVWF      FARG_Glcd_Line_y_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_start+1
	MOVLW      46
	SUBWF      FARG_mise_ms+0, 0
	MOVWF      R0+0
	MOVLW      0
	BTFSS      STATUS+0, 0
	ADDLW      1
	SUBWF      FARG_mise_ms+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	ADDWF      FARG_mise_ax+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_Glcd_Line_x_end+0
	MOVLW      0
	BTFSC      FARG_Glcd_Line_x_end+0, 7
	MOVLW      255
	MOVWF      FARG_Glcd_Line_x_end+1
	MOVLW      0
	BTFSC      FARG_Glcd_Line_x_end+0, 7
	MOVLW      255
	MOVWF      FARG_Glcd_Line_x_end+1
	MOVF       R0+0, 0
	SUBLW      15
	MOVWF      R0+0
	MOVF       R0+1, 0
	BTFSS      STATUS+0, 0
	ADDLW      1
	CLRF       R0+1
	SUBWF      R0+1, 1
	MOVF       R0+0, 0
	ADDWF      FARG_mise_ay+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_Glcd_Line_y_end+0
	MOVLW      0
	BTFSC      FARG_Glcd_Line_y_end+0, 7
	MOVLW      255
	MOVWF      FARG_Glcd_Line_y_end+1
	MOVLW      0
	BTFSC      FARG_Glcd_Line_y_end+0, 7
	MOVLW      255
	MOVWF      FARG_Glcd_Line_y_end+1
	CLRF       FARG_Glcd_Line_color+0
	CALL       _Glcd_Line+0
;Aclock.c,63 :: 		Glcd_line(96,32,ax[ms-45],ay[15-(ms-45)],1);
	MOVLW      96
	MOVWF      FARG_Glcd_Line_x_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_start+1
	MOVLW      32
	MOVWF      FARG_Glcd_Line_y_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_start+1
	MOVLW      45
	SUBWF      FARG_mise_ms+0, 0
	MOVWF      R0+0
	MOVLW      0
	BTFSS      STATUS+0, 0
	ADDLW      1
	SUBWF      FARG_mise_ms+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	ADDWF      FARG_mise_ax+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_Glcd_Line_x_end+0
	MOVLW      0
	BTFSC      FARG_Glcd_Line_x_end+0, 7
	MOVLW      255
	MOVWF      FARG_Glcd_Line_x_end+1
	MOVLW      0
	BTFSC      FARG_Glcd_Line_x_end+0, 7
	MOVLW      255
	MOVWF      FARG_Glcd_Line_x_end+1
	MOVF       R0+0, 0
	SUBLW      15
	MOVWF      R0+0
	MOVF       R0+1, 0
	BTFSS      STATUS+0, 0
	ADDLW      1
	CLRF       R0+1
	SUBWF      R0+1, 1
	MOVF       R0+0, 0
	ADDWF      FARG_mise_ay+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_Glcd_Line_y_end+0
	MOVLW      0
	BTFSC      FARG_Glcd_Line_y_end+0, 7
	MOVLW      255
	MOVWF      FARG_Glcd_Line_y_end+1
	MOVLW      0
	BTFSC      FARG_Glcd_Line_y_end+0, 7
	MOVLW      255
	MOVWF      FARG_Glcd_Line_y_end+1
	MOVLW      1
	MOVWF      FARG_Glcd_Line_color+0
	CALL       _Glcd_Line+0
;Aclock.c,64 :: 		}
L_mise9:
;Aclock.c,65 :: 		}
	RETURN
; end of _mise

_digital:

;Aclock.c,66 :: 		void digital(){
;Aclock.c,67 :: 		shorttostr(se,seconds);
	MOVF       _se+0, 0
	MOVWF      FARG_ShortToStr_input+0
	MOVLW      _seconds+0
	MOVWF      FARG_ShortToStr_output+0
	CALL       _ShortToStr+0
;Aclock.c,68 :: 		shorttostr(mi,minutes);
	MOVF       _mi+0, 0
	MOVWF      FARG_ShortToStr_input+0
	MOVLW      _minutes+0
	MOVWF      FARG_ShortToStr_output+0
	CALL       _ShortToStr+0
;Aclock.c,69 :: 		shorttostr(hr,hours);
	MOVF       _hr+0, 0
	MOVWF      FARG_ShortToStr_input+0
	MOVLW      _hours+0
	MOVWF      FARG_ShortToStr_output+0
	CALL       _ShortToStr+0
;Aclock.c,70 :: 		Glcd_write_text(seconds,-11,3,1);
	MOVLW      _seconds+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      245
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	MOVLW      3
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;Aclock.c,71 :: 		Glcd_write_text(minutes, 12,3,1);
	MOVLW      _minutes+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      12
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	MOVLW      3
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;Aclock.c,72 :: 		Glcd_write_text(hours  , 35,3,1);
	MOVLW      _hours+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      35
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	MOVLW      3
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;Aclock.c,73 :: 		Glcd_V_Line(18, 35, 20, 1);
	MOVLW      18
	MOVWF      FARG_Glcd_V_Line_y_start+0
	MOVLW      35
	MOVWF      FARG_Glcd_V_Line_y_end+0
	MOVLW      20
	MOVWF      FARG_Glcd_V_Line_x_pos+0
	MOVLW      1
	MOVWF      FARG_Glcd_V_Line_color+0
	CALL       _Glcd_V_Line+0
;Aclock.c,74 :: 		Glcd_V_Line(18, 35, 41, 1);
	MOVLW      18
	MOVWF      FARG_Glcd_V_Line_y_start+0
	MOVLW      35
	MOVWF      FARG_Glcd_V_Line_y_end+0
	MOVLW      41
	MOVWF      FARG_Glcd_V_Line_x_pos+0
	MOVLW      1
	MOVWF      FARG_Glcd_V_Line_color+0
	CALL       _Glcd_V_Line+0
;Aclock.c,75 :: 		}
	RETURN
; end of _digital

_analogue:

;Aclock.c,77 :: 		void analogue(){
;Aclock.c,78 :: 		mise(se,sx,sy );
	MOVF       _se+0, 0
	MOVWF      FARG_mise_ms+0
	MOVLW      0
	BTFSC      FARG_mise_ms+0, 7
	MOVLW      255
	MOVWF      FARG_mise_ms+1
	MOVLW      _sx+0
	MOVWF      FARG_mise_ax+0
	MOVLW      _sy+0
	MOVWF      FARG_mise_ay+0
	CALL       _mise+0
;Aclock.c,79 :: 		mise(mi,mx,my );
	MOVF       _mi+0, 0
	MOVWF      FARG_mise_ms+0
	MOVLW      0
	BTFSC      FARG_mise_ms+0, 7
	MOVLW      255
	MOVWF      FARG_mise_ms+1
	MOVLW      _mx+0
	MOVWF      FARG_mise_ax+0
	MOVLW      _my+0
	MOVWF      FARG_mise_ay+0
	CALL       _mise+0
;Aclock.c,80 :: 		Glcd_circle(96,32,30,1);
	MOVLW      96
	MOVWF      FARG_Glcd_Circle_x_center+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_x_center+1
	MOVLW      32
	MOVWF      FARG_Glcd_Circle_y_center+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_y_center+1
	MOVLW      30
	MOVWF      FARG_Glcd_Circle_radius+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_radius+1
	MOVLW      1
	MOVWF      FARG_Glcd_Circle_color+0
	CALL       _Glcd_Circle+0
;Aclock.c,81 :: 		switch (hr){
	GOTO       L_analogue10
;Aclock.c,82 :: 		case 1: Glcd_line(96,32,96,17,0);
L_analogue12:
	MOVLW      96
	MOVWF      FARG_Glcd_Line_x_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_start+1
	MOVLW      32
	MOVWF      FARG_Glcd_Line_y_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_start+1
	MOVLW      96
	MOVWF      FARG_Glcd_Line_x_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_end+1
	MOVLW      17
	MOVWF      FARG_Glcd_Line_y_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_end+1
	CLRF       FARG_Glcd_Line_color+0
	CALL       _Glcd_Line+0
;Aclock.c,83 :: 		Glcd_line(96,32,102,20,1);
	MOVLW      96
	MOVWF      FARG_Glcd_Line_x_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_start+1
	MOVLW      32
	MOVWF      FARG_Glcd_Line_y_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_start+1
	MOVLW      102
	MOVWF      FARG_Glcd_Line_x_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_end+1
	MOVLW      20
	MOVWF      FARG_Glcd_Line_y_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_end+1
	MOVLW      1
	MOVWF      FARG_Glcd_Line_color+0
	CALL       _Glcd_Line+0
;Aclock.c,84 :: 		break;
	GOTO       L_analogue11
;Aclock.c,85 :: 		case 2: Glcd_line(96,32,102,20,0);
L_analogue13:
	MOVLW      96
	MOVWF      FARG_Glcd_Line_x_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_start+1
	MOVLW      32
	MOVWF      FARG_Glcd_Line_y_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_start+1
	MOVLW      102
	MOVWF      FARG_Glcd_Line_x_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_end+1
	MOVLW      20
	MOVWF      FARG_Glcd_Line_y_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_end+1
	CLRF       FARG_Glcd_Line_color+0
	CALL       _Glcd_Line+0
;Aclock.c,86 :: 		Glcd_line(96,32,107,25,1);
	MOVLW      96
	MOVWF      FARG_Glcd_Line_x_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_start+1
	MOVLW      32
	MOVWF      FARG_Glcd_Line_y_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_start+1
	MOVLW      107
	MOVWF      FARG_Glcd_Line_x_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_end+1
	MOVLW      25
	MOVWF      FARG_Glcd_Line_y_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_end+1
	MOVLW      1
	MOVWF      FARG_Glcd_Line_color+0
	CALL       _Glcd_Line+0
;Aclock.c,87 :: 		break;
	GOTO       L_analogue11
;Aclock.c,88 :: 		case 3: Glcd_line(96,32,107,25,0);
L_analogue14:
	MOVLW      96
	MOVWF      FARG_Glcd_Line_x_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_start+1
	MOVLW      32
	MOVWF      FARG_Glcd_Line_y_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_start+1
	MOVLW      107
	MOVWF      FARG_Glcd_Line_x_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_end+1
	MOVLW      25
	MOVWF      FARG_Glcd_Line_y_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_end+1
	CLRF       FARG_Glcd_Line_color+0
	CALL       _Glcd_Line+0
;Aclock.c,89 :: 		Glcd_line(96,32,110,32,1);
	MOVLW      96
	MOVWF      FARG_Glcd_Line_x_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_start+1
	MOVLW      32
	MOVWF      FARG_Glcd_Line_y_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_start+1
	MOVLW      110
	MOVWF      FARG_Glcd_Line_x_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_end+1
	MOVLW      32
	MOVWF      FARG_Glcd_Line_y_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_end+1
	MOVLW      1
	MOVWF      FARG_Glcd_Line_color+0
	CALL       _Glcd_Line+0
;Aclock.c,90 :: 		break;
	GOTO       L_analogue11
;Aclock.c,91 :: 		case 4: Glcd_line(96,32,110,32,0);
L_analogue15:
	MOVLW      96
	MOVWF      FARG_Glcd_Line_x_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_start+1
	MOVLW      32
	MOVWF      FARG_Glcd_Line_y_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_start+1
	MOVLW      110
	MOVWF      FARG_Glcd_Line_x_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_end+1
	MOVLW      32
	MOVWF      FARG_Glcd_Line_y_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_end+1
	CLRF       FARG_Glcd_Line_color+0
	CALL       _Glcd_Line+0
;Aclock.c,92 :: 		Glcd_line(96,32,107,39,1);
	MOVLW      96
	MOVWF      FARG_Glcd_Line_x_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_start+1
	MOVLW      32
	MOVWF      FARG_Glcd_Line_y_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_start+1
	MOVLW      107
	MOVWF      FARG_Glcd_Line_x_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_end+1
	MOVLW      39
	MOVWF      FARG_Glcd_Line_y_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_end+1
	MOVLW      1
	MOVWF      FARG_Glcd_Line_color+0
	CALL       _Glcd_Line+0
;Aclock.c,93 :: 		break;
	GOTO       L_analogue11
;Aclock.c,94 :: 		case 5: Glcd_line(96,32,107,39,0);
L_analogue16:
	MOVLW      96
	MOVWF      FARG_Glcd_Line_x_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_start+1
	MOVLW      32
	MOVWF      FARG_Glcd_Line_y_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_start+1
	MOVLW      107
	MOVWF      FARG_Glcd_Line_x_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_end+1
	MOVLW      39
	MOVWF      FARG_Glcd_Line_y_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_end+1
	CLRF       FARG_Glcd_Line_color+0
	CALL       _Glcd_Line+0
;Aclock.c,95 :: 		Glcd_line(96,32,102,44,1);
	MOVLW      96
	MOVWF      FARG_Glcd_Line_x_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_start+1
	MOVLW      32
	MOVWF      FARG_Glcd_Line_y_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_start+1
	MOVLW      102
	MOVWF      FARG_Glcd_Line_x_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_end+1
	MOVLW      44
	MOVWF      FARG_Glcd_Line_y_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_end+1
	MOVLW      1
	MOVWF      FARG_Glcd_Line_color+0
	CALL       _Glcd_Line+0
;Aclock.c,96 :: 		break;
	GOTO       L_analogue11
;Aclock.c,97 :: 		case 6: Glcd_line(96,32,102,44,0);
L_analogue17:
	MOVLW      96
	MOVWF      FARG_Glcd_Line_x_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_start+1
	MOVLW      32
	MOVWF      FARG_Glcd_Line_y_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_start+1
	MOVLW      102
	MOVWF      FARG_Glcd_Line_x_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_end+1
	MOVLW      44
	MOVWF      FARG_Glcd_Line_y_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_end+1
	CLRF       FARG_Glcd_Line_color+0
	CALL       _Glcd_Line+0
;Aclock.c,98 :: 		Glcd_line(96,32,96,47,1);
	MOVLW      96
	MOVWF      FARG_Glcd_Line_x_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_start+1
	MOVLW      32
	MOVWF      FARG_Glcd_Line_y_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_start+1
	MOVLW      96
	MOVWF      FARG_Glcd_Line_x_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_end+1
	MOVLW      47
	MOVWF      FARG_Glcd_Line_y_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_end+1
	MOVLW      1
	MOVWF      FARG_Glcd_Line_color+0
	CALL       _Glcd_Line+0
;Aclock.c,99 :: 		break;
	GOTO       L_analogue11
;Aclock.c,100 :: 		case 7: Glcd_line(96,32,96,47,0);
L_analogue18:
	MOVLW      96
	MOVWF      FARG_Glcd_Line_x_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_start+1
	MOVLW      32
	MOVWF      FARG_Glcd_Line_y_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_start+1
	MOVLW      96
	MOVWF      FARG_Glcd_Line_x_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_end+1
	MOVLW      47
	MOVWF      FARG_Glcd_Line_y_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_end+1
	CLRF       FARG_Glcd_Line_color+0
	CALL       _Glcd_Line+0
;Aclock.c,101 :: 		Glcd_line(96,32,89,44,1);
	MOVLW      96
	MOVWF      FARG_Glcd_Line_x_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_start+1
	MOVLW      32
	MOVWF      FARG_Glcd_Line_y_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_start+1
	MOVLW      89
	MOVWF      FARG_Glcd_Line_x_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_end+1
	MOVLW      44
	MOVWF      FARG_Glcd_Line_y_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_end+1
	MOVLW      1
	MOVWF      FARG_Glcd_Line_color+0
	CALL       _Glcd_Line+0
;Aclock.c,102 :: 		break;
	GOTO       L_analogue11
;Aclock.c,103 :: 		case 8: Glcd_line(96,32,89,44,0);
L_analogue19:
	MOVLW      96
	MOVWF      FARG_Glcd_Line_x_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_start+1
	MOVLW      32
	MOVWF      FARG_Glcd_Line_y_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_start+1
	MOVLW      89
	MOVWF      FARG_Glcd_Line_x_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_end+1
	MOVLW      44
	MOVWF      FARG_Glcd_Line_y_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_end+1
	CLRF       FARG_Glcd_Line_color+0
	CALL       _Glcd_Line+0
;Aclock.c,104 :: 		Glcd_line(96,32,84,39,1);
	MOVLW      96
	MOVWF      FARG_Glcd_Line_x_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_start+1
	MOVLW      32
	MOVWF      FARG_Glcd_Line_y_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_start+1
	MOVLW      84
	MOVWF      FARG_Glcd_Line_x_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_end+1
	MOVLW      39
	MOVWF      FARG_Glcd_Line_y_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_end+1
	MOVLW      1
	MOVWF      FARG_Glcd_Line_color+0
	CALL       _Glcd_Line+0
;Aclock.c,105 :: 		break;
	GOTO       L_analogue11
;Aclock.c,106 :: 		case 9: Glcd_line(96,32,84,39,0);
L_analogue20:
	MOVLW      96
	MOVWF      FARG_Glcd_Line_x_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_start+1
	MOVLW      32
	MOVWF      FARG_Glcd_Line_y_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_start+1
	MOVLW      84
	MOVWF      FARG_Glcd_Line_x_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_end+1
	MOVLW      39
	MOVWF      FARG_Glcd_Line_y_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_end+1
	CLRF       FARG_Glcd_Line_color+0
	CALL       _Glcd_Line+0
;Aclock.c,107 :: 		Glcd_line(96,32,81,32,1);
	MOVLW      96
	MOVWF      FARG_Glcd_Line_x_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_start+1
	MOVLW      32
	MOVWF      FARG_Glcd_Line_y_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_start+1
	MOVLW      81
	MOVWF      FARG_Glcd_Line_x_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_end+1
	MOVLW      32
	MOVWF      FARG_Glcd_Line_y_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_end+1
	MOVLW      1
	MOVWF      FARG_Glcd_Line_color+0
	CALL       _Glcd_Line+0
;Aclock.c,108 :: 		break;
	GOTO       L_analogue11
;Aclock.c,109 :: 		case 10: Glcd_line(96,32,81,32,0);
L_analogue21:
	MOVLW      96
	MOVWF      FARG_Glcd_Line_x_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_start+1
	MOVLW      32
	MOVWF      FARG_Glcd_Line_y_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_start+1
	MOVLW      81
	MOVWF      FARG_Glcd_Line_x_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_end+1
	MOVLW      32
	MOVWF      FARG_Glcd_Line_y_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_end+1
	CLRF       FARG_Glcd_Line_color+0
	CALL       _Glcd_Line+0
;Aclock.c,110 :: 		Glcd_line(96,32,84,25,1);
	MOVLW      96
	MOVWF      FARG_Glcd_Line_x_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_start+1
	MOVLW      32
	MOVWF      FARG_Glcd_Line_y_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_start+1
	MOVLW      84
	MOVWF      FARG_Glcd_Line_x_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_end+1
	MOVLW      25
	MOVWF      FARG_Glcd_Line_y_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_end+1
	MOVLW      1
	MOVWF      FARG_Glcd_Line_color+0
	CALL       _Glcd_Line+0
;Aclock.c,111 :: 		break;
	GOTO       L_analogue11
;Aclock.c,112 :: 		case 11: Glcd_line(96,32,84,25,0);
L_analogue22:
	MOVLW      96
	MOVWF      FARG_Glcd_Line_x_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_start+1
	MOVLW      32
	MOVWF      FARG_Glcd_Line_y_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_start+1
	MOVLW      84
	MOVWF      FARG_Glcd_Line_x_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_end+1
	MOVLW      25
	MOVWF      FARG_Glcd_Line_y_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_end+1
	CLRF       FARG_Glcd_Line_color+0
	CALL       _Glcd_Line+0
;Aclock.c,113 :: 		Glcd_line(96,32,89,20,1);
	MOVLW      96
	MOVWF      FARG_Glcd_Line_x_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_start+1
	MOVLW      32
	MOVWF      FARG_Glcd_Line_y_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_start+1
	MOVLW      89
	MOVWF      FARG_Glcd_Line_x_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_end+1
	MOVLW      20
	MOVWF      FARG_Glcd_Line_y_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_end+1
	MOVLW      1
	MOVWF      FARG_Glcd_Line_color+0
	CALL       _Glcd_Line+0
;Aclock.c,114 :: 		break;
	GOTO       L_analogue11
;Aclock.c,115 :: 		default: Glcd_line(96,32,89,20,0);
L_analogue23:
	MOVLW      96
	MOVWF      FARG_Glcd_Line_x_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_start+1
	MOVLW      32
	MOVWF      FARG_Glcd_Line_y_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_start+1
	MOVLW      89
	MOVWF      FARG_Glcd_Line_x_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_end+1
	MOVLW      20
	MOVWF      FARG_Glcd_Line_y_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_end+1
	CLRF       FARG_Glcd_Line_color+0
	CALL       _Glcd_Line+0
;Aclock.c,116 :: 		Glcd_line(96,32,96,17,1);
	MOVLW      96
	MOVWF      FARG_Glcd_Line_x_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_start+1
	MOVLW      32
	MOVWF      FARG_Glcd_Line_y_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_start+1
	MOVLW      96
	MOVWF      FARG_Glcd_Line_x_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_end+1
	MOVLW      17
	MOVWF      FARG_Glcd_Line_y_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_end+1
	MOVLW      1
	MOVWF      FARG_Glcd_Line_color+0
	CALL       _Glcd_Line+0
;Aclock.c,117 :: 		break;
	GOTO       L_analogue11
;Aclock.c,118 :: 		}
L_analogue10:
	MOVF       _hr+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_analogue12
	MOVF       _hr+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_analogue13
	MOVF       _hr+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_analogue14
	MOVF       _hr+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_analogue15
	MOVF       _hr+0, 0
	XORLW      5
	BTFSC      STATUS+0, 2
	GOTO       L_analogue16
	MOVF       _hr+0, 0
	XORLW      6
	BTFSC      STATUS+0, 2
	GOTO       L_analogue17
	MOVF       _hr+0, 0
	XORLW      7
	BTFSC      STATUS+0, 2
	GOTO       L_analogue18
	MOVF       _hr+0, 0
	XORLW      8
	BTFSC      STATUS+0, 2
	GOTO       L_analogue19
	MOVF       _hr+0, 0
	XORLW      9
	BTFSC      STATUS+0, 2
	GOTO       L_analogue20
	MOVF       _hr+0, 0
	XORLW      10
	BTFSC      STATUS+0, 2
	GOTO       L_analogue21
	MOVF       _hr+0, 0
	XORLW      11
	BTFSC      STATUS+0, 2
	GOTO       L_analogue22
	GOTO       L_analogue23
L_analogue11:
;Aclock.c,119 :: 		}
	RETURN
; end of _analogue

_main:

;Aclock.c,121 :: 		void main(){
;Aclock.c,122 :: 		init();
	CALL       _init+0
;Aclock.c,123 :: 		while(1){
L_main24:
;Aclock.c,124 :: 		delay_ms(559);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      214
	MOVWF      R12+0
	MOVLW      245
	MOVWF      R13+0
L_main26:
	DECFSZ     R13+0, 1
	GOTO       L_main26
	DECFSZ     R12+0, 1
	GOTO       L_main26
	DECFSZ     R11+0, 1
	GOTO       L_main26
	NOP
	NOP
;Aclock.c,125 :: 		se++ ;
	INCF       _se+0, 1
;Aclock.c,126 :: 		if(se==60){
	MOVF       _se+0, 0
	XORLW      60
	BTFSS      STATUS+0, 2
	GOTO       L_main27
;Aclock.c,127 :: 		se=0;
	CLRF       _se+0
;Aclock.c,128 :: 		mi++;
	INCF       _mi+0, 1
;Aclock.c,129 :: 		if(mi==60){
	MOVF       _mi+0, 0
	XORLW      60
	BTFSS      STATUS+0, 2
	GOTO       L_main28
;Aclock.c,130 :: 		mi=0;
	CLRF       _mi+0
;Aclock.c,131 :: 		hr++;
	INCF       _hr+0, 1
;Aclock.c,132 :: 		if(hr==24){
	MOVF       _hr+0, 0
	XORLW      24
	BTFSS      STATUS+0, 2
	GOTO       L_main29
;Aclock.c,133 :: 		hr=0;
	CLRF       _hr+0
;Aclock.c,134 :: 		}
L_main29:
;Aclock.c,135 :: 		}
L_main28:
;Aclock.c,136 :: 		}
L_main27:
;Aclock.c,137 :: 		digital();
	CALL       _digital+0
;Aclock.c,138 :: 		analogue();
	CALL       _analogue+0
;Aclock.c,139 :: 		}
	GOTO       L_main24
;Aclock.c,140 :: 		}
	GOTO       $+0
; end of _main

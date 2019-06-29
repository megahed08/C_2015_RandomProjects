
_set_Regs:

;i2c-test.c,27 :: 		void set_Regs(){
;i2c-test.c,29 :: 		I2C1_Start();
	CALL       _I2C1_Start+0
;i2c-test.c,30 :: 		I2C1_Wr(0x3C);
	MOVLW      60
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;i2c-test.c,31 :: 		I2C1_Wr(0x00);
	CLRF       FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;i2c-test.c,32 :: 		I2C1_Wr(0x14);
	MOVLW      20
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;i2c-test.c,33 :: 		I2C1_Stop();
	CALL       _I2C1_Stop+0
;i2c-test.c,35 :: 		I2C1_Start();
	CALL       _I2C1_Start+0
;i2c-test.c,36 :: 		I2C1_Wr(0x3C);
	MOVLW      60
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;i2c-test.c,37 :: 		I2C1_Wr(0x02);
	MOVLW      2
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;i2c-test.c,38 :: 		I2C1_Wr(0x00);
	CLRF       FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;i2c-test.c,39 :: 		I2C1_Stop();
	CALL       _I2C1_Stop+0
;i2c-test.c,41 :: 		I2C1_Start();
	CALL       _I2C1_Start+0
;i2c-test.c,42 :: 		I2C1_Wr(0x32);
	MOVLW      50
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;i2c-test.c,43 :: 		I2C1_Wr(0x20);
	MOVLW      32
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;i2c-test.c,44 :: 		I2C1_Wr(0x27);
	MOVLW      39
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;i2c-test.c,45 :: 		I2C1_Stop();
	CALL       _I2C1_Stop+0
;i2c-test.c,47 :: 		I2C1_Start();
	CALL       _I2C1_Start+0
;i2c-test.c,48 :: 		I2C1_Wr(0x32);
	MOVLW      50
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;i2c-test.c,49 :: 		I2C1_Wr(0x23);
	MOVLW      35
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;i2c-test.c,50 :: 		I2C1_Wr(0x40);
	MOVLW      64
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;i2c-test.c,51 :: 		I2C1_Stop();
	CALL       _I2C1_Stop+0
;i2c-test.c,52 :: 		}
	RETURN
; end of _set_Regs

_Accelerometer:

;i2c-test.c,55 :: 		void Accelerometer(void){
;i2c-test.c,57 :: 		I2C1_Start();
	CALL       _I2C1_Start+0
;i2c-test.c,58 :: 		I2C1_Wr(0x32); // device address with +W
	MOVLW      50
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;i2c-test.c,59 :: 		I2C1_Wr(0x29);
	MOVLW      41
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;i2c-test.c,60 :: 		I2C1_Repeated_Start();
	CALL       _I2C1_Repeated_Start+0
;i2c-test.c,61 :: 		I2C1_Wr(0x33); // device address with +R
	MOVLW      51
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;i2c-test.c,62 :: 		AXAxish =(int)I2C1_Rd (0);
	CLRF       FARG_I2C1_Rd_ack+0
	CALL       _I2C1_Rd+0
	MOVF       R0+0, 0
	MOVWF      _AXAxish+0
	CLRF       _AXAxish+1
;i2c-test.c,63 :: 		I2C1_Stop();
	CALL       _I2C1_Stop+0
;i2c-test.c,65 :: 		I2C1_Start();
	CALL       _I2C1_Start+0
;i2c-test.c,66 :: 		I2C1_Wr(0x32); // device address with +W
	MOVLW      50
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;i2c-test.c,67 :: 		I2C1_Wr(0x28);
	MOVLW      40
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;i2c-test.c,68 :: 		I2C1_Repeated_Start();
	CALL       _I2C1_Repeated_Start+0
;i2c-test.c,69 :: 		I2C1_Wr(0x33); // device address with +R
	MOVLW      51
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;i2c-test.c,70 :: 		AXAxisl =(int)I2C1_Rd (0);
	CLRF       FARG_I2C1_Rd_ack+0
	CALL       _I2C1_Rd+0
	MOVF       R0+0, 0
	MOVWF      _AXAxisl+0
	CLRF       _AXAxisl+1
;i2c-test.c,71 :: 		I2C1_Stop();
	CALL       _I2C1_Stop+0
;i2c-test.c,72 :: 		Delay_ms(10);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_Accelerometer0:
	DECFSZ     R13+0, 1
	GOTO       L_Accelerometer0
	DECFSZ     R12+0, 1
	GOTO       L_Accelerometer0
	NOP
	NOP
;i2c-test.c,74 :: 		I2C1_Start();
	CALL       _I2C1_Start+0
;i2c-test.c,75 :: 		I2C1_Wr(0x32); // device address with +W
	MOVLW      50
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;i2c-test.c,76 :: 		I2C1_Wr(0x2B);
	MOVLW      43
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;i2c-test.c,77 :: 		I2C1_Repeated_Start();
	CALL       _I2C1_Repeated_Start+0
;i2c-test.c,78 :: 		I2C1_Wr(0x33); // device address with +R
	MOVLW      51
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;i2c-test.c,79 :: 		AYAxish =(int) I2C1_Rd (0);
	CLRF       FARG_I2C1_Rd_ack+0
	CALL       _I2C1_Rd+0
	MOVF       R0+0, 0
	MOVWF      _AYAxish+0
	CLRF       _AYAxish+1
;i2c-test.c,80 :: 		I2C1_Stop();
	CALL       _I2C1_Stop+0
;i2c-test.c,82 :: 		I2C1_Start();
	CALL       _I2C1_Start+0
;i2c-test.c,83 :: 		I2C1_Wr(0x32); // device address with +W
	MOVLW      50
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;i2c-test.c,84 :: 		I2C1_Wr(0x2A);
	MOVLW      42
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;i2c-test.c,85 :: 		I2C1_Repeated_Start();
	CALL       _I2C1_Repeated_Start+0
;i2c-test.c,86 :: 		I2C1_Wr(0x33); // device address with +R
	MOVLW      51
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;i2c-test.c,87 :: 		AYAxisl =(int) I2C1_Rd (0);
	CLRF       FARG_I2C1_Rd_ack+0
	CALL       _I2C1_Rd+0
	MOVF       R0+0, 0
	MOVWF      _AYAxisl+0
	CLRF       _AYAxisl+1
;i2c-test.c,88 :: 		I2C1_Stop();
	CALL       _I2C1_Stop+0
;i2c-test.c,89 :: 		Delay_ms(10);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_Accelerometer1:
	DECFSZ     R13+0, 1
	GOTO       L_Accelerometer1
	DECFSZ     R12+0, 1
	GOTO       L_Accelerometer1
	NOP
	NOP
;i2c-test.c,91 :: 		I2C1_Start();
	CALL       _I2C1_Start+0
;i2c-test.c,92 :: 		I2C1_Wr(0x32); // device address with +W
	MOVLW      50
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;i2c-test.c,93 :: 		I2C1_Wr(0x2D);
	MOVLW      45
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;i2c-test.c,94 :: 		I2C1_Repeated_Start();
	CALL       _I2C1_Repeated_Start+0
;i2c-test.c,95 :: 		I2C1_Wr(0x33); // device address with +R
	MOVLW      51
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;i2c-test.c,96 :: 		AZAxish =(int) I2C1_Rd (0);
	CLRF       FARG_I2C1_Rd_ack+0
	CALL       _I2C1_Rd+0
	MOVF       R0+0, 0
	MOVWF      _AZAxish+0
	CLRF       _AZAxish+1
;i2c-test.c,97 :: 		I2C1_Stop();
	CALL       _I2C1_Stop+0
;i2c-test.c,99 :: 		I2C1_Start();
	CALL       _I2C1_Start+0
;i2c-test.c,100 :: 		I2C1_Wr(0x32); // device address with +W
	MOVLW      50
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;i2c-test.c,101 :: 		I2C1_Wr(0x2C);
	MOVLW      44
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;i2c-test.c,102 :: 		I2C1_Repeated_Start();
	CALL       _I2C1_Repeated_Start+0
;i2c-test.c,103 :: 		I2C1_Wr(0x33); // device address with +R
	MOVLW      51
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;i2c-test.c,104 :: 		AZAxisl =(int) I2C1_Rd (0);
	CLRF       FARG_I2C1_Rd_ack+0
	CALL       _I2C1_Rd+0
	MOVF       R0+0, 0
	MOVWF      _AZAxisl+0
	CLRF       _AZAxisl+1
;i2c-test.c,105 :: 		I2C1_Stop();
	CALL       _I2C1_Stop+0
;i2c-test.c,106 :: 		}
	RETURN
; end of _Accelerometer

_Magnetometer:

;i2c-test.c,109 :: 		void Magnetometer(void){
;i2c-test.c,110 :: 		I2C1_Start();
	CALL       _I2C1_Start+0
;i2c-test.c,111 :: 		I2C1_Wr(0x3C); // device address with +W
	MOVLW      60
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;i2c-test.c,112 :: 		I2C1_Wr(0x03);
	MOVLW      3
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;i2c-test.c,113 :: 		I2C1_Repeated_Start();
	CALL       _I2C1_Repeated_Start+0
;i2c-test.c,114 :: 		I2C1_Wr(0x3D); // device address with +R
	MOVLW      61
	MOVWF      FARG_I2C1_Wr_data_+0
	CALL       _I2C1_Wr+0
;i2c-test.c,116 :: 		MXAxis =(int) ((I2C1_Rd (1) << 8) + I2C1_Rd (1));
	MOVLW      1
	MOVWF      FARG_I2C1_Rd_ack+0
	CALL       _I2C1_Rd+0
	MOVF       R0+0, 0
	MOVWF      FLOC__Magnetometer+1
	CLRF       FLOC__Magnetometer+0
	MOVLW      1
	MOVWF      FARG_I2C1_Rd_ack+0
	CALL       _I2C1_Rd+0
	MOVF       R0+0, 0
	ADDWF      FLOC__Magnetometer+0, 0
	MOVWF      _MXAxis+0
	MOVF       FLOC__Magnetometer+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      _MXAxis+1
;i2c-test.c,117 :: 		MYAxis =(int) ((I2C1_Rd (1) << 8) + I2C1_Rd (1));
	MOVLW      1
	MOVWF      FARG_I2C1_Rd_ack+0
	CALL       _I2C1_Rd+0
	MOVF       R0+0, 0
	MOVWF      FLOC__Magnetometer+1
	CLRF       FLOC__Magnetometer+0
	MOVLW      1
	MOVWF      FARG_I2C1_Rd_ack+0
	CALL       _I2C1_Rd+0
	MOVF       R0+0, 0
	ADDWF      FLOC__Magnetometer+0, 0
	MOVWF      _MYAxis+0
	MOVF       FLOC__Magnetometer+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      _MYAxis+1
;i2c-test.c,118 :: 		MZAxis =(int) ((I2C1_Rd (1) << 8) + I2C1_Rd (0));
	MOVLW      1
	MOVWF      FARG_I2C1_Rd_ack+0
	CALL       _I2C1_Rd+0
	MOVF       R0+0, 0
	MOVWF      FLOC__Magnetometer+1
	CLRF       FLOC__Magnetometer+0
	CLRF       FARG_I2C1_Rd_ack+0
	CALL       _I2C1_Rd+0
	MOVF       R0+0, 0
	ADDWF      FLOC__Magnetometer+0, 0
	MOVWF      _MZAxis+0
	MOVF       FLOC__Magnetometer+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      _MZAxis+1
;i2c-test.c,119 :: 		I2C1_Stop();
	CALL       _I2C1_Stop+0
;i2c-test.c,120 :: 		}
	RETURN
; end of _Magnetometer

_main:

;i2c-test.c,123 :: 		void main() {
;i2c-test.c,124 :: 		Glcd_init();
	CALL       _Glcd_Init+0
;i2c-test.c,125 :: 		Glcd_fill(0);
	CLRF       FARG_Glcd_Fill_pattern+0
	CALL       _Glcd_Fill+0
;i2c-test.c,126 :: 		Glcd_Write_Text("A.X = ", 0, 0, 1);
	MOVLW      ?lstr1_i2c_45test+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	CLRF       FARG_Glcd_Write_Text_x_pos+0
	CLRF       FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;i2c-test.c,127 :: 		Glcd_Write_Text("A.Y = ", 0, 1, 1);
	MOVLW      ?lstr2_i2c_45test+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	CLRF       FARG_Glcd_Write_Text_x_pos+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;i2c-test.c,128 :: 		Glcd_Write_Text("A.Z = ", 0, 2, 1);
	MOVLW      ?lstr3_i2c_45test+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	CLRF       FARG_Glcd_Write_Text_x_pos+0
	MOVLW      2
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;i2c-test.c,129 :: 		Glcd_Write_Text("____________________ ", 0, 3, 1);
	MOVLW      ?lstr4_i2c_45test+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	CLRF       FARG_Glcd_Write_Text_x_pos+0
	MOVLW      3
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;i2c-test.c,130 :: 		Glcd_Write_Text("M.X = ", 0, 4, 1);
	MOVLW      ?lstr5_i2c_45test+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	CLRF       FARG_Glcd_Write_Text_x_pos+0
	MOVLW      4
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;i2c-test.c,131 :: 		Glcd_Write_Text("M.Y = ", 0, 5, 1);
	MOVLW      ?lstr6_i2c_45test+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	CLRF       FARG_Glcd_Write_Text_x_pos+0
	MOVLW      5
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;i2c-test.c,132 :: 		Glcd_Write_Text("M.Z = ", 0, 6, 1);
	MOVLW      ?lstr7_i2c_45test+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	CLRF       FARG_Glcd_Write_Text_x_pos+0
	MOVLW      6
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;i2c-test.c,133 :: 		I2C1_Init(100000);
	MOVLW      10
	MOVWF      SSPADD+0
	CALL       _I2C1_Init+0
;i2c-test.c,134 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
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
;i2c-test.c,135 :: 		set_Regs();
	CALL       _set_Regs+0
;i2c-test.c,136 :: 		while(1){
L_main3:
;i2c-test.c,137 :: 		Magnetometer();
	CALL       _Magnetometer+0
;i2c-test.c,138 :: 		Delay_ms(50);
	MOVLW      65
	MOVWF      R12+0
	MOVLW      238
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	NOP
;i2c-test.c,139 :: 		Accelerometer();
	CALL       _Accelerometer+0
;i2c-test.c,140 :: 		Delay_ms(50);
	MOVLW      65
	MOVWF      R12+0
	MOVLW      238
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	NOP
;i2c-test.c,141 :: 		inttostr(AXAxisl, AXAxislS);
	MOVF       _AXAxisl+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       _AXAxisl+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _AXAxislS+0
	MOVWF      FARG_IntToStr_output+0
	CALL       _IntToStr+0
;i2c-test.c,142 :: 		inttostr(AYAxisl, AYAxislS);
	MOVF       _AYAxisl+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       _AYAxisl+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _AYAxislS+0
	MOVWF      FARG_IntToStr_output+0
	CALL       _IntToStr+0
;i2c-test.c,143 :: 		inttostr(AZAxisl, AZAxislS);
	MOVF       _AZAxisl+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       _AZAxisl+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _AZAxislS+0
	MOVWF      FARG_IntToStr_output+0
	CALL       _IntToStr+0
;i2c-test.c,144 :: 		inttostr(AXAxish, AXAxishS);
	MOVF       _AXAxish+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       _AXAxish+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _AXAxishS+0
	MOVWF      FARG_IntToStr_output+0
	CALL       _IntToStr+0
;i2c-test.c,145 :: 		inttostr(AYAxish, AYAxishS);
	MOVF       _AYAxish+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       _AYAxish+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _AYAxishS+0
	MOVWF      FARG_IntToStr_output+0
	CALL       _IntToStr+0
;i2c-test.c,146 :: 		inttostr(AZAxish, AZAxishS);
	MOVF       _AZAxish+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       _AZAxish+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _AZAxishS+0
	MOVWF      FARG_IntToStr_output+0
	CALL       _IntToStr+0
;i2c-test.c,148 :: 		inttostr(MXAxis/16, MXAxisS);
	MOVLW      4
	MOVWF      R0+0
	MOVF       _MXAxis+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       _MXAxis+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVF       R0+0, 0
L__main7:
	BTFSC      STATUS+0, 2
	GOTO       L__main8
	RRF        FARG_IntToStr_input+1, 1
	RRF        FARG_IntToStr_input+0, 1
	BCF        FARG_IntToStr_input+1, 7
	BTFSC      FARG_IntToStr_input+1, 6
	BSF        FARG_IntToStr_input+1, 7
	ADDLW      255
	GOTO       L__main7
L__main8:
	MOVLW      _MXAxisS+0
	MOVWF      FARG_IntToStr_output+0
	CALL       _IntToStr+0
;i2c-test.c,149 :: 		inttostr(MYAxis/16, MYAxisS);
	MOVLW      4
	MOVWF      R0+0
	MOVF       _MYAxis+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       _MYAxis+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVF       R0+0, 0
L__main9:
	BTFSC      STATUS+0, 2
	GOTO       L__main10
	RRF        FARG_IntToStr_input+1, 1
	RRF        FARG_IntToStr_input+0, 1
	BCF        FARG_IntToStr_input+1, 7
	BTFSC      FARG_IntToStr_input+1, 6
	BSF        FARG_IntToStr_input+1, 7
	ADDLW      255
	GOTO       L__main9
L__main10:
	MOVLW      _MYAxisS+0
	MOVWF      FARG_IntToStr_output+0
	CALL       _IntToStr+0
;i2c-test.c,150 :: 		inttostr(MZAxis/16, MZAxisS);
	MOVLW      4
	MOVWF      R0+0
	MOVF       _MZAxis+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       _MZAxis+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVF       R0+0, 0
L__main11:
	BTFSC      STATUS+0, 2
	GOTO       L__main12
	RRF        FARG_IntToStr_input+1, 1
	RRF        FARG_IntToStr_input+0, 1
	BCF        FARG_IntToStr_input+1, 7
	BTFSC      FARG_IntToStr_input+1, 6
	BSF        FARG_IntToStr_input+1, 7
	ADDLW      255
	GOTO       L__main11
L__main12:
	MOVLW      _MZAxisS+0
	MOVWF      FARG_IntToStr_output+0
	CALL       _IntToStr+0
;i2c-test.c,152 :: 		Glcd_Write_Text(AXAxishS, 30, 0, 1);
	MOVLW      _AXAxishS+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      30
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	CLRF       FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;i2c-test.c,153 :: 		Glcd_Write_Text(AYAxishS, 30, 1, 1);
	MOVLW      _AYAxishS+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      30
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;i2c-test.c,154 :: 		Glcd_Write_Text(AZAxishS, 30, 2, 1);
	MOVLW      _AZAxishS+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      30
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	MOVLW      2
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;i2c-test.c,155 :: 		Glcd_Write_Text(AXAxislS, 60, 0, 1);
	MOVLW      _AXAxislS+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      60
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	CLRF       FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;i2c-test.c,156 :: 		Glcd_Write_Text(AYAxislS, 60, 1, 1);
	MOVLW      _AYAxislS+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      60
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;i2c-test.c,157 :: 		Glcd_Write_Text(AZAxislS, 60, 2, 1);
	MOVLW      _AZAxislS+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      60
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	MOVLW      2
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;i2c-test.c,159 :: 		Glcd_Write_Text(MXAxisS, 30, 4, 1);
	MOVLW      _MXAxisS+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      30
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	MOVLW      4
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;i2c-test.c,160 :: 		Glcd_Write_Text(MYAxisS, 30, 5, 1);
	MOVLW      _MYAxisS+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      30
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	MOVLW      5
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;i2c-test.c,161 :: 		Glcd_Write_Text(MZAxisS, 30, 6, 1);
	MOVLW      _MZAxisS+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      30
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	MOVLW      6
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;i2c-test.c,162 :: 		}
	GOTO       L_main3
;i2c-test.c,163 :: 		}
	GOTO       $+0
; end of _main

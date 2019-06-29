
_main:

;6th.c,1 :: 		void main() {
;6th.c,4 :: 		trisb0_bit=0;
	BCF        TRISB0_bit+0, BitPos(TRISB0_bit+0)
;6th.c,5 :: 		rb0_bit=0;
	BCF        RB0_bit+0, BitPos(RB0_bit+0)
;6th.c,6 :: 		while(1){
L_main0:
;6th.c,7 :: 		x=adc_read(3);
	MOVLW      3
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
;6th.c,8 :: 		temp=x*0.4887;
	CALL       _Int2Double+0
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
	MOVWF      main_temp_L0+0
;6th.c,9 :: 		if(temp>30){
	MOVLW      128
	XORLW      30
	MOVWF      R1+0
	MOVLW      128
	XORWF      R0+0, 0
	SUBWF      R1+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main2
;6th.c,10 :: 		rb0_bit=1;
	BSF        RB0_bit+0, BitPos(RB0_bit+0)
;6th.c,11 :: 		}
L_main2:
;6th.c,12 :: 		if(temp<30){
	MOVLW      128
	XORWF      main_temp_L0+0, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      30
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main3
;6th.c,13 :: 		rb0_bit=0;
	BCF        RB0_bit+0, BitPos(RB0_bit+0)
;6th.c,14 :: 		}
L_main3:
;6th.c,15 :: 		}
	GOTO       L_main0
;6th.c,16 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

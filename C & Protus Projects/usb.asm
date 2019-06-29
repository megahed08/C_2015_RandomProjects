
_interrupt:

;usb.c,24 :: 		void interrupt(){
;usb.c,25 :: 		USB_Interrupt_Proc();                   // USB servicing is done inside the interrupt
	CALL        _USB_Interrupt_Proc+0, 0
;usb.c,26 :: 		}
L__interrupt4:
	RETFIE      1
; end of _interrupt

_main:

;usb.c,28 :: 		void main(void){
;usb.c,29 :: 		ADCON1 |= 0x0F;                         // Configure all ports with analog function as digital
	MOVLW       15
	IORWF       ADCON1+0, 1 
;usb.c,30 :: 		CMCON  |= 7;
	MOVLW       7
	IORWF       CMCON+0, 1 
;usb.c,32 :: 		lcd_init();
	CALL        _Lcd_Init+0, 0
;usb.c,34 :: 		HID_Enable(&readbuff,&writebuff);       // Enable HID communication
	MOVLW       _readbuff+0
	MOVWF       FARG_HID_Enable_readbuff+0 
	MOVLW       hi_addr(_readbuff+0)
	MOVWF       FARG_HID_Enable_readbuff+1 
	MOVLW       _writebuff+0
	MOVWF       FARG_HID_Enable_writebuff+0 
	MOVLW       hi_addr(_writebuff+0)
	MOVWF       FARG_HID_Enable_writebuff+1 
	CALL        _HID_Enable+0, 0
;usb.c,36 :: 		while(1){
L_main0:
;usb.c,37 :: 		while(!HID_Read())
L_main2:
	CALL        _HID_Read+0, 0
	MOVF        R0, 1 
	BTFSS       STATUS+0, 2 
	GOTO        L_main3
;usb.c,38 :: 		;
	GOTO        L_main2
L_main3:
;usb.c,39 :: 		lcd_out(1,1,readbuff);
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _readbuff+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_readbuff+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;usb.c,41 :: 		}
	GOTO        L_main0
;usb.c,42 :: 		}
	GOTO        $+0
; end of _main

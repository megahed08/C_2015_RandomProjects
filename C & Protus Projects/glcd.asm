
_main:

;glcd.c,29 :: 		void main() {
;glcd.c,30 :: 		glcd_init();
	CALL       _Glcd_Init+0
;glcd.c,31 :: 		glcd_fill(0);
	CLRF       FARG_Glcd_Fill_pattern+0
	CALL       _Glcd_Fill+0
;glcd.c,39 :: 		}
	GOTO       $+0
; end of _main

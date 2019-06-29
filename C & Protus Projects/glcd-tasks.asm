
_task1:

;glcd-tasks.c,43 :: 		void task1(){
;glcd-tasks.c,44 :: 		while(1){
L_task10:
;glcd-tasks.c,45 :: 		glcd_fill(0);
	CLRF       FARG_Glcd_Fill_pattern+0
	CALL       _Glcd_Fill+0
;glcd-tasks.c,46 :: 		glcd_circle(30,30,5,2);
	MOVLW      30
	MOVWF      FARG_Glcd_Circle_x_center+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_x_center+1
	MOVLW      30
	MOVWF      FARG_Glcd_Circle_y_center+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_y_center+1
	MOVLW      5
	MOVWF      FARG_Glcd_Circle_radius+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_radius+1
	MOVLW      2
	MOVWF      FARG_Glcd_Circle_color+0
	CALL       _Glcd_Circle+0
;glcd-tasks.c,47 :: 		glcd_line(30,30,60,30,1);
	MOVLW      30
	MOVWF      FARG_Glcd_Line_x_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_start+1
	MOVLW      30
	MOVWF      FARG_Glcd_Line_y_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_start+1
	MOVLW      60
	MOVWF      FARG_Glcd_Line_x_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_end+1
	MOVLW      30
	MOVWF      FARG_Glcd_Line_y_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_end+1
	MOVLW      1
	MOVWF      FARG_Glcd_Line_color+0
	CALL       _Glcd_Line+0
;glcd-tasks.c,48 :: 		delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_task12:
	DECFSZ     R13+0, 1
	GOTO       L_task12
	DECFSZ     R12+0, 1
	GOTO       L_task12
	NOP
	NOP
;glcd-tasks.c,50 :: 		glcd_fill(0);
	CLRF       FARG_Glcd_Fill_pattern+0
	CALL       _Glcd_Fill+0
;glcd-tasks.c,51 :: 		glcd_circle(30,30,5,2);
	MOVLW      30
	MOVWF      FARG_Glcd_Circle_x_center+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_x_center+1
	MOVLW      30
	MOVWF      FARG_Glcd_Circle_y_center+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_y_center+1
	MOVLW      5
	MOVWF      FARG_Glcd_Circle_radius+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_radius+1
	MOVLW      2
	MOVWF      FARG_Glcd_Circle_color+0
	CALL       _Glcd_Circle+0
;glcd-tasks.c,52 :: 		glcd_line(30,30,45,45,1);
	MOVLW      30
	MOVWF      FARG_Glcd_Line_x_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_start+1
	MOVLW      30
	MOVWF      FARG_Glcd_Line_y_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_start+1
	MOVLW      45
	MOVWF      FARG_Glcd_Line_x_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_end+1
	MOVLW      45
	MOVWF      FARG_Glcd_Line_y_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_end+1
	MOVLW      1
	MOVWF      FARG_Glcd_Line_color+0
	CALL       _Glcd_Line+0
;glcd-tasks.c,53 :: 		delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_task13:
	DECFSZ     R13+0, 1
	GOTO       L_task13
	DECFSZ     R12+0, 1
	GOTO       L_task13
	NOP
	NOP
;glcd-tasks.c,55 :: 		glcd_fill(0);
	CLRF       FARG_Glcd_Fill_pattern+0
	CALL       _Glcd_Fill+0
;glcd-tasks.c,56 :: 		glcd_circle(30,30,5,2);
	MOVLW      30
	MOVWF      FARG_Glcd_Circle_x_center+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_x_center+1
	MOVLW      30
	MOVWF      FARG_Glcd_Circle_y_center+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_y_center+1
	MOVLW      5
	MOVWF      FARG_Glcd_Circle_radius+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_radius+1
	MOVLW      2
	MOVWF      FARG_Glcd_Circle_color+0
	CALL       _Glcd_Circle+0
;glcd-tasks.c,57 :: 		glcd_line(30,30,30,60,1);
	MOVLW      30
	MOVWF      FARG_Glcd_Line_x_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_start+1
	MOVLW      30
	MOVWF      FARG_Glcd_Line_y_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_start+1
	MOVLW      30
	MOVWF      FARG_Glcd_Line_x_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_end+1
	MOVLW      60
	MOVWF      FARG_Glcd_Line_y_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_end+1
	MOVLW      1
	MOVWF      FARG_Glcd_Line_color+0
	CALL       _Glcd_Line+0
;glcd-tasks.c,58 :: 		delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_task14:
	DECFSZ     R13+0, 1
	GOTO       L_task14
	DECFSZ     R12+0, 1
	GOTO       L_task14
	NOP
	NOP
;glcd-tasks.c,60 :: 		glcd_fill(0);
	CLRF       FARG_Glcd_Fill_pattern+0
	CALL       _Glcd_Fill+0
;glcd-tasks.c,61 :: 		glcd_circle(30,30,5,2);
	MOVLW      30
	MOVWF      FARG_Glcd_Circle_x_center+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_x_center+1
	MOVLW      30
	MOVWF      FARG_Glcd_Circle_y_center+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_y_center+1
	MOVLW      5
	MOVWF      FARG_Glcd_Circle_radius+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_radius+1
	MOVLW      2
	MOVWF      FARG_Glcd_Circle_color+0
	CALL       _Glcd_Circle+0
;glcd-tasks.c,62 :: 		glcd_line(30,30,15,45,1);
	MOVLW      30
	MOVWF      FARG_Glcd_Line_x_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_start+1
	MOVLW      30
	MOVWF      FARG_Glcd_Line_y_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_start+1
	MOVLW      15
	MOVWF      FARG_Glcd_Line_x_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_end+1
	MOVLW      45
	MOVWF      FARG_Glcd_Line_y_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_end+1
	MOVLW      1
	MOVWF      FARG_Glcd_Line_color+0
	CALL       _Glcd_Line+0
;glcd-tasks.c,63 :: 		delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_task15:
	DECFSZ     R13+0, 1
	GOTO       L_task15
	DECFSZ     R12+0, 1
	GOTO       L_task15
	NOP
	NOP
;glcd-tasks.c,65 :: 		glcd_fill(0);
	CLRF       FARG_Glcd_Fill_pattern+0
	CALL       _Glcd_Fill+0
;glcd-tasks.c,66 :: 		glcd_circle(30,30,5,2);
	MOVLW      30
	MOVWF      FARG_Glcd_Circle_x_center+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_x_center+1
	MOVLW      30
	MOVWF      FARG_Glcd_Circle_y_center+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_y_center+1
	MOVLW      5
	MOVWF      FARG_Glcd_Circle_radius+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_radius+1
	MOVLW      2
	MOVWF      FARG_Glcd_Circle_color+0
	CALL       _Glcd_Circle+0
;glcd-tasks.c,67 :: 		glcd_line(30,30,0,30,1);
	MOVLW      30
	MOVWF      FARG_Glcd_Line_x_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_start+1
	MOVLW      30
	MOVWF      FARG_Glcd_Line_y_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_start+1
	CLRF       FARG_Glcd_Line_x_end+0
	CLRF       FARG_Glcd_Line_x_end+1
	MOVLW      30
	MOVWF      FARG_Glcd_Line_y_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_end+1
	MOVLW      1
	MOVWF      FARG_Glcd_Line_color+0
	CALL       _Glcd_Line+0
;glcd-tasks.c,68 :: 		delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_task16:
	DECFSZ     R13+0, 1
	GOTO       L_task16
	DECFSZ     R12+0, 1
	GOTO       L_task16
	NOP
	NOP
;glcd-tasks.c,70 :: 		glcd_fill(0);
	CLRF       FARG_Glcd_Fill_pattern+0
	CALL       _Glcd_Fill+0
;glcd-tasks.c,71 :: 		glcd_circle(30,30,5,2);
	MOVLW      30
	MOVWF      FARG_Glcd_Circle_x_center+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_x_center+1
	MOVLW      30
	MOVWF      FARG_Glcd_Circle_y_center+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_y_center+1
	MOVLW      5
	MOVWF      FARG_Glcd_Circle_radius+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_radius+1
	MOVLW      2
	MOVWF      FARG_Glcd_Circle_color+0
	CALL       _Glcd_Circle+0
;glcd-tasks.c,72 :: 		glcd_line(30,30,15,15,1);
	MOVLW      30
	MOVWF      FARG_Glcd_Line_x_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_start+1
	MOVLW      30
	MOVWF      FARG_Glcd_Line_y_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_start+1
	MOVLW      15
	MOVWF      FARG_Glcd_Line_x_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_end+1
	MOVLW      15
	MOVWF      FARG_Glcd_Line_y_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_end+1
	MOVLW      1
	MOVWF      FARG_Glcd_Line_color+0
	CALL       _Glcd_Line+0
;glcd-tasks.c,73 :: 		delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_task17:
	DECFSZ     R13+0, 1
	GOTO       L_task17
	DECFSZ     R12+0, 1
	GOTO       L_task17
	NOP
	NOP
;glcd-tasks.c,75 :: 		glcd_fill(0);
	CLRF       FARG_Glcd_Fill_pattern+0
	CALL       _Glcd_Fill+0
;glcd-tasks.c,76 :: 		glcd_circle(30,30,5,2);
	MOVLW      30
	MOVWF      FARG_Glcd_Circle_x_center+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_x_center+1
	MOVLW      30
	MOVWF      FARG_Glcd_Circle_y_center+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_y_center+1
	MOVLW      5
	MOVWF      FARG_Glcd_Circle_radius+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_radius+1
	MOVLW      2
	MOVWF      FARG_Glcd_Circle_color+0
	CALL       _Glcd_Circle+0
;glcd-tasks.c,77 :: 		glcd_line(30,30,30,0,1);
	MOVLW      30
	MOVWF      FARG_Glcd_Line_x_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_start+1
	MOVLW      30
	MOVWF      FARG_Glcd_Line_y_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_start+1
	MOVLW      30
	MOVWF      FARG_Glcd_Line_x_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_end+1
	CLRF       FARG_Glcd_Line_y_end+0
	CLRF       FARG_Glcd_Line_y_end+1
	MOVLW      1
	MOVWF      FARG_Glcd_Line_color+0
	CALL       _Glcd_Line+0
;glcd-tasks.c,78 :: 		delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_task18:
	DECFSZ     R13+0, 1
	GOTO       L_task18
	DECFSZ     R12+0, 1
	GOTO       L_task18
	NOP
	NOP
;glcd-tasks.c,80 :: 		glcd_fill(0);
	CLRF       FARG_Glcd_Fill_pattern+0
	CALL       _Glcd_Fill+0
;glcd-tasks.c,81 :: 		unresolved line
	MOVLW      30
	MOVWF      FARG_Glcd_Circle_x_center+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_x_center+1
	MOVLW      30
	MOVWF      FARG_Glcd_Circle_y_center+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_y_center+1
	MOVLW      5
	MOVWF      FARG_Glcd_Circle_radius+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_radius+1
	MOVLW      2
	MOVWF      FARG_Glcd_Circle_color+0
	CALL       _Glcd_Circle+0
;glcd-tasks.c,82 :: 		unresolved line
	MOVLW      30
	MOVWF      FARG_Glcd_Line_x_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_start+1
	MOVLW      30
	MOVWF      FARG_Glcd_Line_y_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_start+1
	MOVLW      45
	MOVWF      FARG_Glcd_Line_x_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_end+1
	MOVLW      15
	MOVWF      FARG_Glcd_Line_y_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_end+1
	MOVLW      1
	MOVWF      FARG_Glcd_Line_color+0
	CALL       _Glcd_Line+0
;glcd-tasks.c,83 :: 		unresolved line
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_task19:
	DECFSZ     R13+0, 1
	GOTO       L_task19
	DECFSZ     R12+0, 1
	GOTO       L_task19
	NOP
	NOP
;glcd-tasks.c,84 :: 		unresolved line
	GOTO       L_task10
;glcd-tasks.c,85 :: 		unresolved line
	RETURN
; end of _task1

_task2:

;glcd-tasks.c,87 :: 		unresolved line
;glcd-tasks.c,88 :: 		unresolved line
	MOVLW      15
	MOVWF      FARG_Glcd_Circle_x_center+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_x_center+1
	MOVLW      30
	MOVWF      FARG_Glcd_Circle_y_center+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_y_center+1
	MOVLW      15
	MOVWF      FARG_Glcd_Circle_radius+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_radius+1
	MOVLW      1
	MOVWF      FARG_Glcd_Circle_color+0
	CALL       _Glcd_Circle+0
;glcd-tasks.c,89 :: 		unresolved line
	MOVLW      45
	MOVWF      FARG_Glcd_Circle_x_center+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_x_center+1
	MOVLW      30
	MOVWF      FARG_Glcd_Circle_y_center+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_y_center+1
	MOVLW      15
	MOVWF      FARG_Glcd_Circle_radius+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_radius+1
	MOVLW      1
	MOVWF      FARG_Glcd_Circle_color+0
	CALL       _Glcd_Circle+0
;glcd-tasks.c,90 :: 		unresolved line
	MOVLW      75
	MOVWF      FARG_Glcd_Circle_x_center+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_x_center+1
	MOVLW      30
	MOVWF      FARG_Glcd_Circle_y_center+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_y_center+1
	MOVLW      15
	MOVWF      FARG_Glcd_Circle_radius+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_radius+1
	MOVLW      1
	MOVWF      FARG_Glcd_Circle_color+0
	CALL       _Glcd_Circle+0
;glcd-tasks.c,91 :: 		unresolved line
	CLRF       FARG_Glcd_Rectangle_Round_Edges_Fill_x_upper_left+0
	MOVLW      30
	MOVWF      FARG_Glcd_Rectangle_Round_Edges_Fill_y_upper_left+0
	MOVLW      30
	MOVWF      FARG_Glcd_Rectangle_Round_Edges_Fill_x_bottom_right+0
	MOVLW      60
	MOVWF      FARG_Glcd_Rectangle_Round_Edges_Fill_y_bottom_right+0
	CLRF       FARG_Glcd_Rectangle_Round_Edges_Fill_round_radius+0
	CLRF       FARG_Glcd_Rectangle_Round_Edges_Fill_color+0
	CALL       _Glcd_Rectangle_Round_Edges_Fill+0
;glcd-tasks.c,92 :: 		unresolved line
	MOVLW      30
	MOVWF      FARG_Glcd_Rectangle_Round_Edges_Fill_x_upper_left+0
	CLRF       FARG_Glcd_Rectangle_Round_Edges_Fill_y_upper_left+0
	MOVLW      60
	MOVWF      FARG_Glcd_Rectangle_Round_Edges_Fill_x_bottom_right+0
	MOVLW      30
	MOVWF      FARG_Glcd_Rectangle_Round_Edges_Fill_y_bottom_right+0
	CLRF       FARG_Glcd_Rectangle_Round_Edges_Fill_round_radius+0
	CLRF       FARG_Glcd_Rectangle_Round_Edges_Fill_color+0
	CALL       _Glcd_Rectangle_Round_Edges_Fill+0
;glcd-tasks.c,93 :: 		unresolved line
	MOVLW      60
	MOVWF      FARG_Glcd_Rectangle_Round_Edges_Fill_x_upper_left+0
	MOVLW      30
	MOVWF      FARG_Glcd_Rectangle_Round_Edges_Fill_y_upper_left+0
	MOVLW      90
	MOVWF      FARG_Glcd_Rectangle_Round_Edges_Fill_x_bottom_right+0
	MOVLW      60
	MOVWF      FARG_Glcd_Rectangle_Round_Edges_Fill_y_bottom_right+0
	CLRF       FARG_Glcd_Rectangle_Round_Edges_Fill_round_radius+0
	CLRF       FARG_Glcd_Rectangle_Round_Edges_Fill_color+0
	CALL       _Glcd_Rectangle_Round_Edges_Fill+0
;glcd-tasks.c,94 :: 		unresolved line
	MOVLW      29
	MOVWF      FARG_Glcd_Line_x_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_start+1
	MOVLW      27
	MOVWF      FARG_Glcd_Line_y_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_start+1
	MOVLW      30
	MOVWF      FARG_Glcd_Line_x_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_end+1
	MOVLW      33
	MOVWF      FARG_Glcd_Line_y_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_end+1
	MOVLW      1
	MOVWF      FARG_Glcd_Line_color+0
	CALL       _Glcd_Line+0
;glcd-tasks.c,95 :: 		unresolved line
	MOVLW      59
	MOVWF      FARG_Glcd_Line_x_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_start+1
	MOVLW      33
	MOVWF      FARG_Glcd_Line_y_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_start+1
	MOVLW      60
	MOVWF      FARG_Glcd_Line_x_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_end+1
	MOVLW      27
	MOVWF      FARG_Glcd_Line_y_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_end+1
	MOVLW      1
	MOVWF      FARG_Glcd_Line_color+0
	CALL       _Glcd_Line+0
;glcd-tasks.c,96 :: 		unresolved line
	RETURN
; end of _task2

_task3:

;glcd-tasks.c,98 :: 		unresolved line
;glcd-tasks.c,99 :: 		unresolved line
	MOVLW      64
	MOVWF      _y1+0
	MOVLW      0
	MOVWF      _y1+1
;glcd-tasks.c,100 :: 		unresolved line
	MOVLW      64
	MOVWF      _y2+0
	MOVLW      0
	MOVWF      _y2+1
;glcd-tasks.c,101 :: 		unresolved line
L_task310:
;glcd-tasks.c,102 :: 		unresolved line
	CLRF       _x+0
;glcd-tasks.c,103 :: 		unresolved line
	CLRF       FARG_Glcd_Fill_pattern+0
	CALL       _Glcd_Fill+0
;glcd-tasks.c,104 :: 		unresolved line
	CLRF       _i+0
L_task312:
	MOVLW      128
	XORWF      _i+0, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      127
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_task313
;glcd-tasks.c,105 :: 		unresolved line
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
;glcd-tasks.c,106 :: 		unresolved line
	MOVF       _x+0, 0
	MOVWF      FARG_Glcd_Line_x_start+0
	MOVLW      0
	BTFSC      FARG_Glcd_Line_x_start+0, 7
	MOVLW      255
	MOVWF      FARG_Glcd_Line_x_start+1
	MOVF       _y1+0, 0
	MOVWF      FARG_Glcd_Line_y_start+0
	MOVF       _y1+1, 0
	MOVWF      FARG_Glcd_Line_y_start+1
	MOVF       _x+0, 0
	ADDLW      1
	MOVWF      FARG_Glcd_Line_x_end+0
	CLRF       FARG_Glcd_Line_x_end+1
	BTFSC      STATUS+0, 0
	INCF       FARG_Glcd_Line_x_end+1, 1
	MOVLW      0
	BTFSC      _x+0, 7
	MOVLW      255
	ADDWF      FARG_Glcd_Line_x_end+1, 1
	MOVF       _y2+0, 0
	MOVWF      FARG_Glcd_Line_y_end+0
	MOVF       _y2+1, 0
	MOVWF      FARG_Glcd_Line_y_end+1
	MOVLW      1
	MOVWF      FARG_Glcd_Line_color+0
	CALL       _Glcd_Line+0
;glcd-tasks.c,107 :: 		unresolved line
	MOVF       _y2+0, 0
	MOVWF      _y1+0
	MOVF       _y2+1, 0
	MOVWF      _y1+1
;glcd-tasks.c,108 :: 		unresolved line
	MOVF       _temp+0, 0
	SUBLW      64
	MOVWF      _y2+0
	MOVF       _temp+1, 0
	BTFSS      STATUS+0, 0
	ADDLW      1
	CLRF       _y2+1
	SUBWF      _y2+1, 1
;glcd-tasks.c,109 :: 		unresolved line
	MOVLW      2
	MOVWF      R11+0
	MOVLW      134
	MOVWF      R12+0
	MOVLW      153
	MOVWF      R13+0
L_task315:
	DECFSZ     R13+0, 1
	GOTO       L_task315
	DECFSZ     R12+0, 1
	GOTO       L_task315
	DECFSZ     R11+0, 1
	GOTO       L_task315
;glcd-tasks.c,110 :: 		unresolved line
	INCF       _x+0, 1
;glcd-tasks.c,104 :: 		unresolved line
	INCF       _i+0, 1
;glcd-tasks.c,111 :: 		unresolved line
	GOTO       L_task312
L_task313:
;glcd-tasks.c,112 :: 		unresolved line
	GOTO       L_task310
;glcd-tasks.c,113 :: 		unresolved line
	RETURN
; end of _task3

_task4:

;glcd-tasks.c,115 :: 		unresolved line
;glcd-tasks.c,116 :: 		unresolved line
	MOVLW      30
	MOVWF      FARG_Glcd_Line_x_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_start+1
	MOVLW      30
	MOVWF      FARG_Glcd_Line_y_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_start+1
	MOVLW      60
	MOVWF      FARG_Glcd_Line_x_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_end+1
	MOVLW      30
	MOVWF      FARG_Glcd_Line_y_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_end+1
	MOVLW      1
	MOVWF      FARG_Glcd_Line_color+0
	CALL       _Glcd_Line+0
;glcd-tasks.c,117 :: 		unresolved line
	MOVLW      60
	MOVWF      FARG_Glcd_Line_x_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_start+1
	MOVLW      30
	MOVWF      FARG_Glcd_Line_y_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_start+1
	MOVLW      30
	MOVWF      FARG_Glcd_Line_x_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_end+1
	MOVLW      60
	MOVWF      FARG_Glcd_Line_y_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_end+1
	MOVLW      1
	MOVWF      FARG_Glcd_Line_color+0
	CALL       _Glcd_Line+0
;glcd-tasks.c,118 :: 		unresolved line
	MOVLW      30
	MOVWF      FARG_Glcd_Line_x_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_start+1
	MOVLW      60
	MOVWF      FARG_Glcd_Line_y_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_start+1
	MOVLW      30
	MOVWF      FARG_Glcd_Line_x_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_end+1
	MOVLW      30
	MOVWF      FARG_Glcd_Line_y_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_end+1
	MOVLW      1
	MOVWF      FARG_Glcd_Line_color+0
	CALL       _Glcd_Line+0
;glcd-tasks.c,119 :: 		unresolved line
	MOVLW      60
	MOVWF      FARG_Glcd_Line_x_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_start+1
	MOVLW      60
	MOVWF      FARG_Glcd_Line_y_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_start+1
	MOVLW      60
	MOVWF      FARG_Glcd_Line_x_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_end+1
	MOVLW      30
	MOVWF      FARG_Glcd_Line_y_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_end+1
	MOVLW      1
	MOVWF      FARG_Glcd_Line_color+0
	CALL       _Glcd_Line+0
;glcd-tasks.c,120 :: 		unresolved line
	MOVLW      30
	MOVWF      FARG_Glcd_Line_x_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_start+1
	MOVLW      60
	MOVWF      FARG_Glcd_Line_y_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_start+1
	MOVLW      60
	MOVWF      FARG_Glcd_Line_x_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_end+1
	MOVLW      60
	MOVWF      FARG_Glcd_Line_y_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_end+1
	MOVLW      1
	MOVWF      FARG_Glcd_Line_color+0
	CALL       _Glcd_Line+0
;glcd-tasks.c,121 :: 		unresolved line
	CLRF       FARG_Glcd_Line_x_start+0
	CLRF       FARG_Glcd_Line_x_start+1
	MOVLW      60
	MOVWF      FARG_Glcd_Line_y_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_start+1
	MOVLW      30
	MOVWF      FARG_Glcd_Line_x_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_end+1
	MOVLW      30
	MOVWF      FARG_Glcd_Line_y_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_end+1
	MOVLW      1
	MOVWF      FARG_Glcd_Line_color+0
	CALL       _Glcd_Line+0
;glcd-tasks.c,122 :: 		unresolved line
	CLRF       FARG_Glcd_Line_x_start+0
	CLRF       FARG_Glcd_Line_x_start+1
	MOVLW      30
	MOVWF      FARG_Glcd_Line_y_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_start+1
	MOVLW      30
	MOVWF      FARG_Glcd_Line_x_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_end+1
	MOVLW      30
	MOVWF      FARG_Glcd_Line_y_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_end+1
	MOVLW      1
	MOVWF      FARG_Glcd_Line_color+0
	CALL       _Glcd_Line+0
;glcd-tasks.c,123 :: 		unresolved line
	CLRF       FARG_Glcd_Line_x_start+0
	CLRF       FARG_Glcd_Line_x_start+1
	MOVLW      60
	MOVWF      FARG_Glcd_Line_y_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_start+1
	CLRF       FARG_Glcd_Line_x_end+0
	CLRF       FARG_Glcd_Line_x_end+1
	MOVLW      30
	MOVWF      FARG_Glcd_Line_y_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_end+1
	MOVLW      1
	MOVWF      FARG_Glcd_Line_color+0
	CALL       _Glcd_Line+0
;glcd-tasks.c,124 :: 		unresolved line
	CLRF       FARG_Glcd_Line_x_start+0
	CLRF       FARG_Glcd_Line_x_start+1
	MOVLW      60
	MOVWF      FARG_Glcd_Line_y_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_start+1
	MOVLW      30
	MOVWF      FARG_Glcd_Line_x_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_end+1
	MOVLW      60
	MOVWF      FARG_Glcd_Line_y_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_end+1
	MOVLW      1
	MOVWF      FARG_Glcd_Line_color+0
	CALL       _Glcd_Line+0
;glcd-tasks.c,125 :: 		unresolved line
	CLRF       FARG_Glcd_Line_x_start+0
	CLRF       FARG_Glcd_Line_x_start+1
	CLRF       FARG_Glcd_Line_y_start+0
	CLRF       FARG_Glcd_Line_y_start+1
	CLRF       FARG_Glcd_Line_x_end+0
	CLRF       FARG_Glcd_Line_x_end+1
	MOVLW      30
	MOVWF      FARG_Glcd_Line_y_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_end+1
	MOVLW      1
	MOVWF      FARG_Glcd_Line_color+0
	CALL       _Glcd_Line+0
;glcd-tasks.c,126 :: 		unresolved line
	CLRF       FARG_Glcd_Line_x_start+0
	CLRF       FARG_Glcd_Line_x_start+1
	CLRF       FARG_Glcd_Line_y_start+0
	CLRF       FARG_Glcd_Line_y_start+1
	MOVLW      30
	MOVWF      FARG_Glcd_Line_x_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_end+1
	CLRF       FARG_Glcd_Line_y_end+0
	CLRF       FARG_Glcd_Line_y_end+1
	MOVLW      1
	MOVWF      FARG_Glcd_Line_color+0
	CALL       _Glcd_Line+0
;glcd-tasks.c,127 :: 		unresolved line
	MOVLW      30
	MOVWF      FARG_Glcd_Line_x_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_start+1
	CLRF       FARG_Glcd_Line_y_start+0
	CLRF       FARG_Glcd_Line_y_start+1
	CLRF       FARG_Glcd_Line_x_end+0
	CLRF       FARG_Glcd_Line_x_end+1
	MOVLW      30
	MOVWF      FARG_Glcd_Line_y_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_end+1
	MOVLW      1
	MOVWF      FARG_Glcd_Line_color+0
	CALL       _Glcd_Line+0
;glcd-tasks.c,128 :: 		unresolved line
	MOVLW      30
	MOVWF      FARG_Glcd_Line_x_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_start+1
	CLRF       FARG_Glcd_Line_y_start+0
	CLRF       FARG_Glcd_Line_y_start+1
	MOVLW      30
	MOVWF      FARG_Glcd_Line_x_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_end+1
	MOVLW      30
	MOVWF      FARG_Glcd_Line_y_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_end+1
	MOVLW      1
	MOVWF      FARG_Glcd_Line_color+0
	CALL       _Glcd_Line+0
;glcd-tasks.c,129 :: 		unresolved line
	MOVLW      30
	MOVWF      FARG_Glcd_Line_x_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_start+1
	CLRF       FARG_Glcd_Line_y_start+0
	CLRF       FARG_Glcd_Line_y_start+1
	MOVLW      60
	MOVWF      FARG_Glcd_Line_x_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_end+1
	CLRF       FARG_Glcd_Line_y_end+0
	CLRF       FARG_Glcd_Line_y_end+1
	MOVLW      1
	MOVWF      FARG_Glcd_Line_color+0
	CALL       _Glcd_Line+0
;glcd-tasks.c,130 :: 		unresolved line
	MOVLW      30
	MOVWF      FARG_Glcd_Line_x_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_start+1
	MOVLW      30
	MOVWF      FARG_Glcd_Line_y_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_start+1
	MOVLW      60
	MOVWF      FARG_Glcd_Line_x_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_end+1
	CLRF       FARG_Glcd_Line_y_end+0
	CLRF       FARG_Glcd_Line_y_end+1
	MOVLW      1
	MOVWF      FARG_Glcd_Line_color+0
	CALL       _Glcd_Line+0
;glcd-tasks.c,131 :: 		unresolved line
	MOVLW      60
	MOVWF      FARG_Glcd_Line_x_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_start+1
	MOVLW      30
	MOVWF      FARG_Glcd_Line_y_start+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_y_start+1
	MOVLW      60
	MOVWF      FARG_Glcd_Line_x_end+0
	MOVLW      0
	MOVWF      FARG_Glcd_Line_x_end+1
	CLRF       FARG_Glcd_Line_y_end+0
	CLRF       FARG_Glcd_Line_y_end+1
	MOVLW      1
	MOVWF      FARG_Glcd_Line_color+0
	CALL       _Glcd_Line+0
;glcd-tasks.c,132 :: 		unresolved line
	RETURN
; end of _task4

_main:

;glcd-tasks.c,134 :: 		unresolved line
;glcd-tasks.c,135 :: 		unresolved line
	CALL       _Glcd_Init+0
;glcd-tasks.c,136 :: 		unresolved line
	CLRF       FARG_Glcd_Fill_pattern+0
	CALL       _Glcd_Fill+0
;glcd-tasks.c,139 :: 		unresolved line
	CLRF       _x+0
;glcd-tasks.c,140 :: 		unresolved line
	CLRF       FARG_Glcd_Fill_pattern+0
	CALL       _Glcd_Fill+0
;glcd-tasks.c,141 :: 		unresolved line
	CLRF       _i+0
L_main16:
	MOVLW      128
	XORWF      _i+0, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      127
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main17
;glcd-tasks.c,142 :: 		unresolved line
	MOVF       _x+0, 0
	MOVWF      FARG_Glcd_Line_x_start+0
	MOVLW      0
	BTFSC      FARG_Glcd_Line_x_start+0, 7
	MOVLW      255
	MOVWF      FARG_Glcd_Line_x_start+1
	MOVF       _y1+0, 0
	MOVWF      FARG_Glcd_Line_y_start+0
	MOVF       _y1+1, 0
	MOVWF      FARG_Glcd_Line_y_start+1
	MOVF       _x+0, 0
	ADDLW      1
	MOVWF      FARG_Glcd_Line_x_end+0
	CLRF       FARG_Glcd_Line_x_end+1
	BTFSC      STATUS+0, 0
	INCF       FARG_Glcd_Line_x_end+1, 1
	MOVLW      0
	BTFSC      _x+0, 7
	MOVLW      255
	ADDWF      FARG_Glcd_Line_x_end+1, 1
	MOVF       _y2+0, 0
	MOVWF      FARG_Glcd_Line_y_end+0
	MOVF       _y2+1, 0
	MOVWF      FARG_Glcd_Line_y_end+1
	MOVLW      1
	MOVWF      FARG_Glcd_Line_color+0
	CALL       _Glcd_Line+0
;glcd-tasks.c,143 :: 		unresolved line
	MOVF       _y2+0, 0
	MOVWF      _y1+0
	MOVF       _y2+1, 0
	MOVWF      _y1+1
;glcd-tasks.c,144 :: 		unresolved line
	MOVF       _x+0, 0
	MOVWF      R0+0
	MOVLW      0
	BTFSC      R0+0, 7
	MOVLW      255
	MOVWF      R0+1
	CALL       _Int2Double+0
	MOVF       R0+0, 0
	MOVWF      FARG_sin_f+0
	MOVF       R0+1, 0
	MOVWF      FARG_sin_f+1
	MOVF       R0+2, 0
	MOVWF      FARG_sin_f+2
	MOVF       R0+3, 0
	MOVWF      FARG_sin_f+3
	CALL       _sin+0
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      72
	MOVWF      R4+2
	MOVLW      133
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	CALL       _Double2Int+0
	MOVF       R0+0, 0
	MOVWF      _y2+0
	MOVF       R0+1, 0
	MOVWF      _y2+1
;glcd-tasks.c,145 :: 		unresolved line
	MOVLW      2
	MOVWF      R11+0
	MOVLW      134
	MOVWF      R12+0
	MOVLW      153
	MOVWF      R13+0
L_main19:
	DECFSZ     R13+0, 1
	GOTO       L_main19
	DECFSZ     R12+0, 1
	GOTO       L_main19
	DECFSZ     R11+0, 1
	GOTO       L_main19
;glcd-tasks.c,146 :: 		unresolved line
	INCF       _x+0, 1
;glcd-tasks.c,141 :: 		unresolved line
	INCF       _i+0, 1
;glcd-tasks.c,147 :: 		unresolved line
	GOTO       L_main16
L_main17:
;glcd-tasks.c,148 :: 		unresolved line
	GOTO       $+0
; end of _main

			MOVLW 1           ; 1 -> w
			MOVWF FSR         ; w -> fsr
			CLRF INDF         ; 0 -> indf[fsr]
	ram:	INCF FSR,1        ; fsr++
			MOVF FSR,0        ; fsr -> w
			MOVWF INDF        ; w -> indf[fsr]
			SUBLW 31          ; 31 - w -> w
			MOVWF $1          ; w -> $1
			BTFSS $1,7        ; pula a proxima instrução se a ultima operação resultou em 0
			GOTO ram
			MOVLW 2           ; 2 -> w
			MOVWF FSR         ; w -> fsr
	crivo2: CLRF INDF         ; 0 -> indf[fsr]
			INCF FSR,1        ; fsr++
			INCF FSR,1        ; fsr++
			MOVLW 32          ; 32 -> w
			SUBWF FSR,0       ; fsr - w -> w
			MOVWF $1          ; w -> $1
			BTFSC $1,7        ; pula a proxima instrução se fsr > w
			GOTO crivo2
			MOVLW 3           ; 3 -> w
			MOVWF FSR         ; w -> fsr
	crivo3: CLRF INDF         ; 0 -> indf[fsr]
			INCF FSR,1        ; fsr++
			INCF FSR,1        ; fsr++
			INCF FSR,1        ; fsr++
			MOVLW 32          ; 32 -> w
			SUBWF FSR,0       ; fsr - w -> w
			MOVWF $1          ; w -> $1
			BTFSC $1,7        ; pula a proxima instrução se fsr > w
			GOTO crivo3
			MOVLW 5           ; 5 -> w
			MOVWF FSR         ; w -> fsr
	crivo5: CLRF INDF         ; 0 -> indf[fsr]
			MOVLW 5           ; 5 -> w
			ADDWF FSR,1       ; w + fsr -> fsr
			MOVLW 32          ; 32 -> w
			SUBWF FSR,0       ; fsr - w -> w
			MOVWF $1          ; w -> $1
			BTFSC $1,7        ; pula a proxima instrução se fsr > w
			GOTO crivo5
	loop:	MOVLW 0           ; 0 -> w
			MOVWF FSR         ; w -> fsr
	loop2:  INCF FSR,1        ; fsr++
			MOVLW 1           ; 1 -> w
			SUBWF INDF,0	  ; indf - w -> w
			MOVWF $2          ; w -> $2se
			BTFSS $2,7        ; pula a proxima instrução se a ultima operação resultou em 0
			GOTO show
			MOVLW 32          ; 32 -> w
			SUBWF FSR,0       ; fsr - w -> w
			MOVWF $1          ; w -> $1
			BTFSC $1,7        ; pula a proxima instrução se fsr > w
			GOTO loop2
			GOTO loop
	show:	MOVF INDF,0       ; indif -> w
			MOVWF PORTB		  ; w -> portb
			GOTO loop2

;opcode
1100000000001
0000001000001
0000011111110
0010101000001
0010000000001
0000001111110
1111000011111
0000001000110
0111111000110
1010000000011
1100000000010
0000001000001
0000011111110
0010101000001
0010101000001
1100000100000
0000100000001
0000001000110
0110111000110
1010000001100
1100000000011
0000001000001
0000011111110
0010101000001
0010101000001
0010101000001
1100000100000
0000100000001
0000001000110
0110111000110
1010000010110
1100000000101
0000001000001
0000011111110
1100000000101
0001111000001
1100000100000
0000100000001
0000001000110
0110111000110
1010000100001
1100000000000
0000001000001
0010101000001
1100000000001
0000100111110
0000001000111
0111111000111
1010000110111
1100000100000
0000100000001
0000001000110
0110111000110
1010000101011
1010000101001
0010000111110
0000001000101
1010000101011
			MOVLW 1           ; 1 -> w
			MOVWF FSR         ; w -> fsr
			CLRF INDF         ; 0 -> indf[fsr]
	ram:	INCF FSR          ; fsr++
			MOVF FSR, 0       ; fsr -> w
			MOVWF INDF        ; w -> indf[fsr]
			SUBLW 32          ; 32 - w -> w
			BTFSS STATUS,2    ; pula a proxima instrução se a ultima operação resultou em 0
			GOTO ram
			MOVLW 2           ; 2 -> w
			MOVWF FSR         ; w -> fsr
	crivo2: CLRF INDF         ; 0 -> indf[fsr]
			INCF FSR          ; fsr++
			INCF FSR          ; fsr++
			MOVLW 32          ; 32 -> w
			SUBWF FSR, 0      ; fsr - w -> w
			MOVWF $1          ; w -> $1
			BTFSC $1,7        ; pula a proxima instrução se fsr > w
			GOTO crivo2
			MOVLW 3           ; 3 -> w
			MOVWF FSR         ; w -> fsr
	crivo3: CLRF INDF         ; 0 -> indf[fsr]
			INCF FSR          ; fsr++
			INCF FSR          ; fsr++
			INCF FSR          ; fsr++
			MOVLW 32          ; 32 -> w
			SUBWF FSR, 0      ; fsr - w -> w
			MOVWF $1          ; w -> $1
			BTFSC $1,7        ; pula a proxima instrução se fsr > w
			GOTO crivo3
			MOVLW 5           ; 5 -> w
			MOVWF FSR         ; w -> fsr
	crivo5: CLRF INDF         ; 0 -> indf[fsr]
			MOVLW 5           ; 5 -> w
			ADDWF FSR,1       ; w + fsr -> fsr
			MOVLW 32          ; 32 -> w
			SUBWF FSR, 0      ; fsr - w -> w
			MOVWF $1          ; w -> $1
			BTFSC $1,7        ; pula a proxima instrução se fsr > w
			GOTO crivo5
	loop:	MOVLW 0           ; 0 -> w
			MOVWF FSR         ; w -> fsr
	loop2:  INCF FSR          ; fsr++
			MOVLW 0           ; 0 -> w
			SUBWF INDIF,0	  ; indf - 0 -> w
			BTFSS STATUS,2    ; pula a proxima instrução se a ultima operação resultou em 0
			GOTO show
			MOVLW 32          ; 32 -> w
			SUBWF FSR, 0      ; fsr - w -> w
			MOVWF $1          ; w -> $1
			BTFSC $1,7        ; pula a proxima instrução se fsr > w
			GOTO loop2
			GOTO loop
	show	MOVF INDF,0       ; indif -> w
			MOVWF PORTB		  ; w -> portb
			GOTO loop2
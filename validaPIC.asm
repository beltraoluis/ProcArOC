




	inicio: ; preenchendo a ram com 32 valores correspondentes aos endereços
			MOVLW D'4'        ; 4 -> w
			MOVWF FSR         ; w -> fsr
			MOVWF INDF        ; w -> indf[fsr]
	ram:	
			INCF FSR          ; fsr++
			MOVF FSR, 0       ; fsr -> w
			MOVWF INDF        ; w -> indf[fsr]
			SUBLW D'32'       ; 32 - w -> w
			BTFSS STATUS,2    ; pula a proxima instrução se a ultima operação resultou em 0
			GOTO ram
			MOVLW D'4'        ; 4 -> w
			MOVWF FSR         ; w -> fsr
	crivo2:
			CLRF INDF         ; 0 -> indf[fsr]
			INCF FSR          ; fsr++
			INCF FSR          ; fsr++
			MOVLW D'32'       ; 32 -> w
			SUBWF FSR, 0      ; fsr - w -> w
			MOVWF $1          ; w -> $1
			BTFSC $1,7        ; pula a proxima instrução se
			GOTO crivo2
	crivo3:

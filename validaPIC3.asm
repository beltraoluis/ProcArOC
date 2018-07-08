; assembly                 		  ; l  ; opcode	              ; comentario	
                       		          ;    ; hex  ; bin           ; 	
			MOVLW 1           ; 00 ; 1801 ; 1100000000001 ; 1 -> w
			MOVWF FSR         ; 01 ; 0041 ; 0000001000001 ; w -> fsr
			CLRF INDF         ; 02 ; 00fe ; 0000011111110 ; 0 -> indf[fsr]
		ram:	INCF FSR,1        ; 03 ; 0541 ; 0010101000001 ; fsr++
			MOVF FSR,0        ; 04 ; 0401 ; 0010000000001 ; fsr -> w
			MOVWF INDF        ; 05 ; 007e ; 0000001111110 ; w -> indf[fsr]
			SUBLW 31          ; 06 ; 1e1f ; 1111000011111 ; 31 - w -> w
			MOVWF $1          ; 07 ; 0046 ; 0000001000110 ; w -> $1
			BTFSS $1,7        ; 08 ; 0fc6 ; 0111111000110 ; pula a proxima instrução se a ultima operação resultou em 0
			GOTO ram	  ; 09 ; 1403 ; 1010000000011
			MOVLW 2           ; 0a ; 1802 ; 1100000000010 ; 2 -> w
			MOVWF FSR         ; 0b ; 0041 ; 0000001000001 ; w -> fsr
		crivo2: CLRF INDF         ; 0c ; 00fe ; 0000011111110 ; 0 -> indf[fsr]
			INCF FSR,1        ; 0d ; 0541 ; 0010101000001 ; fsr++
			INCF FSR,1        ; 0e ; 0541 ; 0010101000001 ; fsr++
			MOVLW 32          ; 0f ; 1820 ; 1100000100000 ; 32 -> w
			SUBWF FSR,0       ; 10 ; 0101 ; 0000100000001 ; fsr - w -> w
			MOVWF $1          ; 11 ; 0046 ; 0000001000110 ; w -> $1
			BTFSC $1,7        ; 12 ; 0dc6 ; 0110111000110 ; pula a proxima instrução se fsr > w
			GOTO crivo2       ; 13 ; 140c ; 1010000001100
			MOVLW 3           ; 14 ; 1803 ; 1100000000011 ; 3 -> w
			MOVWF FSR         ; 15 ; 0041 ; 0000001000001 ; w -> fsr
		crivo3: CLRF INDF         ; 16 ; 00fe ; 0000011111110 ; 0 -> indf[fsr]
			INCF FSR,1        ; 17 ; 0541 ; 0010101000001 ; fsr++
			INCF FSR,1        ; 18 ; 0541 ; 0010101000001 ; fsr++
			INCF FSR,1        ; 19 ; 0541 ; 0010101000001 ; fsr++
			MOVLW 32          ; 1a ; 1820 ; 1100000100000 ; 32 -> w
			SUBWF FSR,0       ; 1b ; 0101 ; 0000100000001 ; fsr - w -> w
			MOVWF $1          ; 1c ; 0046 ; 0000001000110 ; w -> $1
			BTFSC $1,7        ; 1d ; 0dc6 ; 0110111000110 ; pula a proxima instrução se fsr > w
			GOTO crivo3	  ; 1e ; 1416 ; 1010000010110
			MOVLW 5           ; 1f ; 1805 ; 1100000000101 ; 5 -> w
			MOVWF FSR         ; 20 ; 0041 ; 0000001000001 ; w -> fsr
		crivo5: CLRF INDF         ; 21 ; 00fe ; 0000011111110 ; 0 -> indf[fsr]
			MOVLW 5           ; 22 ; 1805 ; 1100000000101 ; 5 -> w
			ADDWF FSR,1       ; 23 ; 03c1 ; 0001111000001 ; w + fsr -> fsr
			MOVLW 32          ; 24 ; 1820 ; 1100000100000 ; 32 -> w
			SUBWF FSR,0       ; 25 ; 0101 ; 0000100000001 ; fsr - w -> w
			MOVWF $1          ; 26 ; 0046 ; 0000001000110 ; w -> $1
			BTFSC $1,7        ; 27 ; 0dc6 ; 0110111000110 ; pula a proxima instrução se fsr > w
			GOTO crivo5	  ; 28 ; 1421 ; 1010000100001
		loop:	MOVLW 0           ; 29 ; 1800 ; 1100000000000 ; 0 -> w
			MOVWF FSR         ; 2a ; 0041 ; 0000001000001 ; w -> fsr
		loop2:  INCF FSR,1        ; 2b ; 0541 ; 0010101000001 ; fsr++
			MOVLW 1           ; 2c ; 1801 ; 1100000000001 ; 1 -> w
			SUBWF INDF,0	  ; 2d ; 013e ; 0000100111110 ; indf - w -> w
			MOVWF $2          ; 2e ; 0047 ; 0000001000111 ; w -> $2se
			BTFSS $2,7        ; 2f ; 0fc7 ; 0111111000111 ; pula a proxima instrução se a ultima operação resultou em 0
			GOTO show	  ; 30 ; 1437 ; 1010000110111
			MOVLW 32          ; 31 ; 1820 ; 1100000100000 ; 32 -> w
			SUBWF FSR,0       ; 32 ; 0101 ; 0000100000001 ; fsr - w -> w
			MOVWF $1          ; 33 ; 0046 ; 0000001000110 ; w -> $1
			BTFSC $1,7        ; 34 ; 0dc6 ; 0110111000110 ; pula a proxima instrução se fsr > w
			GOTO loop2	  ; 35 ; 142b ; 1010000101011
			GOTO loop2	  ; 36 ; 1429 ; 1010000101001
		show:	MOVF INDF,0       ; 37 ; 043e ; 0010000111110 ; indif -> w
			MOVWF PORTB	  ; 38 ; 0045 ; 0000001000101 ; w -> portb
			GOTO loop2	  ; 39 ; 142b ; 1010000101011

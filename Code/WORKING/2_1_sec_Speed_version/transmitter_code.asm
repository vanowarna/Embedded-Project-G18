LIST p=16F84A
  #INCLUDE <p16f84a.inc>

  ORG 0x00
  GOTO MAIN
  ORG 0x04
  GOTO INT

; LASER    RA0     OUTPUT       TRISA   B'00000000'
; SEND     RB0     INTERRUPT    TRISB   B'00011111'
; BIT0     RB1     INPUT
; BIT1     RB2     INPUT
; BIT2     RB3     INPUT
; BIT3     RB4     INPUT

   CBLOCK 0CH
    COUNT1
    COUNT2
    COUNT3
    STORE_INP
   ENDC

MAIN
   BSF   STATUS,5
   CLRF  TRISA
   MOVLW B'00011111'
   MOVWF TRISB
   BCF   STATUS,5
   CLRF  PORTA
INTDEF
   MOVLW B'10010000'
   MOVWF INTCON

LOOP
   GOTO LOOP    ;Loop until interupt happens

INT
   CALL  DB_DELAY
   ; =================
   CLRF  STORE_INP
   BTFSC PORTB,1
   BSF   STORE_INP,0
   BTFSC PORTB,2
   BSF   STORE_INP,1
   BTFSC PORTB,3
   BSF   STORE_INP,2
   BTFSC PORTB,4
   BSF   STORE_INP,3
   ; =================
   CALL  LASER_PULSE
   CLRF  STORE_INP
   BCF	INTCON,INTF		
   RETFIE			
    
DB_DELAY
   DECFSZ  COUNT1,1
   GOTO    DB_DELAY 
   RETURN

;  BIT3,X,BIT2,X,BIT1,X,BIT0,X
LASER_PULSE
   ; DUMMY PULSE 
   BSF   PORTA,0
   CALL  DELAY
   BCF   PORTA,0
   ;BIT0 
   BTFSC STORE_INP,0
   BSF   PORTA,0
   CALL  DELAY
   ; DUMMY PULSE
   BSF   PORTA,0
   CALL  DELAY
   BCF   PORTA,0
   ;BIT1 
   BTFSC STORE_INP,1
   BSF   PORTA,0
   CALL  DELAY
   ; DUMMY PULSE
   BSF   PORTA,0
   CALL  DELAY
   BCF   PORTA,0
   ;BIT2 
   BTFSC STORE_INP,2
   BSF   PORTA,0
   CALL  DELAY
   ; DUMMY PULSE
   BSF   PORTA,0
   CALL  DELAY
   BCF   PORTA,0
   ;BIT3 
   BTFSC STORE_INP,3
   BSF   PORTA,0
   CALL  DELAY
   BCF   PORTA,0
   RETURN

; DELAY
;    DECFSZ  COUNT2,1
;    GOTO    DELAY
;    DECFSZ  COUNT3,1
;    GOTO    DELAY
;    RETURN

; Added=========2 second delay=====================
DELAY
			;2216800 cycles
	MOVLW	0x0D
	MOVWF	COUNT1
	MOVLW	0xD6
	MOVWF	COUNT2
	MOVLW	0x05
	MOVWF	COUNT3
DELAY_0
	DECFSZ	COUNT1, f
	GOTO	$+2
	DECFSZ	COUNT2, f
	GOTO	$+2
	DECFSZ	COUNT3, f
	GOTO	DELAY_0

			;6 cycles
	GOTO	$+1
	GOTO	$+1
	GOTO	$+1

			;4 cycles (including call)
	RETURN
; Added====================================   

END

	
LIST p=16F84A
  #INCLUDE <p16f84a.inc>

  ORG 0x00		; Configure Origin vector
  GOTO MAIN
  ORG 0x04		; Configure Interrupt vector
  GOTO INT  
  
; PIN CONFIGURATION
; ---------------------------
; LASER    RA0     OUTPUT       TRISA   B'00000000'
; SEND     RB0     INTERRUPT    TRISB   B'00011111'
; BIT0     RB1     INPUT
; BIT1     RB2     INPUT
; BIT2     RB3     INPUT
; BIT3     RB4     INPUT
; ---------------------------

   CBLOCK 0CH		; Reserving General registers
    COUNT1
    COUNT2
    COUNT3
    STORE_INP
   ENDC

MAIN			; Configuring registers
   BSF   STATUS,5	; Moving to Bank 1
   CLRF  TRISA		; Set PORTA as Output
   MOVLW B'00011111'	; Input Pin configuration in PORTB
   MOVWF TRISB
   BCF   STATUS,5	; Moving back to Bank 0
   CLRF  PORTA		; Set PORTA to LOW (B'00000000')

INTDEF			; Configuring interrupt
   MOVLW B'10010000'
   MOVWF INTCON

LOOP
   GOTO LOOP		; Loop until interupt happens

INT
   CALL  DB_DELAY	; Calling Debounce delay
   ; -------------------
   CLRF  STORE_INP	; Clearing stored input
   BTFSC PORTB,1	; Check RB1, skip if LOW
   BSF   STORE_INP,0	; Else, add LOW to bit 0 in STORE_INP
   BTFSC PORTB,2	; Check RB2, skip if LOW
   BSF   STORE_INP,1	; Else, add LOW to bit 1 in STORE_INP
   BTFSC PORTB,3	; Check RB3, skip if LOW
   BSF   STORE_INP,2	; Else, add LOW to bit 2 in STORE_INP
   BTFSC PORTB,4	; Check RB4, skip if LOW
   BSF   STORE_INP,3	; Else, add LOW to bit 2 in STORE_INP
   ; -------------------
   CALL  LASER_PULSE	
   CLRF  STORE_INP	; Clearing stored input
   BCF	INTCON,INTF	; Clearing External Interrupt Flag bit
   RETFIE		; Return from the Interrupt loop	
    
DB_DELAY		; Debounce delay
   DECFSZ  COUNT1,1
   GOTO    DB_DELAY 
   RETURN
   
; -------------------
; DUMMY PULSE X = 1
; [BIT3 X BIT2 X BIT1 X BIT0 X]
LASER_PULSE		; Sending the Pulse signal to RA0
   ; DUMMY PULSE
   BSF   PORTA,0
   CALL  DELAY
   BCF   PORTA,0
   ; BIT0 
   BTFSC STORE_INP,0
   BSF   PORTA,0
   CALL  DELAY
   ; DUMMY PULSE
   BSF   PORTA,0
   CALL  DELAY
   BCF   PORTA,0
   ; BIT1 
   BTFSC STORE_INP,1
   BSF   PORTA,0
   CALL  DELAY
   ; DUMMY PULSE
   BSF   PORTA,0
   CALL  DELAY
   BCF   PORTA,0
   ; BIT2 
   BTFSC STORE_INP,2
   BSF   PORTA,0
   CALL  DELAY
   ; DUMMY PULSE
   BSF   PORTA,0
   CALL  DELAY
   BCF   PORTA,0
   ; BIT3 
   BTFSC STORE_INP,3
   BSF   PORTA,0
   CALL  DELAY
   BCF   PORTA,0
   RETURN
; -------------------

DELAY			; 2 Second delay
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
	GOTO	$+1
	GOTO	$+1
	GOTO	$+1
	RETURN

END
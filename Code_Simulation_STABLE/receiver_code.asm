LIST p=16F84A
  #INCLUDE <p16f84a.inc>

  ORG 0x00		    ; Configure Origin vector

; PIN CONFIGURATION
; ---------------------------
; SENSOR    RA1     INPUT       TRISA   B'00000010'
; BIT0      RB1     OUTPUT      TRISB   B'00000000'
; BIT1      RB2     OUTPUT
; BIT2      RB3     OUTPUT
; BIT3      RB4     OUTPUT
; ---------------------------

   CBLOCK 0CH		    ; Reserving General registers
    COUNT1
    COUNT2
    COUNT3
    STORE_INP
   ENDC

MAIN			    ; Configuring registers    
   BSF   STATUS,5	    ; Moving to Bank 1
   CLRF  TRISB		    ; Set PORTB as Output
   MOVLW    B'00000010'	    ; Input Pin configuration in PORTA
   MOVWF    TRISA
   BCF   STATUS,5	    ; Moving back to Bank 0
   CLRF  PORTB		    ; Set PORTB to LOW (B'00000000')
   CLRF  PORTA		    ; Set PORTA to LOW (B'00000000')
   CLRF  STORE_INP	    ; Clearing stored input

INPUT_CHECK		    
    BTFSS PORTA,1	    ; Check RA1 for Inputs, skip if HIGH
    GOTO INPUT_CHECK	    ; Loop until RA1, HIGH
    GOTO READ_INPUT	    

READ_INPUT
   CALL DELAY		    ; Calling DELAY 3 times to get to the middle...
   CALL DELAY		    ; ... of the Required Laser pulse...
   CALL DELAY		    ; ... This avoids the Dummy pulse
   
   BTFSC PORTA,1	    ; Check Pin RA1, skip if LOW
   BSF   STORE_INP,1	    ; Else, add HIGH to bit 1 in STORE_INP
   
   CALL DELAY		    ; Calling DELAY 4 times to get to the middle...
   CALL DELAY		    ; ... of the Required Laser pulse...
   CALL DELAY		    ; ... This avoids the Dummy pulse 
   CALL DELAY
   
   BTFSC PORTA,1	    ; Check Pin RA1, skip if LOW
   BSF   STORE_INP,2	    ; Else, add HIGH to bit 2 in STORE_INP
   
   CALL DELAY
   CALL DELAY
   CALL DELAY
   CALL DELAY
   
   BTFSC PORTA,1	    ; Check Pin RA1, skip if LOW
   BSF   STORE_INP,3	    ; Else, add HIGH to bit 3 in STORE_INP

   CALL DELAY
   CALL DELAY
   CALL DELAY
   CALL DELAY
   
   BTFSC PORTA,1	    ; Check Pin RA1, skip if LOW
   BSF   STORE_INP,4	    ; Else, add HIGH to bit 4 in STORE_INP
   
OUTPUT
   CLRF  PORTB		    ; Set PORTB to LOW (B'00000000')
   MOVF  STORE_INP,0	    ; Move STORE_INP to W Register
   MOVWF PORTB		    ; Move W Register to PORTB

   CLRF STORE_INP	    ; Clearing stored input
   GOTO INPUT_CHECK   

DELAY			    ; 1 Second delay
	MOVLW	0x86
	MOVWF	COUNT1
	MOVLW	0x6B
	MOVWF	COUNT2
	MOVLW	0x03
	MOVWF	COUNT3
DELAY_0
	DECFSZ	COUNT1, f
	GOTO	$+2
	DECFSZ	COUNT2, f
	GOTO	$+2
	DECFSZ	COUNT3, f
	GOTO	DELAY_0

	GOTO	$+1

	RETURN 
 
END
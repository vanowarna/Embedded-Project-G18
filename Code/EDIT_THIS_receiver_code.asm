  LIST p=16F84A
  #INCLUDE <p16f84a.inc>

  ORG 0x00
   
; SENSOR    RA1     INPUT       TRISA   B'00000010'
; BIT0      RB1     OUTPUT      TRISB   B'00000000'
; BIT1      RB2     OUTPUT
; BIT2      RB3     OUTPUT
; BIT3      RB4     OUTPUT

   CBLOCK 0CH
    COUNT1
    COUNT2
    COUNT3
    STORE_INP
   ENDC

;Define Registers
MAIN
   BSF   STATUS,5
   CLRF  TRISB
   MOVLW    B'00000010'
   MOVWF    TRISA
   BCF   STATUS,5
   CLRF  PORTB
   CLRF  PORTA
   CLRF  STORE_INP

INPUT_CHECK
    BTFSS PORTA,2
    GOTO INPUT_CHECK
    GOTO READ_INPUT

READ_INPUT
      CALL  DB_DELAY
   ; =================
   BTFSC PORTA,1
   BSF   STORE_INP,0
   BTFSC PORTA,1
   BSF   STORE_INP,1
   BTFSC PORTA,1
   BSF   STORE_INP,2
   BTFSC PORTA,1
   BSF   STORE_INP,3
   ; =================
   
; DELAY
;    DECFSZ  COUNT2,1
;    GOTO    DELAY
;    DECFSZ  COUNT3,1
;    GOTO    DELAY
;    RETURN

; Added============ 1 second ========================
DELAY
			;1108399 cycles
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

			;2 cycles
	GOTO	$+1

			;4 cycles (including call)
	RETURN
; Added====================================  

   
OUTPUT
   MOVF STORE_INP,0
   MOWF PORTB


END   














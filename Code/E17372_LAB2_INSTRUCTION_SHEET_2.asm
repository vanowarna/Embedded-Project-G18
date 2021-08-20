; ===================================
; # EE322 EMBEDDED SYSTEM DESIGN LAB
; # WARNASOORIYA W.A.V.G.
; # E/17/372
; # LAB 2 : Instruction Sheet - 2
; ===================================
    
LIST p=16F84A
#INCLUDE <p16f84a.inc>

; Define General Registers to Delay
CBLOCK	0CH
    COUNT1
    COUNT2
    COUNT3
    ENDC
    
ORG 0X00			;   Reset vector
GOTO INITIALIZE
ORG 0X04			;   Interrupt vector
GOTO INTERRUPT
    
INITIALIZE:
;     Set up Ports
    BSF     STATUS,5
    BCF	    TRISA,0		;   Set RA0 as an O/P
    BSF	    TRISB,0		;   Set RB0 as an I/P
    BCF     STATUS,5
    BCF	    PORTA,0		;   Set RA0 to LOW
    MOVLW   B'10010000'		;   Configuring  INTCON Register
    MOVWF   INTCON
    MOVLW   0x05		;   Adjusting general register
    MOVWF   COUNT3		;   for the Required delay ~1s
    GOTO    MAIN
    
MAIN:
    GOTO MAIN			;   Interating until an interrupt occur

INTERRUPT:
    CALL    DB_DELAY		;   Debounce delay
    BSF	    PORTA,0		;   Turn on RA0
    CALL    DELAY		;   Calling ~1 Delay
    BCF	    PORTA,0		;   Turn off RA0
    BCF	    INTCON,INTF		;   Clearing interrupt flag in INTF
    RETFIE			;   Return from interrupt
    
    ; Debounce delay    
DB_DELAY:
    DECFSZ  COUNT1,1
    GOTO    DB_DELAY 
    RETURN
    
; ~1s Delay    
DELAY:
    DECFSZ  COUNT1,1
    GOTO    DELAY
    DECFSZ  COUNT2,1
    GOTO    DELAY
    DECFSZ  COUNT3,1
    GOTO    DELAY
    CLRF    COUNT3
    MOVLW   0x05
    MOVWF   COUNT3
    RETURN
END
    

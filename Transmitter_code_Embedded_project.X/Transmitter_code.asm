;Lab_2 Embedded Systems Interapt
;B.P.P PERERA
;E/17/241
        
    list p = 16F84A
    #include "p16f84a.inc"
    org 0x00
    GOTO START
    ORG 0x04
    GOTO INT

COUNT1 EQU 0CH ;defining registers
COUNT2 EQU 0DH
COUNT3 EQU 0EH

START
    BSF STATUS,5 ;moving to bank A
    MOVLW B'00000001'
    MOVWF TRISB ;setting B port as input
    CLRF TRISA  ;setting A pory as output
    BCF STATUS,5 ;moving to bank 0
    CLRF PORTA    ;clearing port A
    MOVLW B'10010000'
    MOVWF INTCON  ;enbling Interapt
    GOTO MAIN

MAIN
    GOTO MAIN
;interupt instructions
INT
    MOVLW 0x01  ;outputinh port A
    MOVWF PORTA
    CALL DELAY
    MOVLW 0x00
    MOVWF PORTA
    BCF INTCON,1
    RETFIE
;4s Delay for the 4MHz Ocillator
DELAY
   MOVLW 0xFA
   MOVWF COUNT1
   MOVLW 0xFA
   MOVWF COUNT2
   MOVLW 0X06
   MOVWF COUNT3
DELAY_1
    NOP
    DECFSZ COUNT1,1
    GOTO DELAY_1
    GOTO DELAY_2

DELAY_2
    NOP
    DECFSZ COUNT2,1
    GOTO DELAY_1
    GOTO DELAY_3

DELAY_3
      NOP
      DECFSZ COUNT3,1
      GOTO DELAY_1
      RETURN
    END

;    Edited line
;    Test one two three
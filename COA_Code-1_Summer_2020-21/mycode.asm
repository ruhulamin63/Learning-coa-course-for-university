.MODEL SMALL

.STACK

.DATA

STRING DB 10, 13, 'HELLO SIR, How are you ? $'

.CODE


MAIN PROC


MOV AX, @DATA


MOV DS, AX

LEA DX, STRING

MOV AH, 09H

INT 21H

MOV AX, 4C00H

INT 21H

MAIN ENDP

END MAIN





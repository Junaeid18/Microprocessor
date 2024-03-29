A7 SEGMENT PARA PUBLIC 'CODE'
ASSUME CS:A6
ORG 1000H

START:
;control register turn on
MOV AL,80H
OUT 1FH,AL

MOV AL,0FFH
OUT 19H,AL

MOV AL,80H
OUT 1EH,AL

M:  MOV DI,OFFSET FIRST
    MOV DL,1AH
M1:
    MOV AL,BYTE PTR CS:[DI]
    OUT 18H,AL
    INC DI 
    MOV AL,BYTE PTR CS:[DI]
    OUT 1AH,AL
    INC DI
    MOV AL,BYTE PTR CS:[DI]
    OUT 1CH,AL
    INC DI
    MOV AL,BYTE PTR CS:[DI]
    OUT 1BH,AL
    INC DI
    DEC DL
 
    MOV CX,0FFFFH
    M2:LOOP M2
    
    CMP DL,00H
    JNE M1
    JMP L3

FIRST:
;C0 R1
DB 0FFH
DB 0BFH
DB 01H
DB 01H 

DB 0FFH
DB 09FH
DB 01H
DB 01H

DB 0FFH
DB 08FH
DB 01H
DB 01H

DB 0FFH
DB 087H
DB 01H
DB 01H

DB 0FFH
DB 83H
DB 01H
DB 01H

DB 0FFH
DB 081H
DB 01H
DB 01H

DB 0FFH
DB 080H
DB 01H
DB 01H

;C7 GREEN
DB 0BFH
DB 0FFH
DB 80H
DB 02H 

DB 09FH
DB 0FFH
DB 80H
DB 02H

DB 08FH
DB 0FFH
DB 80H
DB 02H

DB 087H
DB 0FFH
DB 80H
DB 02H

DB 083H
DB 0FFH
DB 80H
DB 02H

DB 081H
DB 0FFH
DB 80H
DB 02H

DB 080H
DB 0FFH
DB 80H
DB 02H
;R0 ORANGE
DB 0FEH
DB 0FEH
DB 02H
DB 0C0H 

DB 0FEH
DB 0FEH
DB 06H
DB 0C0H

DB 0FEH
DB 0FEH
DB 0EH
DB 0C0H

DB 0FEH
DB 0FEH
DB 01EH
DB 0C0H

DB 0FEH
DB 0FEH
DB 03EH
DB 0C0H

DB 0FEH
DB 0FEH
DB 07EH
DB 0C0H
;R7 RED
DB 0FFH
DB 07FH
DB 02H
DB 01H

DB 0FFH
DB 07FH
DB 06H
DB 01H

DB 0FFH
DB 07FH
DB 0EH
DB 01H

DB 0FFH
DB 07FH
DB 01EH
DB 01H

DB 0FFH
DB 07FH
DB 03EH
DB 01H

DB 0FFH
DB 07FH
DB 07EH
DB 01H

L3: MOV SI,OFFSET DATA
    MOV BL,1AH

L:


    MOV AL,BYTE PTR CS:[SI]
    OUT 18H,AL
    INC SI 
    MOV AL,BYTE PTR CS:[SI]
    OUT 1AH,AL
    INC SI
    MOV AL,BYTE PTR CS:[SI]
    OUT 1CH,AL
    INC SI
    MOV AL,BYTE PTR CS:[SI]
    OUT 1BH,AL
    INC SI
    DEC BL
 
    MOV CX,0FH
    L2:LOOP L2


    
    CMP BL,00H
    JNE L

    JMP L3

DATA:
;C1
DB 0FFH
DB 0BFH
DB 01H
DB 01H

DB 0FFH
DB 0DFH
DB 01H
DB 01H


DB 0FFH
DB 0EFH
DB 01H
DB 01H


DB 0FFH
DB 0F7H
DB 01H
DB 01H


DB 0FFH
DB 0FBH
DB 01H
DB 01H


DB 0FFH
DB 0FDH
DB 01H
DB 01H


DB 0FFH
DB 0FEH
DB 01H
DB 01H
;C7 GREEN
DB 0BFH
DB 0FFH
DB 80H
DB 02H

DB 0DFH
DB 0FFH
DB 80H
DB 02H

DB 0EFH
DB 0FFH
DB 80H
DB 02H

DB 0F7H
DB 0FFH
DB 80H
DB 02H


DB 0FBH
DB 0FFH
DB 80H
DB 02H


DB 0FDH
DB 0FFH
DB 80H
DB 02H


DB 0FEH
DB 0FFH
DB 80H
DB 02H

;R0 ORANGE
DB 0FEH
DB 0FEH
DB 02H
DB 0C0H

DB 0FEH
DB 0FEH
DB 04H
DB 0C0H

DB 0FEH
DB 0FEH
DB 08H
DB 0C0H

DB 0FEH
DB 0FEH
DB 10H
DB 0C0H

DB 0FEH
DB 0FEH
DB 20H
DB 0C0H

DB 0FEH
DB 0FEH
DB 40H
DB 0C0H

;R7
DB 0FFH
DB 07FH
DB 02H
DB 01H

DB 0FFH
DB 07FH
DB 04H
DB 01H

DB 0FFH
DB 07FH
DB 08H
DB 01H

DB 0FFH
DB 07FH
DB 10H
DB 01H

DB 0FFH
DB 07FH
DB 20H
DB 01H

DB 0FFH
DB 07FH
DB 40H
DB 01H

EXIT:

A7 ENDS
END START
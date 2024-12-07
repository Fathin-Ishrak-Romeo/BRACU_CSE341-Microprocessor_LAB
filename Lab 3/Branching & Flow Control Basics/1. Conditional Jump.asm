.model small
.stack 100h     

.data
less db "5 is less than 6$"
greater db "5 is greater than 6$"
      
.code   

main proc
    mov ax, @data
    mov ds, ax
    
    ;code:
    mov ax, 5
    mov bx, 6
    
    ;conditional jump:
    cmp ax, bx      ;comparing the value stored in ax with the value stored in bx
    jl L1           ;checking if ax < bx or not 
                    ;if TRUE, then jump to label 1
                    ;if FALSE, then execute from next line 
                    ;"je" means "JUMP EQUAL TO"
                    ;"jg" means "JUMP GREATER THAN"
                    ;"jl" means "JUMP LESS THAN"
                    ;"jge" means "JUMP GREATER EQUAL TO"
                    ;"jle" means "JMUP LESS EQUAL TO" 
                    ;"IF" condition should be placed immediate after "JMP" instruction
                    ;"ELSE" condition should be placed into the "LABEL"
    
    ;else conditon:
    mov ah, 9
    lea dx, greater
    int 21h
               
    ;if condition:           
    L1:             ;since 5 < 6, so it should jump to this label
    mov ah, 9
    lea dx, less    
    int 21h 
    
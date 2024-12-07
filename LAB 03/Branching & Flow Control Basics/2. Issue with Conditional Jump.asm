.model small
.stack 100h     

.data
less db "6 is less than 5$"
greater db "6 is greater than 5$"
      
.code   

main proc
    mov ax, @data
    mov ds, ax
    
    ;code:
    mov ax, 6
    mov bx, 5
    
    ;conditional jump:
    cmp ax, bx      ;comparing the value stored in ax with the value stored in bx
    jl L1           ;checking if ax < bx or not 
                    ;if TRUE, then execute from next line 
                    ;if FALSE, then jump to label 1 
                    ;"je" means "JUMP EQUAL TO"
                    ;"jg" means "JUMP GREATER THAN"
                    ;"jl" means "JUMP LESS THAN"
                    ;"jge" means "JUMP GREATER EQUAL TO"
                    ;"jle" means "JUMP LESS EQUAL TO" 
                    ;"IF" condition should be placed immediate after "JMP" instruction
                    ;"ELSE" condition should be placed into the "LABEL"
    
    ;else conditon:
    mov ah, 9       ;since the jump conditon is false (6 !< 5), so the program start executing from this line
    lea dx, greater
    int 21h             
    
    
    ;newline
    mov dl, 10 
    mov ah, 2
    int 21h     
    
    ;carriage return
    mov dl, 13
    mov ah, 2
    int 21h   
    
               
    ;if condition:           
    L1:            ;the program will also sequentially execute these instructions
    mov ah, 9       
    lea dx, less    
    int 21h          
                   ;so the problem occurs when the program start executing from the else condtion
                   ;it sequentially executes all the instructions from else condition
 
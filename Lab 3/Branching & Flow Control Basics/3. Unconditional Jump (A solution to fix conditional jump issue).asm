.model small
.stack 100h     

.data
less db "6 is less than 5.$"
greater db "6 is greater than 5.$"  
unconditional_jump_check db "Unconditional jump worked successfully.$"
      
.code   

main proc
    mov ax, @data
    mov ds, ax
    
    ;code:
    mov ax, 6
    mov bx, 5
    
    ;conditional jump:
    cmp ax, bx      ;comparing the value stored in ax with the value stored in bx
    jl L1           
    
    ;else conditon:
    mov ah, 9       
    lea dx, greater
    int 21h             
    
    
    ;new line:
    mov dl, 10 
    mov ah, 2
    int 21h     
    
    ;carriage return:
    mov dl, 13
    mov ah, 2
    int 21h     
     
     
    ;unconditional jump:
    jmp exit       ;unconditional jump is used to avoid sequential condition executing
    
               
    ;if condition:           
    L1:           
    mov ah, 9       
    lea dx, less    
    int 21h                    
          
    exit: 
    
    mov ah, 9 
    lea dx, unconditional_jump_check
    int 21h
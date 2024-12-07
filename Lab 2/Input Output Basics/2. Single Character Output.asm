.model small
.stack 100h     

.data

.code   

main proc
    mov ax, @data
    mov ds, ax
    
    ;code 
    mov dx, 6      ;output is stored in dx register 
                   ;store the ascii value in dx
    mov ah, 2      ;single character output instruction
    int 21h        ;checks if ah == 2. yes, then value store in dx will appear in a prompt
                   ;output value can only be accessed from dx register
                      

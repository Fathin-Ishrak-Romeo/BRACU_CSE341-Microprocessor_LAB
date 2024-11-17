.model small
.stack 100h
.data

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov dl, 80     ;80 = P
                   ;dl stores the output
                   ;stores in ascii form  
    
    mov ah, 2      ;for single character output
    int 21h        ;interrupt
    
    mov ax, 4C00h  
                   
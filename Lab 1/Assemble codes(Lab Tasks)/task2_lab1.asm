.model small
.stack 100h
.data

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ax, 1  
    mov bx, 2   
    mov cx, ax  
    mov ax, bx 
    mov bx, cx  

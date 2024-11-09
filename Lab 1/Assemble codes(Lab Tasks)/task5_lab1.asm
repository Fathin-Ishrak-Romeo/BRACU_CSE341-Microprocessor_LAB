.model small
.stack 100h
.data

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ax, 3   
    mov bx, 4
    
    add ax, bx   ;ax = 3 + 4 = 7
    sub bx, ax   ;bx = 4 - 7 = -3
    neg bx       ;bx = 3    
    sub ax, bx   ;ax = 7 - 3 = 4

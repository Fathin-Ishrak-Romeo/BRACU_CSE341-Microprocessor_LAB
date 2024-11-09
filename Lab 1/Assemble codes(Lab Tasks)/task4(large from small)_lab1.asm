.model small
.stack 100h
.data

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ax, 1   
    mov bx, 2     
    
    ;subtracting bx (large) from ax (small)
    sub ax, bx  ;ax = ax - bx = 1 - 2 = -1

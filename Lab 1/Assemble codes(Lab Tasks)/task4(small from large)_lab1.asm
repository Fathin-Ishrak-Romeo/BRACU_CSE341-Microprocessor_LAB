.model small
.stack 100h
.data
.code
main proc
    mov ax ,@data
    mov ds, ax
    
    mov ax, 1   
    mov bx, 2      
    
    ;subtracting ax (small) from bx (large)
    sub bx, ax  ;bx = bx - ax = 2 - 1 = 1

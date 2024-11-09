.model small
.stack 100h
.data
.code
main proc
    mov ax ,@data
    mov ds, ax
    
    mov ax, 1   ;a random value assigned to ax
    mov bx, 2   ;a random value assigned to bx     
    
    ;subtracting ax (small) from bx (large)
    sub bx, ax  ;bx = bx - ax = 2 - 1 = 1

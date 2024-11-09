.model small
.stack 100h
.data

.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ax,1   ;a random value assigned to ax
    mov bx,2   ;a random value assigned to bx     
    
    ;adding ax with bx
    add ax,bx  ;ax = ax + bx


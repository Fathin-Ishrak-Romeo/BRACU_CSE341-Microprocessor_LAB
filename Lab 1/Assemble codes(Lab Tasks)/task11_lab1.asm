;(1 + 2) * (3 - 1) / 5 + 3 + 2 - (1 * 2)

.model small
.stack 100h
.data

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ax, 2
    inc ax        ;ax = ax + 1 = (1+2)=3
    mov bx, 3
    dec bx        ;bx = bx - 1 = (3-1)=2
    mul bx        ;ax = ax * bx = (1+2)*(3-1)=6
    mov bx, 5         
    div bx        ;ax = ax / bx = (1+2)*(3-1)/5=1   
                  ;mul is done before div, violating BODMAS
                  ;can't use dx register to store divisor(5)
                  ;since dx is used to store the remainder
    mov bx, ax    ;bx = ax = (1+2)*(3-1)/5=1      
    mov ax, 1
    mov cx, 2
    mul cx        ;ax = ax * 2 = (1*2)=2 
    mov cx, 3
    add bx, cx    ;bx = bx + cx = (1+2)*(3-1)/5+3=4
    mov cx, 2
    add bx, cx    ;bx = bx + cx = (1+2)*(3-1)/5+3+2=6
    sub bx, ax    ;bx = bx - ax = (1+2)*(3-1)/5+3+2-(1*2)=4
               
    
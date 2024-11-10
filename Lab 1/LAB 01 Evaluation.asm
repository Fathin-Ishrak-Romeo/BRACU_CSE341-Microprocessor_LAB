;Question: (101111b % 1111b) + 0F023h // 3CEh * 2h

.model small
.stack 100h
.data

.code
main proc   
    mov ax, @data
    mov ds, ax
    
    mov ax, 101111b
    mov bx, 1111b
    div bx           ;ax = ax // bx
                     ;dx = ax % bx = (101111b % 1111b)
    
    mov cx, dx       ;cx = dx = ax % bx
    mov dx, 8Ah      ;loads the higher part of 8AF023 to dx
    mov ax, 0F023h   ;loads the lower part of 8AF023 to ax
    mov bx, 3CEh     
    div bx           ;ax = ax / bx = 0F023h // 3CEh
    
    mov bx, 2h
    mul bx           ;ax = ax * bx = 0F023h // 3CEh * 2h
    
    add cx, ax       ;(101111b % 1111b) + 0F023h // 3CEh * 2h
    
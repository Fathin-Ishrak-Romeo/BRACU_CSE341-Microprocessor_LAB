.model small
.stack 100h
.data

.code
main proc
    mov ax, @data    ; Initialize data segment
    mov ds, ax

    ; Load the 32-bit dividend 8A32F4D5 into DX:AX
    mov dx, 8A32h    ; Load higher 16 bits (8A32) into DX
    mov ax, 0F4D5h   ; Load lower 16 bits (F4D5) into AX

    ; Load the divisor C9A5 into BX
    mov bx, 0C9A5h   ; Load divisor into BX

    ; Perform the division
    div bx           ; Divide DX:AX by BX
                     ; Quotient will be in AX, Remainder will be in DX

    ; Exit

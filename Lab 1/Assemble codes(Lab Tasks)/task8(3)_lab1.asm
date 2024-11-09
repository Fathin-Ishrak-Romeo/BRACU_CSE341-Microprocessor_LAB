.model small
.stack 100h
.data

.code
main proc
    mov ax, @data    ; Initialize data segment
    mov ds, ax

    ; Load the multiplicands CA92 and BAF9
    mov ax, 0CA92h   ; Load CA92 into AX
    mov bx, 0BAF9h   ; Load BAF9 into BX

    ; Perform the multiplication
    mul bx           ; Multiply AX by BX, result is in DX:AX
                     ; DX:AX now contains the 32-bit result of CA92 * BAF9

    ; Exit

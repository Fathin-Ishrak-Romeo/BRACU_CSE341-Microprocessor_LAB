;Question: 236DF * AF

.model small
.stack 100h
.data

.code
main proc
    mov ax, @data    ; Initialize data segment
    mov ds, ax

    ; Load the lower and upper parts of 236DFh
    mov ax, 36DFh    ; Load lower 16 bits (36DF) into AX
    mov dx, 2        ; Load upper part (2) into DX

    mov bx, 0AFh     ; Load AF into BX

    ; Perform the multiplication of lower part (36DF) with AF
    mul bx           ; Multiply AX by BX, result is in DX:AX (for lower part only)

    ; Save result of lower multiplication
    mov cx, dx       ; Store DX result of 36DF * AF in CX
    mov dx, 0        ; Clear DX for the next multiplication

    ; Multiply the upper part (2) with AF
    mov ax, 2        ; Load upper part again (2) into AX
    mul bx           ; Multiply AX (2) by BX (AF)

    ; Add the results to form the full 32-bit result
    add dx, cx       ; Add saved higher part of 36DF * AF to DX
    ; DX:AX now contains the final 32-bit result of 236DF * AF

    ; Exit


Question: C2A2 * ABCD / BED

.model small
.stack 100h
.data

.code
main proc
    mov ax, @data        ; Initialize data segment
    mov ds, ax

    ; Step 1: Load the multiplicands C2A2h and ABCDh
    mov ax, 0C2A2h       ; Load C2A2 into AX (lower 16 bits)
    mov bx, 0ABCDh       ; Load ABCD into BX

    ; Perform the multiplication of C2A2h * ABCDh
    mul bx               ; AX = lower 16 bits of C2A2 * ABCD, DX = upper 16 bits of result

    ; Save the result of multiplication (C2A2 * ABCD) in DX:AX
    mov cx, dx           ; Store upper 16 bits of result in CX
    mov dx, 0            ; Clear DX to prepare for division

    ; Step 2: Load the divisor BEDh
    mov bx, 0BEDh        ; Load BED into BX (divisor)

    ; Step 3: Perform the division (DX:AX / BX)
    div bx               ; DX:AX (32-bit number) divided by BX
                         ; AX = quotient, DX = remainder

    ; Exit the program

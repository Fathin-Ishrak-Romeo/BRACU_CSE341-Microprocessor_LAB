;take characters from the user and print them until a space is pressed (what if the first input is a space)

.model small
.stack 100h
.data
.code
main proc
    mov ah, 1           ; Function to take input
    int 21h             ; Take the first input
    cmp al, ' '         ; Check if the first input is a space
    je end_program      ; If the first input is a space, stop the program

repeat:                 
    mov ah, 2           ; Function to display character
    mov dl, al          ; Move input character to DL
    int 21h             ; Display the character

    mov ah, 1           ; Function to take input again
    int 21h             ; Take next input
    cmp al, ' '         ; Check if the current input is a space
    jne repeat          ; If not a space, repeat

end_program:
    mov ah, 4Ch         ; Function to exit program
    int 21h
main endp
end main

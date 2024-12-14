;take characters from the user and print them until a space is pressed

.code
repeat:
mov ah,1
int 21h
mov ah,2
mov dl,al
int 21h
cmp al,' '
jne repeat
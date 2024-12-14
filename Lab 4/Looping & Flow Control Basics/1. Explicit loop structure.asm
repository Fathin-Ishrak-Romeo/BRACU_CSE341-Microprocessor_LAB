;java

;int x = 0;
;while (x < 5){
;   System.out.println(x);
;   x++; 
;}
  
  
;equivalent assembly code structure (explicit loop) 
mov ah,2    ;output instruction
mov dl,30h  ;the emu8086 uses hexadecimal. 30h is 0
            ;initializing counter
            ;counter = 0
start:      ;loop label
cmp dl,35h  ;the emu8086 uses hexadecimal. 35h is 5
            ;loop condition check
            ;x - 5 = ?
jge end     ;loop breaking condition using conditional jump
int 21h     ;output
inc dl      ;manually increasing the counter
jmp start   ;manual looping using unconditional jump
end:        ;loop break label
;java

;int x = 0;
;while (x < 5){
;   System.out.println(x);
;   x++; 
;}
  
  
;equivalent assembly code structure (implicit loop) 
mov cx,5    ;the bound will be in cx. (the number of times the loop will run) 
            ;counter limit
            ;the value of cx will automatically decreased by 1 in each iteration
mov dl,30h  ;intializing the output value
mov ah,2    ;output instruction
start:      ;loop label
int 21h     ;showing output
inc dl      ;increating the output value by 1
loop start  ;"loop" keyword is used to automatically run a loop
            ;similar to an unconditional jump
            ;jump to the label
            ;loop won't break untill cx = 0
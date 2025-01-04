org 100h

jmp start       ; jump over data declaration

msg:    db      "1-Calculate the volume of cylinder",0dh,0ah,"2-Calculate Volume of Cuboid",0dh,0ah, '$'
msg2:    db      0dh,0ah,"Enter First No: $"
msg3:    db      0dh,0ah,"Enter Second No: $"
msg4:    db      0dh,0ah,"Choice Error $" 
msg5:    db      0dh,0ah,"Result : $" 
msg6:    db      0dh,0ah ,'----------------------------------Mircrop so fun:)------------------------------------------------- ', 0Dh,0Ah, '$'
msg7:    db      0dh,0ah,"Enter Third No: $"
msg8:    db      0dh,0ah,"Enter radius: $"
msg9:    db      0dh,0ah,"Enter height: $"
  
  
  
start:  mov ah,9
        mov dx, offset msg ;first we will display hte first message from which he can choose the operation using int 21h
        int 21h
        mov ah,0                       
        int 16h  ;then we will use int 16h to read a key press, to know the operation he choosed
        cmp al,31h ;the keypress will be stored in al so, we will comapre to 1 addition ..........
        je cylinder
        cmp al,32h
        je cuboid
        
        mov ah,09h
        mov dx, offset msg4
        int 21h
        mov ah,0
        int 16h
        jmp start
        
cylinder:   mov ah,9
            mov dx, offset msg8
            int 21h
            mov cx,0
            call InputNo  ;input for radius            
            push dx           
            pop bx
            mov ax,dx
            mul bx 
            mov dx,ax
            push dx 
            mov ah,9  ;square kan radius
            
            push dx
            mov ah,9
            mov dx, offset msg9
            int 21h 
            mov cx,0
            call InputNo
            
            pop bx
            mov ax,dx
            mul bx                       
            mov dx,ax
            push dx 
            mov ah,9    ;multiplt the height with radius square
            
             
            pop bx
            mov ax,3    ;define pi as 3
            mul bx                       
            mov dx,ax
            push dx 
            mov ah,9    
            
            
            
            mov dx, offset msg5 ;output last result
            int 21h
            mov cx,10000
            pop dx
            call View 
            jmp exit  
            
InputNo:    mov ah,0
            int 16h ;then we will use int 16h to read a key press     
            mov dx,0  
            mov bx,1 
            cmp al,0dh ;the keypress will be stored in al so, we will comapre to  0d which represent the enter key, to know wheter he finished entering the number or not
            ;newline 
            je FormNo ;if it's the enter key then this mean we already have our number stored in the stack, so we will return it back using FormNo
            sub ax,30h ;we will subtract 30 from the the value of ax to convert the value of key press from ascii to decimal
            call ViewNo ;then call ViewNo to view the key we pressed on the screen
            mov ah,0 ;we will mov 0 to ah before we push ax to the stack bec we only need the value in al
            push ax  ;push the contents of ax to the stack
            inc cx   ;we will add 1 to cx as this represent the counter for the number of digit
            jmp InputNo ;then we will jump back to input number to either take another number or press enter          
   

;we took each number separatly so we need to form our number and store in one bit for example if our number 235
FormNo:     pop ax; Take the last input from the stack  
            push dx      
            mul bx;Here we are multiplying the value of ax with the value of bx
            pop dx;After multiplication we will remove it from stack
            add dx,ax;After removing from stack add the value of dx with the value of ax
            mov ax,bx;Then set the value of bx in ax       
            mov bx,10
            push dx;push the dx value again in stack before multiplying to resist any kind of accidental effect
            mul bx;Multiply bx value by 10
            pop dx;pop the dx after multiplying
            mov bx,ax;Result of the multiplication is still stored in ax so we need to move it in bx
            dec cx;After moving the value we will decrement the digit counter value
            cmp cx,0;Check if the cx counter is 0
            jne FormNo;If the cx counter is not 0 that means we have multiple digit input and we need to run format number function again
            ret;If the cx counter is 0 that means all of our digits are fully formatted and stored in bx we just need to return the function   


       
       
View:  mov ax,dx
       mov dx,0
       div cx 
       call ViewNo
       mov bx,dx 
       mov dx,0
       mov ax,cx 
       mov cx,10
       div cx
       mov dx,bx 
       mov cx,ax
       cmp ax,0
       jne View
       ret


ViewNo:    push ax ;we will push ax and dx to the stack because we will change there values while viewing then we will pop them back from
           push dx ;the stack we will do these so, we don't affect their contents
           mov dx,ax ;we will mov the value to dx as interrupt 21h expect that the output is stored in it
           add dl,30h ;add 30 to its value to convert it back to ascii
           mov ah,2
           int 21h
           pop dx  
           pop ax
           ret
      
   
exit:   mov dx,offset msg6
        mov ah, 9
        int 21h  


        mov ah, 0
        int 16h

        ret
            
                       
cuboid:   mov ah,9
            mov dx, offset msg2
            int 21h
            mov cx,0
            call InputNo
            
            push dx
            mov ah,9
            mov dx, offset msg3
            int 21h 
            mov cx,0
            call InputNo
            
            pop bx
            mov ax,dx
            mul bx 
            mov dx,ax
            push dx 
            mov ah,9 
            
            push dx
            mov ah,9
            mov dx, offset msg7
            int 21h 
            mov cx,0
            call InputNo
            
            pop bx
            mov ax,dx
            mul bx 
            mov dx,ax
            push dx 
            mov ah,9
            mov dx, offset msg5
            int 21h
            mov cx,10000
            pop dx
            call View 
            jmp exit 



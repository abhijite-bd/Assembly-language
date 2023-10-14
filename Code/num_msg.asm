.model small
.stack 256
.data
msg  db 'Bangladesh $'
msg1 db 'num1 $'
msg2 db 'num2 $' 
num1 db 5
num2 db ?
.code 

main proc  
    mov Ax,@data
    mov ds,Ax
             
    mov ah,1
    int 21h
    mov num2,al
             
    mov ah,09   ;print bangladesh
    lea dx,msg
    int 21h   
    
    mov ah,9    ;print msg1
    lea dx,msg1
    int 21h
      
    mov ah,2    ;print num1
    mov dl,num1 
    add dl,48
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
  
    
    mov ah,9    ;print msg2
    lea dx,msg2
    int 21h
    
    mov ah,2     ;print num2
    mov dl,num2
    int 21h
       
   
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
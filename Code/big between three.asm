.model small
.stack 100h
.data
 
.code
main proc
  mov ax,@data
  mov ds,ax

  mov ah,1
  int 21h
  mov bl,al 
  
  int 21h
  mov bh,al
  
  int 21h
  mov cl,al 
   
  cmp bl,bh
  jge L1
  jmp L2
  
  
   L1:
  cmp bl,cl
  jge L3
  jmp L4 
  loop exit:
  
  L3:
  mov ah,2
  mov dl,bl
  int 21h
  loop exit:
  
  L4:
  mov ah,2
  mov dl,cl
  int 21h
  loop exit:  
  
  L2:
   cmp bh,cl
   jge L5
   jmp L4
   loop exit:
   
  L5:
   mov ah,2
   mov dl,bh
   int 21h  
  
  loop exit:
  
  
  
 
  

  exit:
  mov ah,4ch
  int 21h
  main endp
end main
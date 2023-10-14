.model small
.stack 100h
.data

.code
main proc
  mov ax,@data
  mov ds,ax

  
  mov bl,'a'
   
  mov cx,0  
  mov cl,26
  
  for:
  mov ah,2
  mov dl,bl
  int 21h
  
  inc bl
  loop for:

  exit:
  mov ah,4ch
  int 21h
  main endp
end main      

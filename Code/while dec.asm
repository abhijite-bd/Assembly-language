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
  
  mov cl,bl
  
  while:
  cmp cl,'0' 
  jl exit:
  
  mov ah,2
  mov dl,cl
  int 21h
  
  dec cl
  jmp while:
  

  exit:
  mov ah,4ch
  int 21h
  main endp
end main
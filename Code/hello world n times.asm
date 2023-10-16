.model small
.stack 100h
.data
  a db 10,13,"hello world $"
.code
main proc
  mov ax,@data
  mov ds,ax

  mov ah,1
  int 21h
  mov bl,al
  
  mov cl,'1'
  
  while:
  cmp cl,bl
  jg exit:
  
  mov ah,9
  lea dx,a
  int 21h 
  mov ah,2
  mov dl,cl
  int 21h
  inc cl
  
  jmp while:

  exit:
  mov ah,4ch
  int 21h
  main endp
end main
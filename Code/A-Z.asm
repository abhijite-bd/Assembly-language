.model small
.stack 100h
.data

.code
main proc
  mov ax,@data
  mov ds,ax

  mov cl,'A'
  
  while:
  cmp cl,'Z'
  jg exit:
  
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
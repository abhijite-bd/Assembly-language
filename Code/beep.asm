.model small
.stack 100h
.data

.code
main proc
  mov ax,@data
  mov ds,ax

  mov ah,2
  mov dl,7
  int 21h  
  
  mov ah,2
  mov dl,7
  int 21h
  
  mov ah,2
  mov dl,7
  int 21h

  exit:
  mov ah,4ch
  int 21h
  main endp
end main

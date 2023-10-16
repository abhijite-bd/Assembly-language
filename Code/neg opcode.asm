.model small
.stack 100h
.data

.code
main proc
  mov ax,@data
  mov ds,ax

  mov cl,5
  neg cl
  
  mov ah,2
  mov dl,cl
  int 21h

  exit:
  mov ah,4ch
  int 21h
  main endp
end main
.model small
.stack 100h
.data

.code
main proc
  mov ax,@data
  mov ds,ax

  mov bl,'9'
  mov bh,'8'
  
 ; add bl,48
  ;add bh,48
  
  cmp bl,bh
  jng L1 
  jmp L2
  
  L2: 
  mov ah,2
  mov dl,bh
  int 21h
  mov dl,bl
  int 21h 
  jmp exit:
  
  L1:
  mov ah,2
  mov dl,bl
  int 21h
  mov dl,bh
  int 21h 
  jmp exit:
  
  
  mov ah,2
  mov dl,bh
  int 21h
  mov dl,bl
  int 21h
  
  exit:
  mov ah,4ch
  int 21h
  main endp
end main
.model small
.stack 100h

.code
main proc
  
  
  mov al,14
  mov bl,3
  
  div bl ;al=al/bl 
  ;result stores in al and remainder stores in ah
  mov cl,al
  mov ch,ah
  
  mov ah,2
  mov dl,cl
  add dl,48
  int 21h
  
  mov dl,ch 
  add dl,48
  int 21h

  exit:
  mov ah,4ch
  int 21h
  main endp
end main
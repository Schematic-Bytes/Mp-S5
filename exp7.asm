.model small
.data
 msg db 0ah,0dh, "This is the message using procedures $"
.code
      mov ax,@data
      mov ds,ax
      call display
      mov ah,4ch
      int 21h
display proc near
      lea dx,msg
      mov ah,09h
      int 21h
      ret
display endp
      end


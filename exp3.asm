.model small
.data
    msg db 0ah,0dh,"The sum is $"

.code 
    mov ax, @data
    mov ds, ax
   
    mov al, 02h
    mov bh,05h
    add bh, al
    add bh, 30h
    
    lea dx, msg
    mov ah, 09h
    int 21h

    mov dl, bh
    mov ah, 02h
    int 21h
    mov ah, 4ch
    int 21h
end

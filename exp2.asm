.model small
.data
    msg1 db "Arthur Leywin$"
    msg2 db "Reynolds Leywin$"

.code 
    mov ax, @data
    mov ds, ax

    lea dx, msg1
    mov ah, 09h
    int 21h

    lea dx, msg2
    mov ah, 09h
    int 21h

    mov ah, 4dh
    int 21h
end
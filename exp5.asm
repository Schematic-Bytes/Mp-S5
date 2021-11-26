.model small
.data
    msg1 db 0ah, 0dh, "Enter the 1st Number: $"
    msg2 db 0ah, 0dh, "Enter the 2nd Number: $"
    msg3 db 0ah, 0dh, "The difference is: $"


.code
    mov ax, @data
    mov ds, ax

    lea dx, msg1
    mov ah, 09h
    int 21h

    mov ah, 01h
    int 21h

    sub al, 30h
    mov bh, al

    lea dx, msg2
    mov ah,09h
    int 21h

    mov ah, 01h
    int 21h

    sub al, 30h
    sub bh, al
    add bh, 30h

    lea dx, msg3
    mov ah, 09h
    int  21h

    mov dl, bh
    mov ah, 02h
    int 21h

    mov ah,4ch
    int 21h
end



.model small
.data
    msg1 db 10,13, "Enter the number $"
    msg2 db 10,13, "The given number is odd $"
    msg3 db 10,13, "The given number is even $"

.code

    mov ax, @data

    mov ds, ax
    lea dx, msg1
    mov ah, 09h
    int 21h

    mov ah, 01h
    int 21h

    sub al, 30h
    mov bl, 02h

    div bl

    cmp ah, 00h

    jz displayeven

    lea dx, msg2
    mov ah, 09h
    int 21h

    jmp stop

    displayeven:
        lea dx, msg3
        mov ah, 09h
        int 21h
    stop:
        mov ah, 4ch
        int 21h
end


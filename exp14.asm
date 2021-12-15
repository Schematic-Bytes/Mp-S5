.model small
.data
	msg1 db 0ah,0dh, "Enter the first string $"
	str1 db 40 dup ("$")
	msg2 db 0ah,0dh, "Enter the second string $"
	str2 db 40 dup("$")
	msg3 db 0ah,0dh, "The two string are equal $"
	msg4 db 0ah,0dh, "The two string are not equal $"
    print macro msg
		lea dx,msg
		mov ah,09h
		int 21h
	endm
.code
	mov ax, @data
	mov ds, ax
	print msg1

	lea si, str1
	mov cl, 00h
loop1:
    mov ah, 01h
    int 21h
    mov [si],al
    inc si
    inc cl
    cmp al, 0dh
    jnz loop1


	print msg2

	lea si,str2
    mov cl, 00h
loop2:
    mov ah, 01h
    int 21h
    mov[si], al
    inc si
    inc cl
    cmp al, 0dh
    jnz loop2
    lea si, str1
    lea di, str2
loop3:
    mov dl, [si]
    mov bl, [di]
    cmp dl, bl
    jnz loop4
    inc si
    inc di
    dec cl
    jnz loop3

    print msg3
    jmp stop
loop4:
    print msg4
stop:
	mov ah,4ch
	int 21h
end

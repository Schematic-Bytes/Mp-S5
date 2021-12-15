.model small
.data 
	n dw 03h
	fact dw ?

.code
	mov ax,@data
	mov ds,ax
	mov ax,01h
	mov cx,n
	next:
	mul cx
	dec cx
	JNZ next
	add ax,30h
	mov fact,ax
	mov dx,fact
	mov ah,02h
	int 21h
	mov ah,4ch
	int 21h
end


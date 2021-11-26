.model small
.data
	msg1 db,0ah,0dh,"enter the first number:$"
	msg2 db,0ah,0dh,"enter the second number:$"
	msg3 db,0ah,0dh,"the product is;$"
.code
	mov ax,@data
	mov ds,ax
	lea dx,msg1
	mov ah,09h
	int 21h
	mov ah,09h
	int 21h
	sub al30h
	mov bh,al
	lea dx,msg2
	mov 0h,09h
	int 21h
	mov ah,ah
	int 21h
	sum al,30h
	mov bh
	mov bh,al
	add bh,30h
	mov ah,09h
	int 21h
	mov al,bh
	mov ah,02h
	int 21hy
	mov 0h,4ch
	int 21h
end		 

org 100h

mov cx, 256

mov ah, 01h
mov bx, string+1

do_while:
int 21h
cmp al, 0Dh
je end

mov [bx], al
inc bx
loop do_while

end:
mov byte[bx], '$'

mov ah, 02h
mov dl, 0Ah
int 21h
mov dl, 0Dh
int 21h

mov ah, 09h
mov dx, string
int 21h

mov AH, 00h
int 21h

string dw 256
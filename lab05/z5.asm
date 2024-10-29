org 100h

mov AX, [b]
add AX, [c]
mov DX, AX

mov AX, [a]
div DL
mov [y], AL

mov AH, 00h
int 21h

a dw 8h
b dw 2h
c dw 2h
y dw 0h
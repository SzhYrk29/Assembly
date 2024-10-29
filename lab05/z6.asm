org 100h

mov AX, [b]
mov DL, [c]
div DL
mov [y], AL

mov AL, [a]
mov DL, [y]
mul DL
mov [y], AX

mov AH, 00h
int 21h

a dw 2h
b dw 6h
c dw 2h
y dw 0h
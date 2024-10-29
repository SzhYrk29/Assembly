org 100h

mov AL, [a]
mov DL, [b]
MUL DL
add AX, [c]
mov [y], AX

mov AH, 00h
int 21h

a dw 4h
b dw 3h
c dw 2h
y dw 0h
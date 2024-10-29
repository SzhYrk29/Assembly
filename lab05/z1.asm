org 100h

mov AX, [a]
add AX, [b]
add AX, [c]
mov [y], AX

mov AH, 00h
int 21h

a dw 5h
b dw 3h
c dw 2h
y dw 0h
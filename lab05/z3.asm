org 100h

mov AL, [a]
mov DL, 2h
mul DL
mov [y], AX

mov AL, [b]
mul DL

add AX, [y]
mov [y], AX

mov AL, [c]
mul DL

mov DX, AX
mov AX, [y]

sub AX, DX
mov [y], AX

mov AH, 00h
int 21h

a dw 5h
b dw 4h
c dw 2h
y dw 0h
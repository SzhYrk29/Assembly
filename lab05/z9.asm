org 100h

mov AX, [a]		; 2
mov DL, [c]		; 2
div DL			; AL = 1
mov [y], AL		; y = 1

mov AX, [b]		; 2
add AX, [y]		; AX = 2 + 1 = 3
mov [y], AX		; y = 3

mov AL, [y]		; 3
mov DL, [a]		; 2
mul DL			; AX = 6
mov [y], AX		; y = 6

mov AH, 00h
int 21h

a dw 2h
b dw 2h
c dw 2h
y dw 0h
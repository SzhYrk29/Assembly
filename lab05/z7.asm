org 100h

mov AL, [a]		; 2
mov DL, [a]		; 2
mul DL 			; 4
mov [y], AX		; y = 4

mov AL, 2h		; 2
mov DL, [b]		; 3
mul DL			; AX = 6

add AX, [y]		; A (10)
mov [y], AX		; y = A

mov AX, [c]		; 5
add AX, [y]		; 5 + 10 = F (15)
mov [y], AX		; y = F

mov AH, 00h
int 21h

a dw 2h
b dw 3h
c dw 5h
y dw 0h
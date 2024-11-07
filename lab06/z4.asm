; infix			a / ( b + c )
; postfix		a b c + /

org 100h

push word [a]
push word [b]
push word [c]

pop AX
pop BX
add AX, BX		; 5+2=7
push AX
pop DX			; DX=7
pop AX			; AX=14
div DL			; 14/7=2
push AX

mov AH, 00h
int 21h

a dw 0Eh
b dw 5h
c dw 2h
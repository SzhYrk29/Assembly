; infix			( a * a ) + ( 2 * b ) + c 
; postfix		a a * 2 b * + c +

org 100h

push word [a]
push word [a]
pop AX		; AX=2
pop DX		; DX=2
mul DL		; 2*2=4
push AX
push word 2h
push word [b]
pop AX		; AX=2
pop DX		; DX=2
mul DL		; 2*2=4
push AX
pop AX		; AX=4
pop BX		; BX=4
add AX, BX	; 4+4=8
push AX
push word [c]
pop AX		; AX=7
pop BX		; BX=8
add AX, BX	; 7+8=F(15)
push AX

mov AH, 00h
int 21h

a dw 2h
b dw 2h
c dw 7h
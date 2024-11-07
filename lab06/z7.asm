; infix			( ( 2 * a ) * b ) + ( 2 * c )
; postfix		2 a * b * 2 c * +

org 100h

push word 2h
push word [a]
pop AX		; AX=2
pop DX		; DX=2
mul DL		; 2*2=4
push AX
push word [b]
pop AX		; AX=3
pop DX		; DX=4
mul DL		; 3*4=C(12)
push AX
push word 2h
push word [c]
pop AX		; AX=4
pop DX		; DX=2
mul DL		; 4*2=8
push AX
pop AX		; AX=8
pop BX		; BX=(C)12
add AX, BX	; 8+12=20
push AX


mov AH, 00h
int 21h

a dw 2h
b dw 3h
c dw 4h
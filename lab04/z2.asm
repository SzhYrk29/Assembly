org 100h

mov AH, 01h
mov AL, input
int 21h

cmp AL, 5Fh

JE equals
JG greater
JL less



equals:
mov AH, 02h
mov DL, 0AH
int 21h
mov DL, 0Dh
int 21h
mov DL, '='
int 21h
jmp end_program



greater:
cmp AL, 61h
jl greater_msg

cmp AL, 7Ah
jg greater_msg

small_letter:
mov AH, 02h
mov DL, 0AH
int 21h
mov DL, 0Dh
int 21h
mov AH, 09h
mov DX, msg1
int 21h
jmp greater_sign

greater_msg:
mov AH, 02h
mov DL, 0AH
int 21h
mov DL, 0Dh
int 21h
mov AH, 09h
mov DX, error_msg
int 21h
jmp end_program



less:
cmp AL, 41h
jl less_msg

cmp AL, 5Ah
jg less_msg

big_letter:
mov AH, 02h
mov DL, 0AH
int 21h
mov DL, 0Dh
int 21h
mov AH, 09h
mov DX, msg2
int 21h
jmp less_sign

less_msg:
mov AH, 02h
mov DL, 0AH
int 21h
mov DL, 0Dh
int 21h
mov AH, 09h
mov DX, error_msg
int 21h
jmp end_program

less_sign:
mov AH, 02h
mov DL, 0AH
int 21h
mov DL, 0Dh
int 21h
mov DL, '<'
int 21h
jmp end_program

greater_sign:
mov AH, 02h
mov DL, 0AH
int 21h
mov DL, 0Dh
int 21h
mov DL, '>'
int 21h
jmp end_program


end_program:
mov AH, 00h
int 21h

input db 2
msg1 db 'small letter$'
msg2 db 'big letter$'
error_msg db 'error$'
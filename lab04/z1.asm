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
mov DL, '='
int 21h
jmp end

greater:
mov AH, 02h
mov DL, '>'
int 21h
jmp end

less:
mov AH, 02h
mov DL, '<'
int 21h
jmp end

end:
mov AH, 00h
int 21h

input db 2
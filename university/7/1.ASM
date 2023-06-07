use16
org 100h
    mov si,0
    mov bx,array
    mov cx,10

get_mass:
    mov ah,1
    int 21h
    sub al,30h
    mov [bx+si],al
    mov dl, ' '
    mov ah,2
    int 21h


    add si,1
    loop get_mass



    mov ah,09h
    mov dx, \n
    int 21h

    mov si,0
    mov bx,array
    mov cx,10

mov dh, [Bx+Si]
print_mass:
    mov dl, [bx+si]

    mov al, dl
    mov ah, 0
    div [num]

    cmp ah, 0
    jnz odd
    ; cmp dh, dl
    ; jg get_min
    backarray:

    add dl, 30h
    mov ah, 2
    int 21h
    mov dl,' '
    int 21h




    add si, 1
    loop print_mass

    mov ch, dh

    mov ah,09h
    mov dx, \n
    int 21h

    mov dx,minvalue
    int 21h

    mov dl, ch
    add dl, 30h
    mov ah, 02h
    int 21h

    mov ah,1
    int 21h

mov ax,4C00h
int 21h

odd:
    ; mov dh, [Bx+Si]
    cmp dh, dl
    jg get_min
    jmp backarray

get_min:
    mov dh, [Bx+Si]
    jmp backarray

num db 2
array db ?, ?, ?, ?, ?, ?, ?, ?, ?, ?
minvalue db 'minvalue $'
\n db 13,10, '$'
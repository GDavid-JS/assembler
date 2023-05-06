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
    mov cx,10

    mov dh, [Bx+Si]
print_mass:
    mov dl, [bx+si]

    cmp dh, dl
    jl get_max
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
    mov dx,indextext
    int 21h

    mov dx, [i]
    add dx, 30h
    mov ah, 02h
    int 21h


    mov ah,09h
    mov dx, \n
    int 21h
    mov dx,maxtext
    int 21h

    mov dl, ch
    add dl, 30h
    mov ah, 02h
    int 21h

    mov Ah,1
    int 21h

mov ax,4C00h
int 21h



get_max:
    mov dh, [Bx+Si]
    mov [i], Si
    jmp backarray


array db ?, ?, ?, ?, ?, ?, ?, ?, ?, ?
maxtext db 'maxvalue $'
indextext db 'index $'
i dw ?
max db ?
\n db 13,10, '$'
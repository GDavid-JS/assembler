use16
org 100h
    mov si,0
    mov bx,array
    mov cx,10

    
get_array:
    mov ah,1
    int 21h
    sub al,30h
    mov [bx+si],al
    mov dl, ' '
    mov ah,2
    int 21h

    add si,1
    loop get_array

    mov si,0
    mov bx,array
    mov cx,10

    mov dh, [bx+si]
array_loop:
    mov dl, [bx+si]
    cmp dh, dl
    jg get_min
    backarray:

    add si, 1
    loop array_loop


    mov dl, dh
    add dl, 30h
    mov ah, 02h
    int 21h
    
    mov ah,09h
    mov dx, \n
    int 21h

    mov si,0
    mov cx,10

mov ah,1
int 21h
mov ax,4C00h
int 21h

get_min:
    mov dh, [bx+si]
    jmp backarray


array db ?, ?, ?, ?, ?, ?, ?, ?, ?, ?
minvalue db ?
\n db 13,10, '$'
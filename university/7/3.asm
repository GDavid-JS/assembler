use16
org 100h
    mov si,0
    mov bx,array1
    mov cx,10

    
get_array1:
    mov ah,1
    int 21h
    sub al,30h
    mov [bx+si],al
    mov dl, ' '
    mov ah,2
    int 21h

    add si,1
    loop get_array1

    mov si,0
    mov bx,array1
    mov cx,10

    mov dh, [bx+si]
array1_loop:
    mov dl, [bx+si]
    cmp dh, dl
    jl get_max
    backarray1:

    add si, 1
    loop array1_loop


    mov dl, dh
    add dl, 30h
    mov ah, 02h
    int 21h

    mov ah,09h
    mov dx, \n
    int 21h


    mov si,0
    mov bx,array2
    mov cx,10
get_array2:
    mov ah,1
    int 21h
    sub al,30h
    mov [bx+si],al
    mov dl, ' '
    mov ah,2
    int 21h

    add si,1
    loop get_array2

    mov si,0
    mov bx,array2
    mov cx,10

    mov dh, [bx+si]
array2_loop:
    mov dl, [bx+si]
    cmp dh, dl
    jg get_min
    backarray2:

    add si, 1
    loop array2_loop


    mov dl, dh
    add dl, 30h
    mov ah, 02h
    int 21h
    
    mov ah,09h
    mov dx, \n
    int 21h

    mov si,0
    mov cx,10
array_sum:
    mov bx,array1
    mov dx, [bx+si]
    mov bx,array2
    add dx, [bx+si]

    mov ah, 02h
    add dx, 30h
    int 21h

    

    mov dl,' '
    int 21h

    add si, 1
    loop array_sum


mov ah,1
int 21h
mov ax,4C00h
int 21h

get_max:
    mov dh, [bx+si]
    jmp backarray1

get_min:
    mov dh, [bx+si]
    jmp backarray2


array1 db ?, ?, ?, ?, ?, ?, ?, ?, ?, ?
array2 db ?, ?, ?, ?, ?, ?, ?, ?, ?, ?
maxvalue db ?
minvalue db ?
\n db 13,10, '$'
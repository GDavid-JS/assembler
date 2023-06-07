use16
org 100h
    mov si,0
    mov bx,array1
    mov cx,10

    
get_mass1:
    cmp si, 0
    je set_first_element_mass1
    cmp si, 0
    jl continue1

    set_first_element_mass1:
        mov dh, [bx+si]
    continue1:

    mov ah,1
    int 21h
    sub al,30h
    mov [bx+si],al
    mov dl, ' '

    cmp dh, al
    jl get_max
    backarray1:
    

    mov ah,2
    int 21h

get_max:
    mov dh, [bx+si]
    jmp backarray1
    

    add si,1
    loop get_mass1


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

get_mass2:
    mov ah,1
    int 21h
    sub al,30h
    mov [bx+si],al
    mov dl, ' '

    cmp si, 0
    je set_first_element_mass2
    cmp si, 0
    jl continue2

    set_first_element_mass2:
        mov dh, [bx+si]
    continue2:

    cmp dh, al
    jg get_min
    backarray

    mov ah,2
    int 21h


    add si,1
    loop get_mass2

get_min:
    mov dh, [bx+si]
    jmp backarray1



    mov dl, dh
    add dl, 30h
    mov ah, 02h
    int 21h


mov ah,1
int 21h
mov ax,4C00h
int 21h





array1 db ?, ?, ?, ?, ?, ?, ?, ?, ?, ?
array2 db ?, ?, ?, ?, ?, ?, ?, ?, ?, ?
maxvalue db ?
minvalue db ?
\n db 13,10, '$'
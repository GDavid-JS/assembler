use16
org 100h
    mov si,0
    mov bx,array
    mov cx,20

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
    mov cx,20


    mov ax, 0





array_loop:
    mov dl, [bx+si]
    test dl, 1
    jz sum

    backarray:


    add si, 1
    loop array_loop

mov ah,9
mov dx, [result]
add dx, 30h
int 21h

mov ah,1
int 21h
mov ax,4C00h
int 21h


sum:
    mov ax, [result]
    add ax, [bx+si]
    mov [result], ax
    jmp backarray


array dw ?
\n db 13,10, '$'
result dw 0
use16
org 100h
    mov dx, hello
    mov ah,9
    int 21h

    mov al,[a]
    mov ah,[b]
    add ah,[d]
    sub al,ah
    mov cl,[c]
    sub cl,5
    sub al,cl
    mov [e],al

    mov ax,4C00h
    int 21h
a db 2
b db 3
c db 5
d db -8
e db ?
hello db 'Grigoryan David$'
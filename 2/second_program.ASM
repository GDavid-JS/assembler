use16
org 100h
    mov al,[x]
    mov bh,[y]
    sub al,bh
    add al, 1

    mov [Z],al

    mov al,[x]
    mov ch,[y]
    mul ch
    mov al,[x]
    mov bh,[y]
    add al,bh
    div ch


    mov ax,4C00h
    int 21h
x db 2
y db 3
Z db ?
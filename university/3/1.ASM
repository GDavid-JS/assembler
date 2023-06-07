use16
org 100h
    movsx ax,[x]
    imul [y]
    movsx ax,[x]
    mov bx,[y]
    add ax,bx
    idiv cx
    mov ax, cx
    cwd
    mov word[z],cx
    mov word[z],dx

    mov cx, 15
    mov bx, 0
    mov ax, 0
sum:
    add bx, 1
    add ax, bx
    loop sum

    mov ax,4C00h
    int 21h
x db -20
y dw -3000
z dd ?
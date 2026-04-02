global main
extern printf

section .data
    msg db "wassap, World!", 0

section .text
main:
    sub rsp, 28h
    mov rcx, msg
    call printf
    add rsp, 28h
    ret
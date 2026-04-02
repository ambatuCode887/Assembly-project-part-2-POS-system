extern GetStdHandle, WriteConsoleA, ReadConsoleA, ExitProcess

section .data


section .bss


section .text
    global main

    ; --- Exit ---
    add rsp, 40                 ; Clean up shadow space before exiting
    xor rcx, rcx
    call ExitProcess
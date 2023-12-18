global _start

section .data
    msg db "hello world!", 0x0a  ; Define a null-terminated string "hello world!\n"
    len equ $ - msg               ; Calculate the length of the string

section .text
_start:
    mov eax, 4       ; System call number for sys_write
    mov ebx, 1       ; File descriptor (stdout)
    mov ecx, msg     ; Pointer to the message "hello world!"
    mov edx, len     ; Length of the message
    int 0x80         ; Call kernel for sys_write

    mov eax, 1       ; System call number for sys_exit
    mov ebx, 0       ; Exit code 0
    int 0x80         ; Call kernel for sys_exit

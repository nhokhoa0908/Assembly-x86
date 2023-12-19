global _start

section .text
_start:
    mov ebx, 1      ; Initialize ebx with the value 1
    mov ecx, 4      ; Set ecx to 4, representing the number of iterations

loop:
    add ebx, ebx    ; ebx += ebx
    dec ecx         ; ecx -= 1 (Decrement ecx (decrease the loop counter))
    cmp ecx, 0      ; Compare ecx with 0
    jg loop         ; Jump to 'loop' label if ecx is greater than 0

    mov eax, 1      ; System call number for sys_write
    int 0x80        ; Invoke syscall via interrupt 0x80

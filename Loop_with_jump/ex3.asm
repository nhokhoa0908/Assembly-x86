global _start

section .text
_start:
    mov ecx, 101    ; Move the value 101 into the ecx register
    mov ebx, 666    ; Move the value 666 into the ebx register
    mov eax, 1      ; Move the value 1 into the eax register (syscall number for sys_write)
    cmp ecx, 100    ; Compare the value in ecx with 100
    jl skip         ; Jump to the 'skip' label if ecx is less than 100
    mov ebx, 13     ; If ecx is not less than 100, move the value 13 into ebx
skip:
    int 0x80        ; Invoke syscall via interrupt 0x80


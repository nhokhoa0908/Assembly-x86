global _start
_start:
    mov eax, 1   ; system call number for sys_exit
    mov ebx, 43  ; exit code (43 - 40 = 3)
    sub ebx, 40  ; subtract 40 from ebx
    int 0x80     ; call kernel

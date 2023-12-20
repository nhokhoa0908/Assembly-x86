global _start

_start:
    call func        ; Call the function 'func'
    mov eax, 1       ; syscall number for sys_exit
    int 0x80         ; invoke syscall

func:
    mov ebx, 42      ; Set ebx to 42
    ret              ; Return from the function

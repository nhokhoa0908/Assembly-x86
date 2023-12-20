global _start

_start:
    call func       ; Call the function 'func'
    mov eax, 1      ; syscall number for sys_exit
    mov ebx, 0      ; exit code 0
    int 0x80        ; invoke syscall

func:
    push ebp        ; Save the old base pointer (ebp) on the stack
    mov ebp, esp    ; Set the new base pointer to the current stack pointer
    sub esp, 2      ; Allocate space for a 2-byte string on the stack
    mov [esp], byte 'H' ; Store 'H' in the first byte of the allocated space
    mov [esp+1], byte 'i' ; Store 'i' in the second byte
    mov eax, 4      ; syscall number for sys_write
    mov ebx, 1      ; file descriptor for standard output (stdout)
    mov ecx, esp    ; pointer to the string stored in the allocated space
    mov edx, 2      ; length of the string
    int 0x80        ; invoke syscall
    mov esp, ebp    ; Restore the stack pointer to the base pointer's value
    pop ebp         ; Restore the base pointer from the stack
    ret             ; Return from the function

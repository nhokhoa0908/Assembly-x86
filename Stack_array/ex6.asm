global _start
_start:
    sub esp, 4          ; Adjust the stack pointer to allocate space for a 4-byte string
    mov [esp], byte 'H' ; Store 'H' in the first byte of the allocated space
    mov [esp+1], byte 'e' ; Store 'e' in the second byte
    mov [esp+2], byte 'y' ; Store 'y' in the third byte
    mov [esp+3], byte '!' ; Store '!' in the fourth byte

    ; sys_write syscall to print the string
    mov eax, 4          ; syscall number for sys_write
    mov ebx, 1          ; file descriptor for standard output (stdout)
    mov ecx, esp        ; pointer to the string stored in the allocated space
    mov edx, 4          ; length of the string
    int 0x80            ; interrupt to invoke syscall

    ; sys_exit syscall to terminate the program
    mov eax, 1          ; syscall number for sys_exit
    mov ebx, 0          ; exit code 0
    int 0x80            ; interrupt to invoke syscall

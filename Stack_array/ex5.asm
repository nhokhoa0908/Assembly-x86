global _start

section .data
    addr db "yellow" ; db (data byte)

section .text
_start:
    ; sys_write syscall to print the string
    mov [addr], byte 'H'
    mov [addr+5], byte '!'
    mov eax, 4      ; syscall number for sys_write
    mov ebx, 1      ; file descriptor for standard output (stdout)
    mov ecx, addr   ; pointer to the string "yellow"
    mov edx, 6      ; length of the string
    int 0x80        ; interrupt to invoke syscall

    ; sys_exit syscall to terminate the program
    mov eax, 1      ; syscall number for sys_exit
    mov ebx, 0      ; exit code 0
    int 0x80        ; interrupt to invoke syscall

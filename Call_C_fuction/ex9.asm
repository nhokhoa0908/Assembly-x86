global _start
section .text

_start:
    push 21          ; Push the value 21 onto the stack
    call times2      ; Call the times2 function
    mov ebx, eax     ; Move the result (doubled value) to ebx
    mov eax, 1       ; Set eax to 1 (syscall number for sys_exit)
    int 0x80         ; Invoke sys_exit syscall

times2:
    push ebp         ; Save the old base pointer (ebp) on the stack
    mov ebp, esp     ; Set the new base pointer to the current stack pointer
    mov eax, [ebp+8] ; Move the argument (21) from the stack to eax
    add eax, eax     ; Double the value in eax
    mov esp, ebp     ; Restore the stack pointer to the base pointer's value
    pop ebp          ; Restore the base pointer from the stack
    ret              ; Return from the function

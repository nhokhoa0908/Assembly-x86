global _start
extern printf
section .data
    msg db "Testing %i...", 0x0a, 0x00


_start:
    push ebp            ; Save the old base pointer (ebp) on the stack
    mov ebp, esp        ; Set the new base pointer to the current stack pointer

    push 123            ; Push the integer argument (123) onto the stack
    push msg            ; Push the format string onto the stack
    call printf         ; Call the printf function

    mov eax, 0          ; Set eax to 0 (return value)
    mov esp, ebp        ; Restore the stack pointer to the base pointer's value
    pop ebp             ; Restore the base pointer from the stack
    ret                 ; Return from the function

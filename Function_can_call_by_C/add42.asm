global add42

add42:
    push ebp          ; Save the old base pointer (ebp) on the stack
    mov ebp, esp      ; Set the new base pointer to the current stack pointer
    mov eax, [ebp+8]  ; Move the argument (parameter) from the stack to eax
    add eax, 42       ; Add 42 to the value in eax
    mov esp, ebp      ; Restore the stack pointer to the base pointer's value
    pop ebp           ; Restore the base pointer from the stack
    ret               ; Return from the function

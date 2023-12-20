`pop eax`          ; Pop the return address (address after the call) into eax
`jmp eax`          ; Jump to the address stored in eax (indirect jump)

With `ret`, the function will pop the return address from the stack and transfer control back to the caller. Using `ret` is more conventional and readable for simple function returns. The `pop eax` and `jmp eax` sequence is essentially performing the same task as `ret`.

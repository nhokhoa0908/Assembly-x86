1. `add42.asm` assemble code

```
nasm -f elf32 add42.asm -o add42.o
```

2. `main.c` link to `add42.o`

```
gcc -m32 add42.o main.c -o ex11
./ex11
```

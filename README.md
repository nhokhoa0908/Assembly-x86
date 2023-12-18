# NASM Assembly-x86
NASM (Netwide Assembler) x86 Assembly Language Examples

1. Install nasm
```
supo apt install nasm
```

2. Create file .asm
```
nano ex1.asm
```

3. Assemble an x86 assembly source file
```
nasm -f elf32 ex1.asm -o ex1.o
```

`nasm`: This is the NASM assembler command.

`-f elf32`: This option specifies the output file format. In this case, it is set to "elf32," which stands for Executable and Linkable Format (ELF) for 32-bit architectures.

`ex1.asm`: This is the input assembly source file. The file "ex1.asm" contains x86 assembly code that you want to assemble.

`-o ex1.o`: This option specifies the output file name. The assembled output will be written to a file named "ex1.o," which is the default extension for object files.

4. Link an object file into an executable for a 32-bit ELF (Executable and Linkable Format) system
```
ld -m elf_i386 ex1.o -o ex1
```

`ld`: This is the linker command.

`-m elf_i386`: This option specifies the target architecture, indicating that the output should be in 32-bit ELF format for the Intel x86 architecture.

`ex1.o`: This is the input object file that contains the machine code generated by the assembler (in this case, by NASM).

`-o ex1`: This option specifies the output file name. The linked executable will be named "ex1."

5. Running it
```
./ex1
```

6. Inpesting the exit status
```
echo $?
```
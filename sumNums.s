.globl sumNums
sumNums:
push %rbp
mov %rsp, %rbp 

mov %rdi, %r9 
mov $0, %r8
mov $1, %rcx

Loop:
cmp %r9, %rcx
jg Done
add %rcx, %r8
inc %rcx
mov %r8, %rax
jmp Loop

Done:
pop %rbp
ret

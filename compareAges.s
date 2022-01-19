.globl compareAges
compareAges:
push %rbp
mov %rsp, %rbp 

mov $1, %rax #n= input
Loop:
mov 4(%rdi), %rdx #int num1=input
mov 4(%rsi), %rcx #int num2=input


cmp %rdx, %rcx #compare the values
je Done #jump to done if equal
mov $0, %rax #If not equal, set return to 0

Done:
pop %rbp
ret

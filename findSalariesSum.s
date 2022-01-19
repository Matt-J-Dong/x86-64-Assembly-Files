.globl findSalariesSum
findSalariesSum:
push %rbp
mov %rsp, %rbp 

mov $0, %rax #initalize final value
mov 8(%rdi), %r9 #set r9 to point to the salary

mov %rsi, %rcx #size of array (n)
mov %r9, %rax #add in first salary number

mov $1, %rdx #initalize i
mov $12, %r8 #offset

Loop:
cmp %rcx, %rdx #compare i to n
jge Done #jump if greater

mov 8(%rdi,%r8,1),%r9 #get the next salary value
add %r9, %rax #add to sum
inc %rdx #increment i 
add $12, %r8 #increment array offset
jmp Loop #jump

Done:
pop %rbp
ret

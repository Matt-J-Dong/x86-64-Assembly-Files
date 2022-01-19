.globl findPaymentsSum
findPaymentsSum:
push %rbp
mov %rsp, %rbp 

mov $0, %rax #initalize final value
mov %rsi, %r9 #int numberOfPayments=n
mov 8(%rdi), %rdx #start by moving 8 bytes
mov %rdx, %rax #first payment in
mov $1, %rcx #i variable
mov $2, %r10 #array offset
add %rcx, %r10 #array offset

Loop:
cmp %r9, %rcx #compare i to n
jge Done #jump if greater
mov (%rdi,%r10,4),%rdx #get the next payment value
add %rdx, %rax #add to sum
inc %rcx #increment i 
inc %r10 #increment array offset
jmp Loop #jump

Done:
pop %rbp
ret

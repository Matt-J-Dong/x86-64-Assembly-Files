.globl sumOfPowers
sumOfPowers:
push %rbp
mov %rsp, %rbp 

mov %rdi, %r9 #n=input number n 
mov $0, %r8 #int sum=0
mov $1, %rcx #int i=1

Loop:
cmp %r9, %rcx #compare i to n
jg Done #jump if i is greater than n
mov %rcx, %rdx #int square=i
imul %rcx, %rdx #square=square*i, make square i^2
add %rdx, %r8 #sum+=square
inc %rcx  #inc=i++
mov %r8, %rax #move sum into return value
jmp Loop #repeat the for loop

Done:
pop %rbp
ret

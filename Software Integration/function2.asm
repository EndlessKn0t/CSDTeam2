	.section .text
	.globl _start

_start:
add:
mov r1, #0
str r1, [r6, #0]
add r6, r6, #4

mov r1, r8
ldr r2, [r1, #0]
str r2, [r6, #0]
add r6, r6, #4

mov r1, r8
ldr r2, [r1, #4]
str r2, [r6, #0]
add r6, r6, #4

sub r6, r6, #4
ldr r1, [r6, #0]
sub r6, r6, #4
ldr r2, [r6, #0]
add r3, r1, r2
str r3, [r6, #0]
add r6, r6, #4

mov r1, r7
sub r6, r6, #4
ldr r2, [r6, #0]
str r2, [r1, #0]

mov r1, r7
ldr r2, [r1, #0]
str r2, [r6, #0]
add r6, r6, #4

mov r1, r7
mov r2, r1
sub r6, r6, #4
ldr r4, [r6, #0]
str r4, [r8, #0]
mov r6, r8
add r6, r6, #4
sub r2, r2, #4
ldr r4, [r2, #0]
mov r11, r4
sub r2, r2, #4
ldr r4, [r2, #0]
mov r10, r4
sub r2, r2, #4
ldr r4, [r2, #0]
mov r9, r4
sub r2, r2, #4
ldr r4, [r2, #0]
mov r8, r4
sub r2, r2, #4
ldr r4, [r2, #0]
mov r7, r4
bx lr

main:
mov r1, #0
str r1, [r6, #0]
add r6, r6, #4
str r1, [r6, #0]
add r6, r6, #4
str r1, [r6, #0]
add r6, r6, #4
str r1, [r6, #0]
add r6, r6, #4

mov r1, #8
str r1, [r6, #0]
add r6, r6, #4

mov r1, r7
sub r6, r6, #4
ldr r2, [r6, #0]
str r2, [r1, #0]

mov r1, r7
ldr r2, [r1, #0]
str r2, [r6, #0]
add r6, r6, #4

mov r1, #99
str r1, [r6, #0]
add r6, r6, #4

mov r1, r7
sub r6, r6, #4
ldr r2, [r6, #0]
str r2, [r1, #4]

mov r1, r7
ldr r2, [r1, #4]
str r2, [r6, #0]
add r6, r6, #4

mov r1, r7
str r1, [r6, #0]
add r6, r6, #4
mov r1, r8
str r1, [r6, #0]
add r6, r6, #4
mov r1, r9
str r1, [r6, #0]
add r6, r6, #4
mov r1, r10
str r1, [r6, #0]
add r6, r6, #4
mov r1, r11
str r1, [r6, #0]
add r6, r6, #4
mov r1, r6
sub r1, r1, #2
sub r1, r1, #20
mov r8, r1
mov r7, r6
bl add

mov r1, r7
sub r6, r6, #4
ldr r2, [r6, #0]
str r2, [r1, #8]

mov r1, r7
ldr r2, [r1, #8]
str r2, [r6, #0]
add r6, r6, #4

mov r1, r7
sub r6, r6, #4
ldr r2, [r6, #0]
str r2, [r1, #12]

mov r1, #0
str r1, [r6, #0]
add r6, r6, #4

mov r1, r7
sub r6, r6, #4
ldr r2, [r6, #0]
str r2, [r1, #8]

mov r1, r7
ldr r2, [r1, #8]
str r2, [r6, #0]
add r6, r6, #4

mov r1, r7
mov r2, r1
sub r6, r6, #4
ldr r4, [r6, #0]
str r4, [r8, #0]
mov r6, r8
add r6, r6, #4
sub r2, r2, #4
ldr r4, [r2, #0]
mov r11, r4
sub r2, r2, #4
ldr r4, [r2, #0]
mov r10, r4
sub r2, r2, #4
ldr r4, [r2, #0]
mov r9, r4
sub r2, r2, #4
ldr r4, [r2, #0]
mov r8, r4
sub r2, r2, #4
ldr r4, [r2, #0]
mov r7, r4
bx lr

mov r1, #0x18
mov r2, #0
svc 0
	.section .data
	.section .bss
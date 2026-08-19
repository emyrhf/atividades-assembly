# Exercício 9

.data
 escrevan1: .asciiz "Digite o valor de n1: "
 escrevan2: .asciiz "Digite o valro de n2: "
 escrevan3: .asciiz "A divisão de n1 por n2 é: "
.text
main:
 li $v0, 4
 la $a0, escrevan1
 syscall

 li $v0, 5
 syscall
 add $t0, $v0, 0

volta:
 li $v0, 4
 la $a0, escrevan2
 syscall

 li $v0, 5
 syscall
 add $t1, $v0, 0
 beq $t1, 0, volta
 
 div $t2, $t0, $t1
 li $v0, 4
 la $a0, escrevan3
 syscall
 li $v0, 1
 add $a0, $t2, 0 
 syscall

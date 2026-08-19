# Exercício 2 

.data
 escrevan1: .asciiz "Digite um valor: "
 escrevan2: .asciiz "Digite outro valor: "
 escrevan3: .asciiz "\nO 1° valor agora é: "
 escrevan4: .asciiz "\nO 2° valor agora é: "
.text

main:
 li $v0, 4
 la $a0, escrevan1
 syscall
 li $v0, 5
 syscall
 add $t0, $v0, 0
 
 li $v0, 4
 la $a0, escrevan2
 syscall
 li $v0, 5
 syscall
 add $t1, $v0, 0
 
 add $t0, $t0, $t1
 sub $t1, $t0, $t1
 sub $t0, $t0, $t1
 
 li $v0, 4
 la $a0, escrevan3
 syscall
 li $v0, 1
 add $a0, $t0, 0
 syscall
 
 li $v0, 4
 la $a0, escrevan4
 syscall
 li $v0, 1
 add $a0, $t1, 0
 syscall

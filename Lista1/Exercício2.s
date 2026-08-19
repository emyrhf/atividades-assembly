# Exercício 2

.data
 escrevan1: .asciiz"Digite o n° de vendas de camisetas pequenas: "
 escrevan2: .asciiz"Digite o n° de vendas de camisetas médias: "
 escrevan3: .asciiz"Digite o n° de vendas de camisetas grandes: "
 escrevan4: .asciiz"O valor arrecadado é de: R$ "
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

 li $v0, 4
 la $a0, escrevan3
 syscall

 li $v0, 5
 syscall
 add $t2, $v0, 0

 li $t3, 10
 li $t4, 12
 li $t5, 15

 mul $t0, $t0, $t3 
 mul $t1, $t1, $t4
 mul $t2, $t2, $t5 
 
 add $t6, $t0, $t1 
 add $t6, $t6, $t2 

 li $v0, 4
 la $a0, escrevan4
 syscall
 li $v0, 1
 add $a0, $t6, 0 
 syscall

#Exercício 6

.data
 escrevan1: .asciiz "Digite um valor: "
 escrevan2: .asciiz "Digite outro valor: "
 escrevan3: .asciiz "Os números são iguais, então a soma deles é: "
 escrevan4: .asciiz "Os números são diferentes, então a multiplicação deles é: "
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
 
 beq $t0, $t1, iguais
 bne $t0, $t1, diferentes
 
iguais:
 add $t2, $t0, $t1
 li $v0, 4
 la $a0, escrevan3
 syscall
 li $v0, 1
 add $a0, $t2, 0 
 syscall
 j, fim                     
 
diferentes:
 mul $t3, $t0, $t1
 li $v0, 4
 la $a0, escrevan4
 syscall
 li $v0, 1
 add $a0, $t3, 0 
 syscall

fim:
 li $v0, 10 
 syscall

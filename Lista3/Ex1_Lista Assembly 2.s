# Exercício 1

.data
 escrevan1: .asciiz "Digite o valor inteiro em reais: "
 escrevan2: .asciiz "O equivalente em dólar é: "
.text

main:
 li $v0, 4
 la $a0, escrevan1
 syscall
 li $v0, 5
 syscall
 add $t0, $v0, 0
 
 div $t1, $t0, 5
 
 li $v0, 4
 la $a0, escrevan2
 syscall
 li $v0, 1
 add $a0, $t1, 0
 syscall
 

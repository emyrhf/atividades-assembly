# Exercício 12

.data
 escrevan1: .asciiz "Digite a altura em cm: "
 escrevan2: .asciiz "A menor altura é: "
 escrevan3: .asciiz " e a maior altura é: "
.text

main:
 li $t0, 0          
 li $t1, 15         
 li $t2, 0          
 li $t3, 0         
 li $t4, 0         

inicio_loop:
 beq $t0, $t1, fim  

 li $v0, 4
 la $a0, escrevan1
 syscall

 li $v0, 5
 syscall
 add $t4, $v0, $zero  
 
 beq $t0, 0, primeira_leitura

verifica_maior:
 bgt $t4, $t3, atualiza_maior

verifica_menor:
 blt $t4, $t2, atualiza_menor

prox:
 addi $t0, $t0, 1    
 j inicio_loop

primeira_leitura:
 add $t2, $t4, $zero  
 add $t3, $t4, $zero  
 j prox

atualiza_maior:
 add $t3, $t4, $zero
 j verifica_menor

atualiza_menor:
 add $t2, $t4, $zero
 j prox

fim:
 li $v0, 4
 la $a0, escrevan2
 syscall
 li $v0, 1
 add $a0, $t2, $zero
 syscall

 li $v0, 4
 la $a0, escrevan3
 syscall
 li $v0, 1
 add $a0, $t3, $zero
 syscall

 li $v0, 10
 syscall

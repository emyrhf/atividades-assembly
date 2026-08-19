# Exercício 1

.data
 escrevan1: .asciiz"Insira o valor da largura do terreno: "
 escrevan2: .asciiz"Insira o valor do comprimento do terreno: "
 escrevan3: .asciiz"A área total do terreno é igual a: "
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
 
 mul $t2, $t0, $t1                   
 
 li $v0, 4                          
 la $a0, escrevan3                   
 syscall                             
	
 li $v0, 1                           
 add $a0, $t2, 0
 syscall

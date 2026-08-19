# Exercício 11

.data
 escrevan1: .asciiz "Digite um número entre 0 e 100 (n° negativo sai do programa): "
 escrevan2: .asciiz "Quantidade de n° no intervalo [0/25]: "
 escrevan3: .asciiz ". Quantidade de n° no intervalo [26/50]: "
 escrevan4: .asciiz ". Quantidade de n° no intervalo [51/75]: "
 escrevan5: .asciiz ". Quantidade de n° no intervalo [76/100]: "
.text
main:

 li $t0, 0     
 li $t1, 0     
 li $t2, 0     
 li $t3, 0     

inicio_leitura:
 li $v0, 4
 la $a0, escrevan1
 syscall

 li $v0, 5
 syscall
 add $t4, $v0, 0  

 blt $t4, 0, fim

 bgt $t4, 100, inicio_leitura

 ble $t4, 25, faixa1
 ble $t4, 50, faixa2
 ble $t4, 75, faixa3
 j faixa4

faixa1:
 addi $t0, $t0, 1
 j inicio_leitura

faixa2:
 addi $t1, $t1, 1
 j inicio_leitura

faixa3:
 addi $t2, $t2, 1
 j inicio_leitura

faixa4:
 addi $t3, $t3, 1
 j inicio_leitura

fim:
 li $v0, 4
 la $a0, escrevan2
 syscall
 li $v0, 1
 add $a0, $t0, $zero
 syscall

 li $v0, 4
 la $a0, escrevan3
 syscall
 li $v0, 1
 add $a0, $t1, $zero
 syscall

 li $v0, 4
 la $a0, escrevan4
 syscall
 li $v0, 1
 add $a0, $t2, $zero
 syscall

 li $v0, 4
 la $a0, escrevan5
 syscall
 li $v0, 1
 add $a0, $t3, $zero
 syscall

 li $v0, 10
 syscall

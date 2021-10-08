algoritmo "Matrizes Questão 3"
// Função : Realizar somas de elementos de uma matriz 5x5.
// Autor : Brener Aurelio Moura Santana.
// Data : 19/09/2020
// Seção de Declarações
var
MATRIZ : vetor[1..5,1..5] de real
SOMAL4 , SOMAC2 , SOMADP , SOMADS , SOMATOTAL : real
L , C : inteiro
inicio
// Seção de Comandos
escreval("Forneça números para uma matriz 5x5:")
para L de 1 ate 5 faca
   para C de 1 ate 5 faca
      escreva("N° da posição ",L,",",C,": ")
      leia(MATRIZ[L,C])
   fimpara
fimpara
escreval(" ")
SOMAL4 <- (MATRIZ[4,1]+MATRIZ[4,2]+MATRIZ[4,3]+MATRIZ[4,4]+MATRIZ[4,5])
SOMAC2 <- (MATRIZ[1,2]+MATRIZ[2,2]+MATRIZ[3,2]+MATRIZ[4,2]+MATRIZ[5,2])
SOMADP <- (MATRIZ[1,1]+MATRIZ[2,2]+MATRIZ[3,3]+MATRIZ[4,4]+MATRIZ[5,5])
SOMADS <- (MATRIZ[1,5]+MATRIZ[2,4]+MATRIZ[3,3]+MATRIZ[4,2]+MATRIZ[5,1])
SOMATOTAL <- 0
para L de 1 ate 5 faca
   para C de 1 ate 5 faca
      SOMATOTAL <- SOMATOTAL+MATRIZ[L,C]
   fimpara
fimpara
escreval("Soma dos elementos da linha 4: ",SOMAL4)
escreval("Soma dos elementos da coluna 2: ",SOMAC2)
escreval("Soma dos elementos da diagonal principal: ",SOMADP)
escreval("Soma dos elementos da diagonal secundária: ",SOMADS)
escreval("Soma de todos os elementos da matriz: ",SOMATOTAL)
escreval(" ")
escreval("Matriz:")
para L de 1 ate 5 faca
   escreval("| ",MATRIZ[L,1]," ",MATRIZ[L,2]," ",MATRIZ[L,3]," ",MATRIZ[L,4]," ",MATRIZ[L,5]," |")
fimpara
fimalgoritmo

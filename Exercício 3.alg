algoritmo "Exercício 3"
// Função : 3. Escreva um algoritmo que leia uma matriz M(5,5) e calcula e mostre as seguintes somas:
// a. Da linha 4.
// b. Da coluna 2.
// c. Da diagonal principal.
// d. Da diagonal secundária.
// e. De todos os elementos da matriz.
// f. Mostre a matriz.
// Autor : Thiago Nunes da Costa.
// Data : 19/09/2020
// Seção de Declarações
var
M: vetor[1..5,1..5] de real
LINHA, COLUNA: inteiro
A, B, C, D, TOTAL: real

inicio
// Entrada de dados e definição de valores das variáveis
TOTAL <- 0
escreval("Digite 25 números para compor uma matriz 5x5:")
para LINHA de 1 ate 5 faca
   para COLUNA de 1 ate 5 faca
      escreva("LINHA:",LINHA,", COLUNA:",COLUNA," -> ")
      leia(M[LINHA,COLUNA])
   fimpara
fimpara

A <- (M[4,1]+M[4,2]+M[4,3]+M[4,4]+M[4,5])
B <- (M[1,2]+M[2,2]+M[3,2]+M[4,2]+M[5,2])
C <- (M[1,1]+M[2,2]+M[3,3]+M[4,4]+M[5,5])
D <- (M[1,5]+M[2,4]+M[3,3]+M[4,2]+M[5,1])

para LINHA de 1 ate 5 faca
   para COLUNA de 1 ate 5 faca
      TOTAL <- TOTAL+M[LINHA,COLUNA]
   fimpara
fimpara

// Cálculo
escreval("Valor da soma da linha 4: ",A)
escreval("Valor da soma da coluna 2: ",B)
escreval("Valor da soma da diagonal principal ",C)
escreval("Valor da soma da diagonal secundária: ",D)
escreval("Valot total de todos os elementos da matriz: ",TOTAL)

// Mostre a matriz
escreval("Mostre a matriz:")
para LINHA de 1 ate 5 faca
   escreval("| ",M[LINHA,1]," ",M[LINHA,2]," ",M[LINHA,3]," ",M[LINHA,4]," ",M[LINHA,5]," |")
fimpara
fimalgoritmo

algoritmo "Matrizes Questão 4"
// Função : Determinar o elemento mínimax da matriz.
// Autor : Brener Aurelio Moura Santana.
// Data : 19/09/2020
// Seção de Declarações
var
A : vetor[1..10,1..10] de real
L , C , LMINIMAX , CMINIMAX : inteiro
MAIOR , MINIMAX : real
inicio
// Seção de Comandos
MAIOR <- (-100000000)
MINIMAX <- 100000000
escreval("Forneça valores para a matriz A(10,10):")
para L de 1 ate 10 faca
   para C de 1 ate 10 faca
      escreva("N° da posição ",L,",",C,": ")
      leia(A[L,C])
      se A[L,C]>MAIOR entao
         MAIOR <- A[L,C]
         LMINIMAX <- L
      fimse
   fimpara
fimpara
para L de 1 ate 10 faca
   se L=LMINIMAX entao
      para C de 1 ate 10 faca
         se A[L,C]<MINIMAX entao
            MINIMAX <- A[L,C]
            CMINIMAX <- C
         fimse
      fimpara
   fimse
fimpara
escreval(" ")
escreval("Matriz A(10,10):")
para L de 1 ate 10 faca
   escreval("| ",A[L,1]," ",A[L,2]," ",A[L,3]," ",A[L,4]," ",A[L,5]," ",A[L,6]," ",A[L,7]," ",A[L,8]," ",A[L,9]," ",A[L,10]," |")
fimpara
escreval(" ")
escreval("O maior elemento da matriz é ",MAIOR," na linha ",LMINIMAX,".")
escreval("O elemento mínimax da matriz é ",MINIMAX," na posição ",LMINIMAX,",",CMINIMAX,".")
fimalgoritmo

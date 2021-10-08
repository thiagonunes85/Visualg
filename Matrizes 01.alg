algoritmo "Matrizes Questão 1"
// Função : Somar duas matrizes 4x4.
// Autor : Brener Aurelio Moura Santana.
// Data : 19/09/2020
// Seção de Declarações
var
M1 : vetor[1..4,1..4] de inteiro
M2 : vetor[1..4,1..4] de inteiro
MR : vetor[1..4,1..4] de inteiro
L , C : inteiro
inicio
// Seção de Comandos
escreval("SOMA DE MATRIZES 4X4")
escreval(" ")
escreval("Insira números inteiros para a primeira matriz:")
para L de 1 ate 4 faca
   para C de 1 ate 4 faca
      escreva("N° da posição ",L,",",C,": ")
      leia(M1[L,C])
   fimpara
fimpara
escreval(" ")
escreval("Insira números inteiros para a segunda matriz:")
para L de 1 ate 4 faca
   para C de 1 ate 4 faca
      escreva("N° da posição ",L,",",C,": ")
      leia(M2[L,C])
   fimpara
fimpara
para L de 1 ate 4 faca
   para C de 1 ate 4 faca
      MR[L,C] <- (M1[L,C])+(M2[L,C])
   fimpara
fimpara
escreval(" ")
escreval("Matriz 1:")
para L de 1 ate 4 faca
   escreval("| ",M1[L,1]," ",M1[L,2]," ",M1[L,3]," ",M1[L,4]," |")
fimpara
escreval(" ")
escreval("Matriz 2:")
para L de 1 ate 4 faca
   escreval("| ",M2[L,1]," ",M2[L,2]," ",M2[L,3]," ",M2[L,4]," |")
fimpara
escreval(" ")
escreval("Soma Matriz1+Matriz2:")
para L de 1 ate 4 faca
   escreval("| ",MR[L,1]," ",MR[L,2]," ",MR[L,3]," ",MR[L,4]," |")
fimpara
fimalgoritmo

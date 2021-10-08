algoritmo "Exercício 1"
// Função : 1. Elabore um algoritmo que peça ao usuário para informar 16 números inteiros, e os armazene em
// uma matriz 4×4. Em seguida, o algoritmo deve solicitar ao usuário que entre com mais 16 números
// inteiros, e os armazene em uma segunda matriz 4×4. O algoritmo, finalmente, deve realizar a soma
// das duas matrizes e mostrar as duas matrizes e o resultado da soma, na forma de uma tabela.
// (REVISAR CONTEÚDO DE MATRIZES DO 3° ANO)
// Autor : Thiago Nunes da Costa.
// Data : 19/09/2020
// Seção de Declarações
var
M1: vetor[1..4,1..4] de inteiro
M2: vetor[1..4,1..4] de inteiro
M3: vetor[1..4,1..4] de inteiro
LINHA, COLUNA: inteiro
inicio

// Entrada de Dados M1
escreval("Digite a quantidade de números para compor a primeira matriz:")
para LINHA de 1 ate 4 faca
   para COLUNA de 1 ate 4 faca
      escreva("LINHA:",LINHA,", COLUNA:",COLUNA," -> ")
      leia(M1[LINHA,COLUNA])
   fimpara
fimpara

// Entrada de Dados M2
escreval("Digite a quantidade de números para compor a segunda matriz:")
para LINHA de 1 ate 4 faca
   para COLUNA de 1 ate 4 faca
      escreva("LINHA:",LINHA,", COLUNA:",COLUNA," -> ")
      leia(M2[LINHA,COLUNA])
   fimpara
fimpara

// Soma
para LINHA de 1 ate 4 faca
   para COLUNA de 1 ate 4 faca
      M3[LINHA,COLUNA] <- (M1[LINHA,COLUNA])+(M2[LINHA,COLUNA])
   fimpara
fimpara

// Amostra dos dados
escreval("Matriz 1:")
para LINHA de 1 ate 4 faca
   escreval("| ",M1[LINHA,1]," ",M1[LINHA,2]," ",M1[LINHA,3]," ",M1[LINHA,4]," |")
fimpara

escreval("Matriz 2:")
para LINHA de 1 ate 4 faca
   escreval("| ",M2[LINHA,1]," ",M2[LINHA,2]," ",M2[LINHA,3]," ",M2[LINHA,4]," |")
fimpara

escreval("Matriz 3 (M1+M2):")
para LINHA de 1 ate 4 faca
   escreval("| ",M3[LINHA,1]," ",M3[LINHA,2]," ",M3[LINHA,3]," ",M3[LINHA,4]," |")
fimpara
fimalgoritmo

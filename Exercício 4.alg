algoritmo "Exercício 4"
// Função : 4. Na teoria de Sistemas, define-se elemento mínimax de uma matriz como sendo o menor
// elemento da linha em que se encontra o maior elemento da matriz. Escrever um algoritmo que leia
// uma matriz A(10,10) e determina o elemento mínimax desta matriz, escrevendo a matriz A e a
// posição do elemento mínimax.
// Autor : Thiago Nunes da Costa.
// Data : 20/09/2020
// Seção de Declarações
var
M: vetor[1..10,1..10] de real
LINHA, COLUNA, LINHAMINMAX, COLUNAMINMAX: inteiro
MAIOR, MINIMAX: real

inicio
// Entrada de dados e alocação dos valores da variáveis
MAIOR <- (-100000000)
MINIMAX <- (100000000)
escreval("Digite os valores da matriz A(10,10):")
para LINHA de 1 ate 10 faca //alterar  ate
   para COLUNA de 1 ate 10 faca   //alterar ate
      escreva("LINHA:",LINHA,", COLUNA:",COLUNA," -> ")
      leia(M[LINHA,COLUNA])
      se M[LINHA,COLUNA]>MAIOR entao
         MAIOR <- M[LINHA,COLUNA]
         LINHAMINMAX <- LINHA
      fimse
   fimpara
fimpara

para LINHA de 1 ate 10 faca               // alterar ate
   se LINHA=LINHAMINMAX entao
      para COLUNA de 1 ate 10 faca                  // alterar ate
         se M[LINHA,COLUNA]<MINIMAX entao
            MINIMAX <- M[LINHA,COLUNA]
            COLUNAMINMAX <- COLUNA
         fimse
      fimpara
   fimse
fimpara

// Amostra dos dados
escreval("O maior elemento da matriz A(10,10) é:",MAIOR,". Localizado na linha:",LINHAMINMAX,".")
escreval("O elemento mínimax da matriz A(10,10) é ",MINIMAX,". Localizado na linha:",LINHAMINMAX," e coluna:",COLUNAMINMAX,".")
fimalgoritmo

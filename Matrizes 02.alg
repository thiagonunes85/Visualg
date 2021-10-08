algoritmo "Matrizes Questão 2"
// Função : Separar pares e ímpares em diferentes colunas da matriz.
// Autor : Brener Aurelio Moura Santana.
// Data : 19/09/2020
// Seção de Declarações
var
MATRIZ : vetor[1..10,1..2] de inteiro
L , C , NUMERO , PARES , IMPARES , I : inteiro
inicio
// Seção de Comandos
para L de 1 ate 10 faca
   para C de 1 ate 2 faca
      MATRIZ[L,C] <- (-1)
   fimpara
fimpara
escreval("Forneça 10 números inteiros para a matriz:")
para I de 1 ate 10 faca
   escreva(I,"° número: ")
   leia(NUMERO)
   se NUMERO%2=0 entao
      PARES <- PARES+1
      MATRIZ[PARES,1] <- NUMERO
   senao
      IMPARES <- IMPARES+1
      MATRIZ[IMPARES,2] <- NUMERO
   fimse
fimpara
escreval(" ")
escreval("Matriz:")
para L de 1 ate 10 faca
   escreval("| ",MATRIZ[L,1]," ",MATRIZ[L,2]," |")
fimpara
escreval(" ")
escreval("OBSERVAÇÃO: apenas números fornecidos foram separados conforme sua paridade.")
fimalgoritmo

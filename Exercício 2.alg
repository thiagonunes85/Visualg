algoritmo "Exercício 2"
// Função: 2. Crie um programa que armazene 10 números digitados pelo usuário em uma matriz, na qual a
// coluna 1 armazenará números pares, a coluna 2, os números ímpares. Após a entrada de dados,
// exiba os valores da matriz em sequência, ou seja, os valores da coluna 1 e depois, os da coluna 2.
// Obs.: As posições que não receberem valores exibirão o valor -1.
// Autor: Thiago Nunes da Costa.
// Data: 19/09/2020
// Seção de Declarações
var
M: vetor[1..10,1..2] de inteiro
LINHA, COLUNA, I, NUMERO, PARES, IMPARES: inteiro

inicio
// Entrada de dados
para LINHA de 1 ate 10 faca
   para COLUNA de 1 ate 2 faca
      M[LINHA,COLUNA] <- (-1)
   fimpara
fimpara

escreval("Digite 10 números:")
para I de 1 ate 10 faca
   escreva("Número",I,":")
   leia(NUMERO)
   se NUMERO%2=0 entao
      PARES <- PARES+1
      M[PARES,1] <- NUMERO
   senao
      IMPARES <- IMPARES+1
      M[IMPARES,2] <- NUMERO
   fimse
fimpara

// Amostra dos dados da matriz separadamente (ímpar e par)
para LINHA de 1 ate 10 faca
   escreval("| ",M[LINHA,1]," ",M[LINHA,2]," |")
fimpara
fimalgoritmo


//|''||''| '||'  '||' '||'     |      ..|'''.|   ..|''||   '|.   '|' '||'  '|' '|.   '|' '||''''|   .|'''.|
//   ||     ||    ||   ||     |||    .|'     '  .|'    ||   |'|   |   ||    |   |'|   |   ||  .     ||..  '
//   ||     ||''''||   ||    |  ||   ||    .... ||      ||  | '|. |   ||    |   | '|. |   ||''|      ''|||.
//   ||     ||    ||   ||   .''''|.  '|.    ||  '|.     ||  |   |||   ||    |   |   |||   ||       .     '||
//  .||.   .||.  .||. .||. .|.  .||.  ''|...'|   ''|...|'  .|.   '|    '|..'   .|.   '|  .||.....| |'....|'

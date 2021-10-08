algoritmo "Exercicio1"
// Autor : Tiago Pinheiro
// Data : 21/09/2020

var
M1 : vetor [1..4, 1..4] de real
M2 : vetor [1..4, 1..4] de real
C, L : inteiro
inicio
L <- 1
Escreval("Digite 16 numeros espaçados por enter, para a primeira matriz")
repita
      para C de 1 ate 4 faca
           leia(M1[L,C])
      fimpara
      L <- L + 1
ate L = 5
Escreval("Digite mais outros 16 numeros separados por enter, para a segunda matriz")
L <- 1
repita
      para C de 1 ate 4 faca
           leia(M2[L,C])
      fimpara
      L <- L + 1
ate L = 5
L <- 1
Escreval("Matriz final:")

repita
      para C de 1 ate 4 faca
           M1[L,C] <- M1[L,C] + M2[L,C]
           Escreva("", M1[L,C])
      fimpara
      L <- L + 1
      Escreval("")
ate L = 5

fimalgoritmo

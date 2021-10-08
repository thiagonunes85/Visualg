algoritmo "Exercicio2"
// Autor : Tiago Pinheiro
// Data : 21/09/2020
var

M : vetor [1..10, 1..2] de real
L,  L2, C, NUMERO, N, I: inteiro

inicio
N <- 0
L <- 1
L2 <- 1
C <- 1
Escreval("Digite 10 números, separados por enter")
repita
   leia(NUMERO)
   I <- NUMERO%2
   se I = 0 entao
      M[L,1] <- NUMERO
      L <- L + 1
   senao
      M[L2,2] <- NUMERO
      L2 <- L2 + 1
   fimse
   N <- N + 1
ate N = 10
para N de L ate 10 faca
   M[N,1] <- -1
fimpara
para N de L2 ate 10 faca
   M[N,2] <- -1
fimpara
L <- 1
repita
   para C de 1 ate 2 faca
      Escreva("", M[L,C])
   fimpara
   L <- L + 1
   Escreval("")
ate L = 10
fimalgoritmo

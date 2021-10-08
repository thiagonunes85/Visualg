algoritmo "Exercicio3"
// Autor : Tiago Pinheiro
// Data : 21/09/2020
var

M : vetor [1..5,1..5] de real
L, C : inteiro
VALOR, A, B, CC, TOTAL, SDIAGONAL : real
inicio
C <- 1
A <- 0
B <- 0
CC <- 0
TOTAL <- 0
Escreval("Digite os valores da matriz (25 numeros)")
repita
      para L de 1 ate 5 faca
           leia(VALOR)
           M[L,C] <- VALOR
           se L = 4 entao
              A <- A + M[L,C]
           fimse
           se C = 4 entao
              B <- B + M[L,C]
           fimse
           se L = C entao
              CC <- CC + M[L,C]
           fimse
           TOTAL <- TOTAL + M[L,C]
      fimpara
      C <- C + 1
ate C = 6
L <- 5
para C de 1 ate 5 faca
      SDIAGONAL <- SDIAGONAL + M[L,C]
      L <- L - 1
fimpara
Escreval("Valor da soma linha 4: ", A)
Escreval("Valor da soma coluna 2: ", B)
Escreval("Valor da soma da diagonal principal: ", CC)
Escreval("Valor da soma da diagonal secundaria: ", SDIAGONAL)
Escreval("Valor da soma de todos os elementos do matriz: ", TOTAL)
C <- 1
repita
      para L de 1 ate 5 faca
           Escreva("", M[L,C])
      fimpara
      Escreval("")
      C <- C + 1
ate C = 6
fimalgoritmo

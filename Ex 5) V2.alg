algoritmo "Exercício 5"
// Função : Dado um conjunto de números pares, identificar os pares de números primos que somados resultam nos números pares
// Autor : Edgar Henrique Ferreira dos Reis
// Data : 27/09/2020
// Seção de Declarações
var
P1,P2,PAR:vetor[0..100] de inteiro
N,C,P,I,D,PARES,X,Y,Z,QNTD:inteiro

inicio
escreval("Digite um conjunto de números pares (digite um número negativo para terminar): ")
C <- 0
enquanto PAR[C] >= 0 faca
   C <- C + 1
   leia(PAR[C])
   QNTD <- QNTD + 1
   se PAR[C] > PARES entao
      PARES <- PAR[C]
   fimse
fimenquanto

para C de 1 ate PARES faca //Identificar os números primos
   P <- 0
   para I de 1 ate C faca
      se(C mod I =0) entao
         P <- P+1
      fimse
   fimpara
   se(P=2)entao
      N <- N + 1
      P1[N]<- C
      P2[N]<- C
   fimse
fimpara

para D de 1 ate QNTD faca
   C <- 1
   para C de 1 ate PARES faca
      N <- 1
      para N de 1 ate C faca
         se P1[C] + P2[N] = PAR[D] entao
            X <- P1[C]
            Y <- P2[N]
            Z <- PAR[D]
            escreval("Os números primos",X," e",Y," somados resultam no número par",Z)
            escreval
            interrompa
         fimse
      fimpara
   fimpara
fimpara


// Seção de Comandos
fimalgoritmo

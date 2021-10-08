algoritmo "semnome"
// Função :
// Autor :
// Data : 22/09/2020
// Seção de Declarações 
var
D, N, K, X, L, W: inteiro
inicio
// Seção de Comandos 
   procedimento MOSTRAPINHEIRO (var N: inteiro)
   Inicio
         escreval("Quantos galhos possuem o pinheiro?")
         leia (N)
   fimprocedimento
   
MOSTRAPINHEIRO(N)
limpatela

D, N, K, X, L, W: inteiro

para D de 1 ate N faca
     escreva(" ")
fimpara

escreva("")

para D de 1 ate N faca
     para L de 1 ate W faca
          escreva(" ")
     fimpara
W <- W-1
escreva("")

para X de 1 ate K faca
     escreva("*")
fimpara

K <- K+2
escreval("")
fimpara

para D de 1 ate N faca
escreva(" ")
fimpara

fimalgoritmo

algoritmo "PINHEIRO"
// Função :Pinheiro Procedimento
// Autor : Heitor
// Data : 22/09/2020
var
N:inteiro
procedimento mostraPinheiro(var QL:inteiro)
var I,J,K,CONT,X,B:inteiro
inicio
X<-QL
K<-1
para B de 1 ate X faca
   para I de QL-1 ate 0 passo -1 faca
      escreva(" ")
   fimpara
   para CONT de 1 ate K faca
      escreva("*")
   fimpara
   escreval(" ")
   QL<-QL-1
   K<-K+2
fimpara
fimprocedimento
inicio
escreval("Digite um valor N")
leia(N)
mostraPinheiro(N)
fimalgoritmo

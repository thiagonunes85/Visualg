algoritmo "EXERCÍCIO 5"
// Função : Conjectura de Goldbach
// Autor : Heitor
// Data : 26/09/2020
var
B: vetor [1..999] de inteiro
A: vetor [1..999] de inteiro
X,K,C,L,DI,AD,BD: inteiro

funcao PRIMO: logico
var
C,DI:inteiro
PRI: logico
inicio
para C de 2 ate K faca
   se K mod C=0 entao
      DI<-DI+1
   fimse
fimpara
se DI=1 entao
   PRI<- VERDADEIRO
fimse
retorne PRI
fimfuncao

inicio
L<-1
X<-1
enquanto X>0 faca
   escreval("Digite um número par. Para interromper a entrada de números insira um número negativo")
   leia(X)
   para K de 2 ate X faca
      se PRIMO=verdadeiro entao
         A[L]<-K
         B[L]<-K
         L<-L+1
      fimse
   fimpara
   para L de 1 ate X faca
      para K de 1 ate X faca
         se A[L]+B[K]=X entao
            AD<-A[L]
            BD<-B[K]
         fimse
      fimpara
   fimpara
   escreval("Os números primos que somados originam o número par ",X," são: ",AD," e ",BD)
fimenquanto
fimalgoritmo



algoritmo "EXERCÍCIO 5"
// Função : Conjectura de Goldbach
// Autor : Heitor
// Data : 26/09/2020
var
B: vetor [1..999] de inteiro
A: vetor [1..999] de inteiro
X,K,C,L,DI,AD,BD: inteiro
inicio
L<-1
escreval("Digite um número par.")
leia(X)
para K de 2 ate X faca
   DI<-0
   para C de 2 ate K faca
      se K mod C=0 entao
         DI<-DI+1
      fimse
   fimpara
   se DI=1 entao
      A[L]<-K
      L<-L+1
   fimse
fimpara
L<-1
para K de 2 ate X faca
   DI<-0
   para C de 2 ate K faca
      se K mod C=0 entao
         DI<-DI+1
      fimse
   fimpara
   se DI=1 entao
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
fimalgoritmo


algoritmo "EXERCÍCIO 2"
// Função :MEGASENA
// Autor : Heitor
// Data : 24/09/2020
// Seção de Declarações
var
R: vetor [1..6] de inteiro
A: vetor [1..10] de inteiro
N: vetor [1..99,1..2] de inteiro
X,J,I,T,QA,QI,S:inteiro
procedimento contaAcertos
var
C:inteiro
inicio
T<-0
para I de 1 ate 10 faca
   se A[I]=R[1] entao
      T<-T+1
   fimse
   se A[I]=R[2] entao
      T<-T+1
   fimse
   se A[I]=R[3] entao
      T<-T+1
   fimse
   se A[I]=R[4] entao
      T<-T+1
   fimse
   se A[I]=R[5] entao
      T<-T+1
   fimse
   se A[I]=R[6] entao
      T<-T+1
   fimse
fimpara
fimprocedimento
inicio
para I de 1 ate 6 faca
   escreval("Digite a ",I," dezena sorteada.")
   leia (R[I])
fimpara
escreval("Insira o úmero de jogos a serem computados.")
leia(X)
para J de 1 ate X faca
   escreval("Digite o número da aposta.")
   leia(N[J,1])
   para I de 1 ate 10 faca
      escreval("Digite a ",I," dezena apostada, insira 0 se não houver mais dezenas apostadas.")
      leia (A[I])
      se  A[I]=0 entao
         interrompa
      fimse
   fimpara
   contaAcertos()
   N[J,2]<-T
fimpara
para J de 1 ate X faca
   se N[J,2]=4 entao
      escreval("A aposta de número ",N[J,1]," fez uma quadra!")
      QA<-QA+1
   fimse
   se N[J,2]=5 entao
      escreval("A aposta de número ",N[J,1]," fez uma quina!")
      QI<-QI+1
   fimse
   se N[J,2]=6 entao
      escreval("A aposta de número ",N[J,1]," fez uma sena!")
      S<-S+1
   fimse
fimpara
escreval("O número de quadras foi: ",QA)
escreval("O número de quinas foi: ",QI)
escreval("O número de senas foi: ",S)

fimalgoritmo

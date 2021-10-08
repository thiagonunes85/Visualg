algoritmo "EXERCÍCIO 1"
// Função :Calcular Notas
// Autor :Heitor
// Data : 24/09/2020
var
N,I,C,D:inteiro
SA: vetor[1..99,1..2] de inteiro
procedimento calculaSoma(var QA:inteiro)
var
I,J,X,B,MIN:inteiro
N: vetor [1..4] de inteiro
SN: vetor [1..4] de inteiro
inicio
MIN<-999
C<-1
para J de 1 ate QA faca
   B<-1
   escreval("Digite o número do aluno.")
   leia (SA[J,2])
   para I de 1 ate 4 faca
      escreval("Digite a ", I," nota do aluno.")
      leia (X)
      se X<MIN entao
         MIN<-X
      fimse
      N[I]<-X
   fimpara
   para I de 1 ate 4 faca
      se N[I]>MIN entao
         SN[B]<-SN[B]+N[I]
         B<-B+1
      fimse
   fimpara
   escreval("Digite a nota da prova final.")
   leia (SN[B])
   para B de 1 ate 4 faca
      SA[C,1]<-SA[C,1]+SN[B]
   fimpara
   C<-C+1
   para B de 1 ate 4 faca
      SN[B]<-0
   fimpara
fimpara
fimprocedimento
inicio
escreval("Digite a quantidade de alunos.")
leia(N)
calculaSoma(N)
para I de 1 ate N faca
   se (SA[I,1])>=90 entao
      escreval("O conceito do aluno ",SA[I,2]," é A.")
   fimse
   se (80<=(SA[I])) e ((SA[I])<=89) entao
      escreval("O conceito do aluno ",SA[I,2]," é B.")
   fimse
   se (70<=(SA[I])) e ((SA[I])<=79) entao
      escreval("O conceito do aluno ",SA[I,2]," é C.")
   fimse
   se (60<=(SA[I])) e ((SA[I])<=69) entao
      escreval("O conceito do aluno ",SA[I,2]," é D.")
   fimse
   se (0<=(SA[I])) e ((SA[I])<=59) entao
      escreval("O conceito do aluno ",SA[I,2]," é E.")
   fimse
fimpara
fimalgoritmo

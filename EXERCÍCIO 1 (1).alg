algoritmo "EXERCÍCIO 1"
// Função :Calcular Notas
// Autor :Heitor
// Data : 24/09/2020
var
N,I,C,D:inteiro
SA: vetor[1..99,1..2] de inteiro
procedimento calculaSoma(var QA:inteiro)
var
I,J,X,MIN,Z:inteiro
N: vetor [1..4] de inteiro
inicio
MIN<-999
C<-1
//Aqui contabiliza-se todas as notas dos alunos e seus númeors de identificação.
para J de 1 ate QA faca
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
      se N[I]=MIN entao
         N[I]<-0
         interrompa
      fimse
   fimpara
   escreval("Digite a nota da prova final.")
   leia(Z)
   para I de 1 ate 4 faca
      se N[I]=0 entao
         N[I]<-Z
      fimse
   fimpara
   para I de 1 ate 4 faca
      SA[C,1]<-SA[C,1]+N[I]
   fimpara
   C<-C+1
   para I de 1 ate 4 faca
      N[I]<-0
   fimpara
fimpara
fimprocedimento
inicio
escreval("Digite a quantidade de alunos( no máximo 80).")
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

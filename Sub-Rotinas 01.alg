algoritmo "Subrotinas Questão 1"
// Função : Avaliar o aproveitamento de uma disciplina para 80 alunos.
// Autor : Brener Aurelio Moura Santana.
// Data : 26/09/2020
// Seção de Declarações
var
P1 , P2 , P3 , P4 , PF , NF : real
ALUNO , L , C : inteiro
LINHAS : vetor[1..80,1..6] de real
procedimento NotaFinal(A,B,C,D,PFINAL,NFINAL: real): real
var
SOMA3MN : real
MENORNOTA : real
CONCEITO : caractere
inicio
MENORNOTA <- 100
se A<MENORNOTA entao
   MENORNOTA <- A
fimse
se B<MENORNOTA entao
   MENORNOTA <- B
fimse
se C<MENORNOTA entao
   MENORNOTA <- C
fimse
se D<MENORNOTA entao
   MENORNOTA <- D
fimse
SOMA3MN <- A+B+C+D-MENORNOTA
NFINAL <- SOMA3MN+PFINAL
se ((NFINAL>=0) e (NFINAL<=59)) entao
   CONCEITO <- "E"
fimse
se ((NFINAL>=60) e (NFINAL<=69)) entao
   CONCEITO <- "D"
fimse
se ((NFINAL>=70) e (NFINAL<=79)) entao
   CONCEITO <- "C"
fimse
se ((NFINAL>=80) e (NFINAL<=89)) entao
   CONCEITO <- "B"
fimse
se ((NFINAL>=90) e (NFINAL<=100)) entao
   CONCEITO <- "A"
fimse
escreval("O aluno n° ",ALUNO," ficou com nota final ",NFINAL," e conceito ",CONCEITO)
fimprocedimento
inicio
// Seção de Comandos
escreval("Provas 1, 2, 3 e 4 valem no máximo 20 pontos!")
escreval("Prova Final vale no máximo 40 pontos!")
para L de 1 ate 80 faca
   escreval(" ")
   escreval("NOVO ALUNO")
   para C de 1 ate 6 faca
      se C=1 entao
         escreva("Nº do aluno: ")
         leia(ALUNO)
         LINHAS[L,C] <- ALUNO
      senao
         se C=2 entao
            escreva("Nota Prova 1: ")
            leia(P1)
            LINHAS[L,C] <- P1
         senao
            se C=3 entao
               escreva("Nota Prova 2: ")
               leia(P2)
               LINHAS[L,C] <- P2
            senao
               se C=4 entao
                  escreva("Nota Prova 3: ")
                  leia(P3)
                  LINHAS[L,C] <- P3
               senao
                  se C=5 entao
                     escreva("Nota Prova 4: ")
                     leia(P4)
                     LINHAS[L,C] <- P4
                  senao
                     escreva("Nota Prova Final: ")
                     leia(PF)
                     LINHAS[L,C] <- PF
                  fimse
               fimse
            fimse
         fimse
      fimse
   fimpara
   NotaFinal(P1,P2,P3,P4,PF,NF)
   escreval("--------------------------------------------------------------")
fimpara
fimalgoritmo

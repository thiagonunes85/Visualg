algoritmo "Vetores Questão 2"
// Função : Mostar quantiade de respostas corretas de cada candidato numa prova.
// Autor : Brener Aurelio Moura Santana.
// Data : 08/09/2020
// Seção de Declarações
var
GABARITO : vetor[1..30] de caractere
IQ , NC , IC : inteiro
RESPOSTA : vetor[1..30] de caractere
ACERTOS : vetor[1..30] de inteiro
inicio
// Seção de Comandos
escreval("Forneça o gabarito (a, b, c, d OU e) das questões:")
para IQ de 1 ate 30 faca
   escreva("Gabarito Questão", IQ,":")
   leia(GABARITO[IQ])
fimpara
escreva("Quantos candidatos fizeram a prova?")
leia(NC)
para IC de 1 ate NC faca
   ACERTOS[IC] <- 0
   escreval("Forneça as respostas do Candidato", IC, ":")
   para IQ de 1 ate 30 faca
      escreva("Resposta Questão", IQ,":")
      leia(RESPOSTA[IQ])
      se RESPOSTA[IQ]=GABARITO[IQ] entao
         ACERTOS[IC] <- ACERTOS[IC]+1
      fimse
   fimpara
fimpara
escreval("Quantidade de Acertos de cada Candidato:")
para IC de 1 ate NC faca
   escreval("Candidato", IC,":", ACERTOS[IC],"/30 questões corretas.")
fimpara
fimalgoritmo

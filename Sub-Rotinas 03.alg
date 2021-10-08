algoritmo "Sub-rotinas Questão 3"
// Função : Determinar números quadrados perfeitos capicuas menores que 5000.
// Autor : Brener Aurelio Moura Santana.
// Data : 27/09/2020
// Seção de Declarações
var
N , I , INVERTIDO , QPC , QA : inteiro
QP : vetor[0..70] de inteiro
funcao quantidadeAlgarismos: inteiro
var
inicio
escreva("Quantos algarismos formam este quadrado perfeito? ")
leia(QA)
retorne QA
fimfuncao
procedimento separaNumero
var A: inteiro
inicio
escreval("Digite os algarismos do quadrado perfeito separadamente:")
para I de 1 ate QA faca
   leia(A)
fimpara
fimprocedimento
procedimento inverteNumero
var
inicio
escreva("O nº invertido é: ")
leia(INVERTIDO)
fimprocedimento
inicio
// Seção de Comandos
// inteiro x inteiro = quadrado perfeito
// 0x0=0 ; 70x70=4900 ; 71x71=5041
QPC <- 0
escreval("Ao final será exibido o total de quadrados perfeitos capicuas.")
escreval("Faça o que se pede.")
escreval(" ")
para N de 0 ate 70 faca
   QP[N] <- N*N
   escreval("Quadrado Perfeito ",QP[N]," é calculado por ",N," x",N)
   escreval("Quantidade de algarismos deste n°: ",quantidadeAlgarismos)
   escreval(" ")
   se QA>=2 entao
      separaNumero
      inverteNumero
      se INVERTIDO=QP[N] entao
         QPC <- QPC+1
         escreval(QP[N]," é um quadrado perfeito capicua!")
      fimse
   fimse
   escreval("----------------------------------------------------------------")
   escreval(" ")
fimpara
escreval("A quantidade de Quadrados Perfeitos Capicuas é: ",QPC)
fimalgoritmo

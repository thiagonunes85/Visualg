algoritmo "Questão 4"
// Função : Calcular o Produto Escalar de dois vetores e informar o tipo do ângulo entre eles.
// Autor : Brener Aurelio Moura Santana.
// Data : 09/09/2020
// Seção de Declarações
var
ND , I : inteiro
A : vetor[1..3] de real
B : vetor[1..3] de real
PRODUTO : real
ANGULO : caractere
inicio
// Seção de Comandos
escreva("Quantas dimensões possui os vetores? ")
leia(ND)
para I de 1 ate ND faca
   escreva("Coordenada da dimensão ", I," do vetor A: ")
   leia(A[I])
   escreva("Coordenada da dimensão ", I," do vetor B: ")
   leia(B[I])
   PRODUTO <- PRODUTO+(A[I]*B[I])
fimpara
escreval("Produto Escalar: ", PRODUTO)
se PRODUTO=0 entao
   ANGULO <- "RETO"
senao
   se PRODUTO>0 entao
      ANGULO <- "AGUDO"
   senao
      ANGULO <- "OBTUSO"
   fimse
fimse
escreval("O ângulo entre os vetores A e B é do tipo: ", ANGULO)
fimalgoritmo

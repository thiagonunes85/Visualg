algoritmo "Ex. 4"
// Função : Dados dois vetores A e B de mesma dimensão (1 x
// N), determine o produto escalar (ou produto interno)
// desses vetores e o tipo de ângulo entre eles. O produto
// escalar resulta sempre em uma grandeza escalar, ou
// seja, um número real.
// Para dois vetores A e B, o produto escalar é definido
// como o produto do módulo do vetor B e do módulo da
// projeção do vetor A sobre o vetor B. Aplicação comum
// do produto escalar: descoberta do ângulo entre os vetores:
// Autor : Thiago Nunes da Costa
// Data : 12/09/2020

var
A: vetor[1..3] de real
B: vetor[1..3] de real
ND, I: inteiro
PRODUTO: real
ANGULO: caractere

inicio

// Cálculo e obtenção das dimensões
escreva("Quais as dimensões dos vetores? ")
leia(ND)
para I de 1 ate ND faca
   escreva("Coordenada da dimensão",I," do vetor A: ")
   leia(A[I])
   escreva("Coordenada da dimensão",I," do vetor B: ")
   leia(B[I])
   PRODUTO <- PRODUTO+(A[I]*B[I])
fimpara

// Produto escalar
escreval("Produto escalar: ", PRODUTO)
se PRODUTO=0 entao
   ANGULO <- "RETO"
senao
   se PRODUTO>0 entao
      ANGULO <- "AGUDO"
   senao
      ANGULO <- "OBTUSO"
   fimse
fimse
escreval("O ângulo dos vetores A e B é classificado como: ", ANGULO)

fimalgoritmo

algoritmo "Questão 5"
// Função : Calcular e mostrar os raios das circunferências.
// Autor : Brener Aurelio Moura Santana.
// Data : 10/09/2020
// Seção de Declarações
var
XC , YC , RAIO : real
N , I : inteiro
X : vetor[1..100] de real
Y : vetor[1..100] de real
inicio
// Seção de Comandos
escreval("Forneça as coordenadas do centro da circunferência:")
escreva("X = ")
leia(XC)
escreva("Y = ")
leia(YC)
escreva("Quantos pontos serão fornecidos? ")
leia(N)
escreval("Insira a seguir as coordenadas dos pontos a serem analisados.")
para I de 1 ate N faca
   escreval("Ponto ",I,":")
   escreva("X",I," = ")
   leia(X[I])
   escreva("Y",I," = ")
   leia(Y[I])
   RAIO <- raizq(quad(XC-X[I])+quad(YC-Y[I]))
   escreval("Raio da circunf. que possui o ponto ",I,": ", RAIO)
fimpara
fimalgoritmo

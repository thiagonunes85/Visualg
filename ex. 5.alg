algoritmo "ex. 5 (desafio)"
// Função : 5. Dadas as coordenadas x e y de um ponto, um número inteiro n e as coordenadas de outros n
// pontos (1<n<100). Calcule e mostre os raios das circunferências centradas no ponto (x,y) que
// passam por pelo menos um dos n pontos dados.
// Autor : Thiago Nunes da Costa.
// Data : 13/09/2020

var
XC, YC, RAIO: real
P, I: inteiro
X: vetor[1..100] de real
Y: vetor[1..100] de real

inicio
// Obtenção das coordenadas
escreval("Forneça as coordenadas do centro da circunferência:")
escreva("X = ")
leia(XC)
escreva("Y = ")
leia(YC)

// Obtenção dos pontos a serem fornecidos
escreva("Quantos pontos serão fornecidos? ")
leia(P)

// Análise dos pontos e cálculo dos raios
escreval("Insira a seguir as coordenadas dos pontos a serem analisados.")
para I de 1 ate P faca
   escreval("Ponto ",I,":")
   escreva("X",I," = ")
   leia(X[I])
   escreva("Y",I," = ")
   leia(Y[I])
   RAIO <- raizq(quad(XC-X[I])+quad(YC-Y[I]))
   escreval("Raio da circunf. que possui o ponto ",I,": ", RAIO)
fimpara

fimalgoritmo

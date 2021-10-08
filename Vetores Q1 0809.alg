algoritmo "Vetores Questão 1"
// Função : Fazer a entrada de 10 valores inteiros e a saída desses mesmos valores em ordem inversa à da entrada, usando vetores.
// Autor : Brener Aurelio Moura Santana.
// Data : 08/09/2020
// Seção de Declarações
var
VALOR : vetor[1..10] de inteiro
I : inteiro
inicio
// Seção de Comandos
para I de 1 ate 10 faca
   escreval("Forneça novo número inteiro:")
   leia(VALOR[I])
fimpara
escreval("Números fornecidos na ordem inversa:")
repita
   I <- I-1
   escreval(VALOR[I])
ate I=1
fimalgoritmo

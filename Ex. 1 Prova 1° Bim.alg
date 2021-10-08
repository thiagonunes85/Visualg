algoritmo "Thiago1"
// Função : 1.Dados três valores numéricos, mostre o menor deles, usando apenas duas variáveis no algoritmo.
// Autor :  Thiago Nunes da Costa.
// Data : 01/10/2020
// Seção de Declarações
var
VET: vetor [1..4] de inteiro
I: inteiro
inicio
// Seção de Comandos
VET[4] <- (999999999)
para I de 1 ate 3 faca
   escreval("Digite o ", I,"° número!")
   leia(VET[I])
   se VET[I] < VET[4] entao
      VET[4] <- VET[I]
   fimse
fimpara
escreval(" ")
escreval("O menor número é:", VET[4],"!")
escreval(" ")
fimalgoritmo

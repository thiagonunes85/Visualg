algoritmo "ex. 1 da lista de vetores"
// Função :   1. Fazer a entrada de 10 valores inteiros e a saída desses mesmos valores em ordem inversa à da
// entrada, usando vetores.
// Autor : Thiago Nunes da Costa.
// Data : 11/09/2020

var
 VET1: vetor [1..10] de inteiro
 I: inteiro
 
inicio

// Entrada dos valores
   escreval("Digite 10 valores!")
                    para I de 1 ate 10 faca
                       escreval("Digite o valor",I,":")
                       leia(VET1[I])
                    fimpara
   
// Saída dos valores
   escreval("Os mesmos valores digitados anteriormente de forma inversa:")
                para I de 10 ate 1 passo -1 faca
                     escreval("",VET1[I])
                fimpara
   
   
fimalgoritmo

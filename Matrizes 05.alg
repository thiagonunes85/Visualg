algoritmo "Matrizes Questão 5"
// Função : Mostrar matrizes diversas originadas de uma informada.
// Autor : Brener Aurelio Moura Santana.
// Data : 19/09/2020
// Seção de Declarações
var
M : vetor[1..5,1..5] de real
L , C : inteiro
inicio
// Seção de Comandos
escreval("Forneça números para uma matriz M(5,5):")
para L de 1 ate 5 faca
   para C de 1 ate 5 faca
      escreva("N° da posição ",L,",",C,": ")
      leia(M[L,C])
   fimpara
fimpara
escreval(" ")
escreval("Matriz fornecida:")
para L de 1 ate 5 faca
   escreval("| ",M[L,1]," ",M[L,2]," ",M[L,3]," ",M[L,4]," ",M[L,5]," |")
fimpara
escreval(" ")
escreval("Matriz fornecida com rebatimento vertical:")
para L de 1 ate 5 faca
   escreval("| ",M[L,5]," ",M[L,4]," ",M[L,3]," ",M[L,2]," ",M[L,1]," |")
fimpara
escreval(" ")
escreval("Matriz fornecida com rebatimento horizontal:")
para L de 5 ate 1 passo -1 faca
   escreval("| ",M[L,1]," ",M[L,2]," ",M[L,3]," ",M[L,4]," ",M[L,5]," |")
fimpara
escreval(" ")
escreval("Matriz fornecida com rotação em sentido horário:")
escreval("| ",M[2,1]," ",M[1,1]," ",M[1,2]," ",M[1,3]," ",M[1,4]," |")
escreval("| ",M[3,1]," ",M[3,2]," ",M[2,2]," ",M[2,3]," ",M[1,5]," |")
escreval("| ",M[4,1]," ",M[4,2]," ",M[3,3]," ",M[2,4]," ",M[2,5]," |")
escreval("| ",M[5,1]," ",M[4,3]," ",M[4,4]," ",M[3,4]," ",M[3,5]," |")
escreval("| ",M[5,2]," ",M[5,3]," ",M[5,4]," ",M[5,5]," ",M[4,5]," |")
fimalgoritmo

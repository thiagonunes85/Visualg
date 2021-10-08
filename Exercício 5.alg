algoritmo "Exercício 5"
// Função : 5. Escreva um algoritmo que leia uma matriz M(5,5) e mostre:
// a. A matriz original.
// b. A matriz resultante do rebatimento vertical (a última coluna se torna a primeira, a
// penúltima coluna se torna a segunda, …).
// c. A matriz resultante do rebatimento horizontal (a última linha se torna a primeira, a
// penúltima linha se torna a segunda, …).
// d. A matriz resultante da rotação em sentido horário (veja exemplo) (VER VÍDEO NO YT E PESQUISAR)
// Autor : Thiago Nunes da Costa.
// Data : 21/09/2020
// Seção de Declarações
var
M: vetor[1..5,1..5] de real
LINHA, COLUNA: inteiro

inicio
// Entrada de dados
escreval("Digite 25 números para compor uma matriz M(5,5):")
para LINHA de 1 ate 5 faca
   para COLUNA de 1 ate 5 faca
      escreva("LINHA:",LINHA,", COLUNA:",COLUNA," -> ")
      leia(M[LINHA,COLUNA])
   fimpara
fimpara

// a
escreval("A matriz original:")
para LINHA de 1 ate 5 faca
   escreval("| ",M[LINHA,1]," ",M[LINHA,2]," ",M[LINHA,3]," ",M[LINHA,4]," ",M[LINHA,5]," |")
fimpara

// b
escreval("A matriz original com rebatimento vertical:")
para LINHA de 1 ate 5 faca
   escreval("| ",M[LINHA,5]," ",M[LINHA,4]," ",M[LINHA,3]," ",M[LINHA,2]," ",M[LINHA,1]," |")
fimpara

// c
escreval("A matriz original com rebatimento horizontal:")
para LINHA de 5 ate 1 passo -1 faca
   escreval("| ",M[LINHA,1]," ",M[LINHA,2]," ",M[LINHA,3]," ",M[LINHA,4]," ",M[LINHA,5]," |")
fimpara

// d
escreval("A matriz orignal com rotação no sentido horário:")
escreval("| ",M[2,1]," ",M[1,1]," ",M[1,2]," ",M[1,3]," ",M[1,4]," |")
escreval("| ",M[3,1]," ",M[3,2]," ",M[2,2]," ",M[2,3]," ",M[1,5]," |")
escreval("| ",M[4,1]," ",M[4,2]," ",M[3,3]," ",M[2,4]," ",M[2,5]," |")
escreval("| ",M[5,1]," ",M[4,3]," ",M[4,4]," ",M[3,4]," ",M[3,5]," |")
escreval("| ",M[5,2]," ",M[5,3]," ",M[5,4]," ",M[5,5]," ",M[4,5]," |")

fimalgoritmo

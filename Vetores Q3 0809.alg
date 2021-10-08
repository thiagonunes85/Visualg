algoritmo "Questão 3"
// Função : Mostrar se um dado é viciado ou não.
// Autor : Brener Aurelio Moura Santana.
// Data : 09/09/2020
// Seção de Declarações
var
TOTAL , LANCAMENTO , FACE : inteiro
RESULTADO : vetor[1..999] de inteiro
ACERTOS : vetor[1..999] de inteiro
PORCENTAGEM : vetor[1..6] de real
inicio
// Seção de Comandos
escreva("Quantos lançamentos serão feitos? ")
leia(TOTAL)
escreval("Insira a seguir as faces dos dados em cada lançamento:")
para LANCAMENTO de 1 ate TOTAL faca
   escreva("Resultado Lançamento ", LANCAMENTO,": ")
   leia(RESULTADO[LANCAMENTO])
   para FACE de 1 ate 6 faca
      se RESULTADO[LANCAMENTO]=FACE entao
         ACERTOS[FACE] <- ACERTOS[FACE]+1
      fimse
      PORCENTAGEM[FACE] <- ((ACERTOS[FACE]/TOTAL)*100)
   fimpara
fimpara
escreval("Dados não viciados serão aqueles com ocorrências de face entre 13 e 20%")
para FACE de 1 ate 6 faca
   escreval("O número de ocorrências da face ", FACE, " foi ", ACERTOS[FACE])
   escreval("Porcentagem da face ", FACE, ":", PORCENTAGEM[FACE],"%")
fimpara
para FACE de 1 ate 6 faca
   se ( (PORCENTAGEM[FACE]<13) ou (PORCENTAGEM[FACE]>20) ) entao
      escreval("DADO VICIADO!")
   senao
      escreval("DAO NÃO VICIADO!")
   fimse
fimpara
fimalgoritmo

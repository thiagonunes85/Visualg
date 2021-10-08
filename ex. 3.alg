algoritmo "Ex. 3"
// Função : 3. Um jogador de cassino tenta descobrir se um dado é viciado, e para tanto ele fez n lançamentos.
// Dados os n resultados dos lançamentos, determine o número de ocorrências de cada face e mostre
// se o dado é viciado ou não.
// Autor : Thiago Nunes da Costa.
// Data : 12/09/2020

//viciado = repetido

var
LANCAR, LANCAMENTO, LANCAMENTOS, FACE : inteiro
PORCENTAGEM: vetor[1..6] de real
ACERTO: vetor[1..999] de inteiro
RESULTADO: vetor[1..999] de inteiro

inicio
// Contagem e verificação dos lançamentos que o jogador irá lançar
escreva("Digite quantas vezes o dado será lançado: ")
leia(LANCAR)
LANCAMENTOS <- 6
     se LANCAR < 6 entao
           repita
                 escreval("A quantidade de lançamentos deve ser maior ou igual às 6(seis) faces de um dado!")
                 escreva("Por favor, digite um novo valor de lançamento: ")
                 leia(LANCAR)
           ate LANCAR >= LANCAMENTOS
     fimse
     
// Contagem e verificação das faces que o jogador lançou
escreval("Digite as faces de cada lançamento!")
para LANCAMENTO de 1 ate LANCAR faca
   escreva("Faces do lançamento", LANCAMENTO,": ")
   leia(RESULTADO[LANCAMENTO])
   para FACE de 1 ate 6 faca
      se RESULTADO[LANCAMENTO] = FACE entao
         ACERTO[FACE] <- ACERTO[FACE] + 1
      fimse
      PORCENTAGEM[FACE] <- ((ACERTO[FACE]/LANCAR) * 100)
   fimpara
fimpara

escreval("Para o dado não estar viciado, as ocorrências de faces deve estar entre 13 e 20%!")
para FACE de 1 ate 6 faca
   escreval("A quantidade de ocorrências da face", FACE, " foi ", ACERTO[FACE])
   escreval("A porcentagem da face", FACE, ":", PORCENTAGEM[FACE],"%")
fimpara
   para FACE de 1 ate 6 faca
      se ( (PORCENTAGEM[FACE]<13) ou (PORCENTAGEM[FACE]>20) ) entao
      escreval("A face do lancamento",FACE," está viciada! (Face:",RESULTADO[FACE],")")
      senao
      escreval("A face do lancamento",FACE," não está viciada!")
      fimse
   fimpara

fimalgoritmo

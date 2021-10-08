algoritmo "Thiago2"
// Função : 2.Dados o nome do aluno e suas quatro notas, calcule a média aritmética usando uma função
// e mostre mensagem sobre a aprovação/reprovação do aluno. Considere 7,0 como nota mínima para aprovação.
// Autor : Thiago Nunes da Costa.
// Data : 01/10/2020.
// Seção de Declarações
var
CONT1, CONT2: inteiro
NOTA: vetor [1..99, 1..5] de real
NOME: vetor [1..99] de caracter

////////////////////////////////////////////////////////////////////////////////
funcao MEDIAFINAL: real                                                       //
var                                                                           //
MEDIA: real                                                                   //
CONTFUN: inteiro                                                              //
inicio                                                                        //
MEDIA <- 0                                                                    //
para CONTFUN de 1 ate 4 faca                                                  //
   MEDIA <- MEDIA + NOTA[CONT1, CONTFUN] / 4                                  //
fimpara                                                                       //
retorne MEDIA                                                                 //
fimfuncao                                                                     //
////////////////////////////////////////////////////////////////////////////////

inicio
// Seção de Comandos
CONT1 <- 0

repita
   CONT1 <- CONT1 + 1
   escreval(" ")
   escreval("CÁLCULO DE MÉDIA FINAL DE ALUNOS!")
   escreval("PARA SAIR, DIGITE 'SAIR'!")
   escreval(" ")
   escreval("Digite o nome completo do", CONT1,"° aluno!")
   leia(NOME[CONT1])
   escreval(" ")
   se NOME[CONT1] <> "SAIR" entao
      para CONT2 de 1 ate 4 faca
         escreval("Digite a nota", CONT2,"!")
         leia(NOTA[CONT1, CONT2])
      fimpara
      NOTA[CONT1, 5] <- MEDIAFINAL
   fimse
ate NOME[CONT1] = "SAIR"

para CONT2 de 1 ate CONT1  -1 faca
   se NOTA[CONT2, 5] > 7 entao
      escreval("O aluno ",NOME[CONT2], " está aprovado! Sua média final é de:",NOTA[CONT2, 5])
   senao entao
      escreval("O aluno ",NOME[CONT2], " está reprovado! Sua média final é de:",NOTA[CONT2, 5])
   fimse
fimpara
fimalgoritmo

//|''||''| '||'  '||' '||'     |      ..|'''.|   ..|''||   '|.   '|' '||'  '|' '|.   '|' '||''''|   .|'''.|
//   ||     ||    ||   ||     |||    .|'     '  .|'    ||   |'|   |   ||    |   |'|   |   ||  .     ||..  '
//   ||     ||''''||   ||    |  ||   ||    .... ||      ||  | '|. |   ||    |   | '|. |   ||''|      ''|||.
//   ||     ||    ||   ||   .''''|.  '|.    ||  '|.     ||  |   |||   ||    |   |   |||   ||       .     '||
//  .||.   .||.  .||. .||. .|.  .||.  ''|...'|   ''|...|'  .|.   '|    '|..'   .|.   '|  .||.....| |'....|'

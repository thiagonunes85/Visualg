algoritmo "Sub-rotinas Questão 2"
// Função : Avaliar apostas da mega-sena.
// Autor : Brener Aurelio Moura Santana.
// Data : 27/09/2020
// Seção de Declarações
var
procedimento avaliaApostas
var
I : inteiro
DS : vetor[1..6] de inteiro
NAP , QA , N , APOSTA , ACERTOS , TOTALAP , NQUA , NQUI , NSEN : inteiro
QUADRA : vetor[1..999] de inteiro
QUINA : vetor[1..999] de inteiro
SENA : vetor[1..999] de inteiro
inicio
escreval("Dezenas Sorteadas:")
para I de 1 ate 6 faca
   escreva(I,"ª dezena sorteada: ")
   leia(DS[I])
fimpara
escreval(" ")
escreval("Forneça os dados que se pedem: (encerre com número da aposta = 0)")
repita
   ACERTOS <- 0
   escreval(" ")
   escreval("NOVA APOSTA")
   escreva("N° da aposta (1 para 1ª aposta, 2 para 2ª,...) : ")
   leia(NAP)
   se NAP<>0 entao
      escreva("Quantidade de dezenas apostadas: ")
      leia(QA)
      para N de 1 ate QA faca
         escreva(N,"ª Dezena Apostada: ")
         leia(APOSTA)
         para I de 1 ate 6 faca
            se DS[I]=APOSTA entao
               ACERTOS <- ACERTOS+1
            fimse
         fimpara
      fimpara
      se ACERTOS=4 entao
         QUADRA[NAP] <- NAP
         NQUA <- NQUA+1
      fimse
      se ACERTOS=5 entao
         QUINA[NAP] <- NAP
         NQUI <- NQUI+1
      fimse
      se ACERTOS=6 entao
         SENA[NAP] <- NAP
         NSEN <- NSEN+1
      fimse
   fimse
ate NAP=0
escreval(" ")
escreva("Quantas apostas foram inseridas? ")
leia(TOTALAP)
escreval(" ")
escreval("Fizeram Quadra as apostas: ")
para NAP de 1 ate TOTALAP faca
   se QUADRA[NAP]<>0 entao
      escreval(QUADRA[NAP])
   fimse
fimpara
escreval(" ")
escreval("Fizeram Quina as apostas: ")
para NAP de 1 ate TOTALAP faca
   se QUINA[NAP]<>0 entao
      escreval(QUINA[NAP])
   fimse
fimpara
escreval(" ")
escreval("Fizeram Sena as apostas: ")
para NAP de 1 ate TOTALAP faca
   se SENA[NAP]<>0 entao
      escreval(SENA[NAP])
   fimse
fimpara
escreval(" ")
escreval("Total de Quadras: ",NQUA)
escreval("Total de Quinas: ",NQUI)
escreval("Total de Senas: ",NSEN)
fimprocedimento
inicio
// Seção de Comandos
escreval("MEGA-SENA")
escreval(" ")
avaliaApostas
fimalgoritmo

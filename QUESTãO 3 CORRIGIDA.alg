Algoritmo "Questão 3"
Var
   MAT: vetor [1..71, 1..6] de inteiro
   CER: vetor [1..71] de inteiro
   CONT, CONTA, TOTAL, QUANT, I, J: inteiro



procedimento separaValores   // SEPARA OS VALORES RECEBIDOS ATERIORMENTE
var
   CONT, OLD: inteiro
   FRA: real
inicio
   para CONT de 1 ate 70 faca
      MAT[CONT, 2] <- int (MAT[CONT, 1] / 1000)
      OLD <- int (MAT[CONT, 1] % 1000)
      MAT[CONT, 3] <- int (OLD / 100)
      OLD <- int (OLD % 100)
      MAT[CONT, 4] <- int (OLD / 10)
      OLD <- int (OLD % 10)
      MAT[CONT, 5] <- OLD
   fimpara
fimprocedimento



procedimento ordemInversa(var J, CONT: inteiro) //COLOCA OS NUMEROS SEPARADOS NA ORDEM INVERSA
var
inicio

   se J = 4 entao
      MAT[J, 6] <- MAT[CONT, 2] + MAT[CONT, 3] * 10 + MAT[CONT, 4] * 100 + MAT[CONT, 5] * 1000
   fimse
   se J = 3 entao
      MAT[CONT, 6] <- MAT[CONT, 3] + MAT[CONT, 4] * 10 + MAT[CONT, 5] * 100
   fimse
   se J = 2 entao
      MAT[CONT, 6] <- MAT[CONT, 4] + MAT[CONT, 5] * 10
   fimse
   se J = 1 entao
      MAT[CONT, 6] <- MAT[CONT, 5]
   fimse
fimprocedimento



procedimento comparaOrdem       //COMPARA DE O NUMERO E CAPICUAS
var
   CONT: inteiro
inicio
   para CONT de 1 ate 70 faca
      se MAT[CONT, 1] = MAT[CONT, 6] entao
         TOTAL <- TOTAL + 1
         CER[TOTAL] <- MAT[CONT, 1]
      fimse
   fimpara
fimprocedimento



funcao tamanho(J: inteiro) : inteiro
var
   CONT: inteiro
inicio
   se (J > 999) entao
      CONT <- 4
   fimse
   se (J > 99) e (J < 1000) entao
      CONT <- 3
   fimse
   se (J > 9) e (J < 100) entao
      CONT <- 2
   fimse
   se (J < 10) entao
      CONT <- 1
   fimse
   retorne CONT
fimfuncao



inicio
   CONT <- 0
   repita
      CONT <- CONT + 1
      MAT[CONT, 1] <- CONT * CONT
   ate MAT[CONT, 1] > 5000


   separaValores
   para I de 1 ate CONT faca
      J <- tamanho (MAT[I, 1])
      //escreval(J)
      ordemInversa(J, I)
      I <- I + 1
   fimpara
   comparaOrdem

   //para CONT de 1 ate 70 faca
   //  escreval("Normal:  ", MAT[CONT, 1])
   // escreval("Inverso:  ", MAT[CONT, 6])
   //fimpara

   escreval("Quantidade total:", TOTAL)
   para CONT de 1 ate TOTAL faca
      escreval(CER[CONT])
   fimpara
Fimalgoritmo




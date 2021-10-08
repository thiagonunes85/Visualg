algoritmo "Questao 5"
var
   PAR, PRIMOS: vetor [1..999] de inteiro
   TOTAL, CONT, CONTA, CONTB, X, NUMERO: inteiro



funcao primo(NUMERO: inteiro): logico
var
   CONT, VAL: inteiro
inicio
   VAL <- 0
   para CONT de 1 ate NUMERO faca
      se NUMERO mod CONT = 0 entao
         VAL <- VAL + 1
      fimse
      CONT <- CONT + 1
   fimpara
   se (VAL = 2) entao
      retorne verdadeiro
   senao entao
      retorne falso
   fimse
fimfuncao



inicio
   repita
      TOTAL <- TOTAL + 1
      escreval("Digite um número par. (NEGATIVO PARA SAIR)")
      leia(PAR[TOTAL])
      se PAR[TOTAL] % 2 = 1 entao
         repita
            escreval("Digite um numero par!")
            leia(PAR[TOTAL])
         ate PAR[TOTAL] % 2 = 0
      fimse
   ate PAR[TOTAL] < 0


   para CONT de 1 ate TOTAL faca
      NUMERO <- 0
      X <- 0
      para NUMERO de 1 ate PAR[CONT] faca
         se primo(NUMERO) = verdadeiro entao
            X <- X + 1
            PRIMOS[X] <- NUMERO
            // escreval(PRIMOS[X])
         fimse
         NUMERO <- NUMERO + 1
      fimpara

      para CONTA de 1 ate X faca
         para CONTB de 1 ate X faca
            se PRIMOS[CONTA] + PRIMOS[CONTB] = PAR[CONT] entao
               escreval("O numero", PAR[CONT], " è formado por", PRIMOS[CONTA], " e", PRIMOS[CONTB])
            fimse
         fimpara
      fimpara

   fimpara
fimalgoritmo


algoritmo "Questao 3"
var
   ACERTOS: vetor [1..9999] de inteiro
   LANCAMENTO, TOTAL, RESULTADO, CONT, FACES: inteiro
inicio
   escreval("O dado possui quantas faces?")
   leia(FACES)
   escreval("Quantos lançamentos serão feitos?")
   leia (TOTAL)
   se TOTAL < FACES entao
      repita
         escreval("O total de lançamento é insuficiente para a quantidade de faces.")
         escreval("Digite uma nova quantidade de lançamentos. Obs: maior que", FACES)
         leia(TOTAL)
      ate (TOTAL > FACES) ou (TOTAL = FACES)
   fimse
   escreval("Deseja realizar qual programa? 1 ou 2?")
   leia(CONT)
   se CONT = 1 entao
      para LANCAMENTO de 1 ate TOTAL faca
         escreval("Qual a face do lançamento",  LANCAMENTO, "?")
         leia(RESULTADO)
         se (RESULTADO > FACES) entao
            repita
               escreval("A face escolhida não existe!")
               escreval("Digite um novo resultado. A maior face vale:", FACES)
               leia(RESULTADO)
            ate (RESULTADO < FACES) ou (RESULTADO = FACES)
         fimse
         para CONT de 1 ate FACES faca
            se RESULTADO = CONT entao
               ACERTOS[CONT] <- ACERTOS[CONT] + 1
            fimse
         fimpara
      fimpara
      CONT <- 0
   fimse
   se CONT = 2 entao
      para CONT de 1 ate FACES faca
         escreval("A face", CONT, " ocorreu quantas vezes?")
         leia(ACERTOS[CONT])
         RESULTADO <- RESULTADO + ACERTOS[CONT]
      fimpara
      se RESULTADO <> TOTAL entao
         TOTAL <- RESULTADO
         escreval("O total de lançamentos difere do definido primordialmente!")
         escreval("Portanto, ele foi redefinido para:", TOTAL)
      fimse
   fimse
   para CONT de 1 ate FACES faca
      escreva("A face", CONT, " ocorreu", ACERTOS[CONT], " vezes")
      se (1/FACES*4/5 < ACERTOS[CONT]/TOTAL)e(ACERTOS[CONT]/TOTAL < 1/FACES*6/5) entao
         escreval(" e ela provavelmente está normal.")
      senao entao
         escreval(" e ela provavelmente está viciada!")
      fimse
   fimpara
fimalgoritmo
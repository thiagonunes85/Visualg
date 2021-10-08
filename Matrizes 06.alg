algoritmo "Matrizes Questão 6"
// Função : Gerar quadrado mágico.
// Autor : Brener Aurelio Moura Santana.
// Data : 20/09/2020
// Seção de Declarações
var
QUADRADO : vetor[1..10,1..10] de inteiro
N : inteiro
SOMA : real
procedimento limpa_quadrado    // Coloca 0 em todas as posições
var
X , Y : inteiro
inicio
para X de 1 ate N faca
   para Y de 1 ate N faca
      QUADRADO[X,Y] <- 0
   fimpara
fimpara
fimprocedimento
procedimento montabasico_quadrado   // Monta quadrado normal de 1 a9
var
Z , X , Y : inteiro
inicio
Z <- 1
para X de 1 ate N faca
   para Y de 1 ate N faca
      QUADRADO[X,Y] <- Z
      Z <- Z+1
   fimpara
fimpara
fimprocedimento
procedimento mostra_quadrado   // Mostra o quadrado normal
var
X , Y : inteiro
inicio
para X de 1 ate N faca
   para Y de 1 ate N faca
      escreva(QUADRADO[X,Y]:3)
      se Y=N entao
         escreval
      fimse
   fimpara
fimpara
fimprocedimento
procedimento gera_quadrado_impar   // Geração do quadrado mágico
var
MAX_I , Z , X , Y : inteiro
XANTERIOR , YANTERIOR : inteiro
NN : real
inicio
NN <- N^2
MAX_I:= int(NN)
X <- 1 //Primeira Linha
Y <- (N\2)+1 // Posiciona no meio da linha
QUADRADO[X,Y] <- 1
para Z de 2 ate MAX_I faca  // De 2 em diante:
   XANTERIOR <- X
   YANTERIOR <- Y
   X <- X-1 // Vai pra linha de cima
   Y <- Y-1 // Vai pra coluna da esquerda
   se (X<=0) entao // Linha fora do quadrado?
      X <- N
   fimse
   se (Y<=0) entao // Coluna fora do quadrado?
      Y <- N
   fimse
   se (QUADRADO[X,Y]=0) entao
      QUADRADO[X,Y] <- Z
   senao // Se caso já estiver ocupado:
      X <- XANTERIOR+1 // Volta pra última linha ocupada e desce
      Y <- YANTERIOR // Permanece na mesma coluna
      se (X>N) entao // Linha fora do quadrado?
         X <- 1
      fimse
      QUADRADO[X,Y] <- Z
   fimse
fimpara
fimprocedimento
inicio
// Seção de Comandos
escreva("Informe a ordem N (3, 5, 7 ou 9) do Quadrado: ")
leia(N)
escreval(" ")
escreval("Quadrado Mágico ",N," x ",N)
escreval(" ")
escreval("Quadrado Normal:")
escreval(" ")
limpa_quadrado
montabasico_quadrado
mostra_quadrado
SOMA <- (N+N^3)/2
escreval(" ")
escreval("Quadrado mágico:")
escreval(" ")
limpa_quadrado
gera_quadrado_impar
mostra_quadrado
escreval(" ")
escreval("Soma em todas as linhas, colunas e diagonais: ",SOMA:6:0)
fimalgoritmo

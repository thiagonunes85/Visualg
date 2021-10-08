algoritmo "Exercício 6 (desafio)"

// Função : 6. Escrever um algoritmo que gere e mostre o quadrado mágico de ordem N que será fornecido
// pelo usuário, e o valor das somas das colunas, linhas e diagonais. Um quadrado mágico de ordem N
// (número ímpar) é um arranjo de números de 1 até N^2
// em uma matriz quadrada de tal modo que a
// soma de cada linha, coluna ou diagonal é a mesma.
// R egra de formação: Coloque o valor 1 no meio da primeira linha. Depois siga diagonalmente
// para cima e para esquerda (quando sair do quadrado suponha que os lados superior e inferior
// estão unidos e os lados esquerdo e direito da mesma forma). Em cada quadrado que passar
// coloque o valor anterior acrescido de uma unidade. Se um quadrado já estiver preenchido,
// então volte à posição anterior e desça um quadrado e o preencha. Continue seguindo
// diagonalmente até preencher todos os valores (N2
// será o último valor).
// Autor : Thiago Nunes da Costa.
// Data : 21/09/2020
// Seção de Declarações

var
QUADRADO: vetor[1..10,1..10] de inteiro
N: inteiro
SOMACOLUNAS: real

procedimento limpa_quadrado

var
X, Y: inteiro

inicio
para X de 1 ate N faca
   para Y de 1 ate N faca
      QUADRADO[X,Y] <- 0
   fimpara
fimpara

fimprocedimento

procedimento montabasico_quadrado

var
Z, X, Y : inteiro

inicio
Z <- 1
para X de 1 ate N faca
   para Y de 1 ate N faca
      QUADRADO[X,Y] <- Z
      Z <- Z+1
   fimpara
fimpara

fimprocedimento

procedimento mostra_quadrado

var
X, Y: inteiro

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

procedimento gera_quadrado_impar

var
MAX_I, Z, X, Y: inteiro
XANTERIOR, YANTERIOR: inteiro
NN: real

inicio
NN <- N^2
MAX_I:= int(NN)
X <- 1
Y <- (N\2)+1
QUADRADO[X,Y] <- 1
para Z de 2 ate MAX_I faca
   XANTERIOR <- X
   YANTERIOR <- Y
   X <- X-1
   Y <- Y-1
   se (X<=0) entao
      X <- N
   fimse
   se (Y<=0) entao
      Y <- N
   fimse
   se (QUADRADO[X,Y]=0) entao
      QUADRADO[X,Y] <- Z
   senao
      X <- XANTERIOR+1
      Y <- YANTERIOR
      se (X>N) entao
         X <- 1
      fimse
      QUADRADO[X,Y] <- Z
   fimse
fimpara

fimprocedimento

inicio
// Seção de Comandos
escreva("Digite a ordem N (3, 5, 7 ou 9) do quadrado: ")
leia(N)
escreval("Quadrado Mágico ",N," x ",N)
escreval("Quadrado Normal:")
limpa_quadrado
montabasico_quadrado
mostra_quadrado
SOMACOLUNAS <- (N+N^3)/2
escreval("Quadrado mágico:")
limpa_quadrado
gera_quadrado_impar
mostra_quadrado
escreval("Soma em todas as linhas, colunas e diagonais do quadrado:",SOMACOLUNAS:6:0)
fimalgoritmo

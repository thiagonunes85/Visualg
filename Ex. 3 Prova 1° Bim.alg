algoritmo "Thiago3"
// Função : 3. Dados os números de identificação (000 a 999) e os pesos dos animais de um rebanho bovino,
// identifique e mostre o número e o peso do animal mais gordo. Armazene os dados num único vetor.
// Use como flag (parada da entrada de dados) o número de identificação negativo.
// Autor : Thiago Nunes da Costa.
// Data : 01/10/2020
// Seção de Declarações
var
DADOS: vetor [1..99, 1..2] de real
CONT: inteiro

inicio
// Seção de Comandos
DADOS[1, 2] <- -1
CONT <- 1

repita
   CONT <- CONT + 1
   escreval("Digite a identificação do boi (000-999):", CONT -1)
   escreval("Digite qualquer número negativo para sair!")
   leia(DADOS[CONT, 1])
   se DADOS[CONT] > 0 entao
      escreval("Qual o peso? (kg)")
      leia(DADOS[CONT, 2])
      se DADOS[CONT, 2] > DADOS[1, 1] entao
         DADOS[1, 2] <- DADOS[CONT, 2]
         DADOS[1, 1] <- DADOS[CONT, 1]
      fimse
   fimse
ate DADOS[CONT, 1] < 0

escreva("O animal de identificação N°", DADOS[1, 1], " é o mais gordo! Possuindo peso igual a:", DADOS[1, 2], "kg")
fimalgoritmo

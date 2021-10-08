algoritmo "Exercicio 4"
// Função : Verificar se o CPF informado é correto ou incorreto
// Autor : Edgar Henrique Ferreira dos Reis
// Data : 29/09/2020
// Seção de Declarações
var
DIGITO1,DIGITO2:caracter
QNTD,Q:inteiro
CPF,X,NOME:vetor[1..10] de caracter
inicio

funcao gerarDigitos (NUMERO:caracter; LIMITADOR:inteiro):inteiro
var
ALGARISMO,MULTIP:vetor[1..11] de inteiro
C,L,RESULT: inteiro
inicio
// Separando cada caracter do CPF
ALGARISMO[1] <- caracpnum(copia((NUMERO), 1, 1))
ALGARISMO[2] <- caracpnum(copia((NUMERO), 2, 1))
ALGARISMO[3] <- caracpnum(copia((NUMERO), 3, 1))
ALGARISMO[4] <- caracpnum(copia((NUMERO), 4, 1))
ALGARISMO[5] <- caracpnum(copia((NUMERO), 5, 1))
ALGARISMO[6] <- caracpnum(copia((NUMERO), 6, 1))
ALGARISMO[7] <- caracpnum(copia((NUMERO), 7, 1))
ALGARISMO[8] <- caracpnum(copia((NUMERO), 8, 1))
ALGARISMO[9] <- caracpnum(copia((NUMERO), 9, 1))
// Caso seja para verificar com a existência de um dígito verificador
se LIMITADOR = 10 entao
   ALGARISMO[10] <- caracpnum(copia((NUMERO), 10, 1))
fimse

// Realizando o cálculo de multiplicação e soma de cada algarismo
L <- 1
para C de LIMITADOR ate 1 passo -1 faca
   MULTIP[C] <- ALGARISMO[C]*(L + 1)
   RESULT <- RESULT + MULTIP[C]
   L <- L + 1
fimpara

// Finalizando o cálculo
RESULT <- (RESULT % 11)-11

// Tratando o resultado
se RESULT < 0 entao
   RESULT <- RESULT*(-1)
fimse

se (RESULT = 10) ou (RESULT = 11) entao
   RESULT <- 0
fimse

retorne RESULT

fimfuncao

// Informar e armazenar os nomes e CPF's
escreva("Informe a quantidade de CPF's que serão analisados: ")
leia(QNTD)
escreval
para Q de 1 ate QNTD faca
   escreva("Informe o nome da pessoa: ")
   leia(NOME[Q])
   repita
      escreva("Informe o CPF: ")
      leia(X[Q])
      escreval
      se (compr(X[Q])<9) entao
         escreval("Informe um CPF com 9 ou mais dígitos")
      fimse
   ate (compr(X[Q])>=9)
   fimrepita
fimpara

para Q de 1 ate QNTD faca
   // Capturando os dígitos verificadores do CPF informado
   DIGITO1 <- numpcarac(gerarDigitos(copia(X[Q], 1, 9), 9))
   DIGITO2 <- numpcarac(gerarDigitos(copia(X[Q], 1, 9) + DIGITO1, 10))
   // CPF correto e completo(com os dígitos)
   CPF[Q] <- copia(X[Q], 1, 9) + DIGITO1 + DIGITO2

   // Verificando se o CPF informado é igual ao CPF correto
   escreval(NOME[Q])
   se X[Q] = CPF[Q] entao
      escreval("O CPF informado está CORRETO!")
      escreval
   senao
      escreval("O CPF informado está INCORRETO!")
      escreval("O CPF correto é ",CPF[Q])
      escreval
   fimse
fimpara
// Seção de Comandos
fimalgoritmo

algoritmo "Ex. 2"
// Função : 2. Mostre a quantidade de questões respondidas corretamente por cada candidato em uma
// determinada prova de 30 questões. Cada questão tem cinco alternativas identifIAadas pelas letras A,
// B, C, D e E. Para isso são fornecidos como entrada:
// O cartão gabarito: 30 x [questão - alternativa correta]
// A quantidade de candidatos que fizeram a prova
// O cartão de respostas de cada candidato, com o número de identifIAação e as respostas.
// Autor : Thiago Nunes da Costa
// Data : 11/09/2020


var
GABARITO: vetor[1..30] de caractere
ALTERNATIVA: vetor[1..30] de caractere
ACERTOS: vetor[1..30] de inteiro
IG, NC, IA: inteiro

inicio
// Criação do gabarito/cartão resposta (estilo ENEM)
escreval("Forneça as alternativas corretas (A, B, C, D ou E) do gabarito!")
para IG de 1 ate 30 faca
   escreva("Gabarito da questão", IG,":")
   leia(GABARITO[IG])
fimpara

// Contagem dos candidatos
escreval("Quantos(as) candidatos(as) realizaram a prova?")
leia(NC)

// Verificação das alternativas
para IA de 1 ate NC faca
   ACERTOS[IA] <- 0
   escreval("Forneça as alternativas do(a) candidado(a)", IA, ":")
      para IG de 1 ate 30 faca
      escreva("Alternativa da questão", IG,":")
      leia(ALTERNATIVA[IG])
         se ALTERNATIVA[IG]=GABARITO[IG] entao
         ACERTOS[IA] <- ACERTOS[IA]+1
         fimse
      fimpara
fimpara

// Contabilização dos acertos
escreval("Quantidade de alternativas corretas de cada candidato(a):")
para IA de 1 ate NC faca
   escreval("O(a) candidato(a) n°",IA," acertou",ACERTOS[IA]," questões! TOTAL:",ACERTOS[IA],"/30.")
fimpara

fimalgoritmo

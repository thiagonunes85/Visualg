algoritmo "Calculo de média de alunos"

var
NOME: caractere
N1, N2, N3, N4, MEDIA: real

inicio

escreval("Sistema de médias")
escreva("Digite a primeira nota: ")
leia(N1)
escreva("Digite a segunda nota: ")
leia(N2)
escreva("Digite a terceria nota: ")
leia(N3)
escreva("Digite a quarta nota: ")
leia(N4)
MEDIA <- (N1 + N2 + N3 + N4) / 4

se MEDIA >= 7 entao
   escreval("Parabéns, você foi aprovado!")
senao
   se MEDIA <= 5.9 entao
      escreval("Você foi reprovado!")
   senao
      escreval("Você está de recuperação...")
   fimse
fimse

fimalgoritmo

algoritmo "Preço de revenda do mercado do seu Zé"

var
CUSTO, VENDA, PERCENT: real

inicio

escreva("Digite o custo do produto (R$): ")
leia(CUSTO)
escreva("Digite o percentual para venda: ")
leia(PERCENT)
PERCENT <- (PERCENT/100) * CUSTO
VENDA <- CUSTO + PERCENT
escreval("O valor de venda é: ",VENDA)

fimalgoritmo

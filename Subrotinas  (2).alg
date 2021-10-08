algoritmo "EXERCÍCIO 4"
// Função : CPF
// Autor : Heitor
// Data : 26/09/2020
var
XA: real
Z,I,XN: inteiro
CMI,DMI,MI,CM,DM,M,C,D,U: inteiro
NOME: caracter
funcao Verifica: inteiro
var
VER,VER2,CPF: inteiro
inicio
//Esta seara os algarismos do número inserido, e retorna os dígito verificadores.
se int(XN/100000000)>0 entao
   CMI<-int(XN/100000000)
fimse
se int(XN/10000000)>0 entao
   DMI<-int(XN/10000000-10*CMI)
fimse
se int(XN/1000000)>0 entao
   MI<-int(XN/1000000-100*CMI-10*DMI)
fimse
se int(XN/100000)>0 entao
   CM<-int(XN/100000-1000*CMI-100*DMI-10*MI)
fimse
se int(XN/10000)>0 entao
   DM<-int(XN/10000-10000*CMI-1000*DMI-100*MI-10*CM)
fimse
se int(XN/1000)>0 entao
   M<-int(XN/1000-100000*CMI-10000*DMI-1000*MI-100*CM-10*DM)
fimse
se int(XN/100)>0 entao
   C<-int(XN/100-1000000*CMI-10*M-100000*DMI-10000*MI-1000*CM-100*DM)
fimse
se int(XN/10)>0 entao
   D<-int(XN/10-10000000*CMI-1000000*DMI-100000*MI-10000*CM-1000*DM-100*M-10*C)
fimse
se XN>0 entao
   U<-int(XN-10000000*CMI-10000000*DMI-1000000*MI-100000*CM-10000*DM-1000*M-100*C-10*D)
fimse
VER<-(11-((U*2+D*3+C*4+M*5+DM*6+CM*7+MI*8+DMI*9+CMI*10)mod 11))
se (VER=10) ou (VER=11) entao
   VER<-0
fimse
VER2<-(11-((VER*2+U*3+D*4+C*5+M*6+DM*7+CM*8+MI*9*DMI*10+CMI*11)mod 11))
CPF<-(((XN*10+VER)*10)+VER2))
retorne CPF
fimfuncao
inicio
escreval("Insira quantas pessoas terão o CPF testado.")
leia(Z)
para I de 1 ate Z faca
   escreval("Digite o nome.")
   leia(NOME)
   escreval("Digite o CPF de ", NOME)
   leia(XA)
   XN<-int(XA/100)
   se Verifica=XA entao
      escreval("O CPF de " ,NOME," é válido.")
   senao entao
      escreval ("O CPF de " ,NOME," é invalido.")
   fimse
fimpara
fimalgoritmo

algoritmo "EXERCÍCIO 5"
// Função : Checa se um número é palíndromo e quadrados perfeitos.
// Autor : Heitor
// Data : 25/09/2020
var
U,D,C,M: inteiro
NI,X,AUX,I,J: inteiro
procedimento separaAlgarismos(var XN: inteiro)
var
inicio
//Este procedimento separa os algarismos do número inserido.
se int(XN/1000)>0 entao
   M<-int(XN/1000)
fimse
se int(XN/100)>0 entao
   C<-int(XN/100-10*M)
fimse
se int(XN/10)>0 entao
   D<-int(XN/10-100*M-10*C)
fimse
se XN>0 entao
   U<-(XN-1000*M-100*C-10*D)
fimse
fimprocedimento
procedimento inverteAlgarismos(var XI: inteiro)
var
inicio
//Este procedimento inverte a ordem dos algarismos do número inserido.
se int(XI/1000)>0 entao
   M<-M*1
fimse
se int(XI/100)>0 entao
   C<-C*10
fimse
se int(XI/10)>0 entao
   D<-D*100
fimse
se XI>0 entao
   U<-U*1000
fimse
NI<-U+D+C+M
se NI mod 10=0 entao
   NI<-int(NI/10)
fimse
se NI mod 10=0 entao
   NI<-int(NI/10)
fimse
se NI mod 10=0 entao
   NI<-int(NI/10)
fimse
fimprocedimento
//ESta função soma o número de algarismos do número inserido.
funcao somaAlgarismos: inteiro
var
M,C,D,U,SOMA: inteiro
inicio
se int(X/10)=0 entao
   SOMA<-1
fimse
se (int(X/10)>0) e (int(X/10)<10) entao
   SOMA<-2
fimse
se (int(X/10)>=10) e (int(X/10)<100) entao
   SOMA<-3
fimse
se (int(X/10)>=100) entao
   SOMA<-4
fimse
retorne SOMA
fimfuncao
inicio
para J de 0 ate 5000 faca
   X<-J
   AUX<-0
   para I de 0 ate X faca
      se I*I=X entao
         AUX<-AUX+1
      fimse
   fimpara
   separaAlgarismos(X)
   se AUX>0 entao
      inverteAlgarismos(X)
   fimse
   se (NI=X) e (AUX>0) entao
      escreval("O número ",X," é palíndromo e quadrado perfeito.")
   fimse
   escreval("O número ",X," tem ", somaAlgarismos," algarismos.")
fimpara
fimalgoritmo

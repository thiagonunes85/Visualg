algoritmo "EXERCÍCIO 4"
// Função : CPF
// Autor : Heitor
// Data : 26/09/2020
var
XN: real
funcao Verifica: real
var
DBI,BI,CMI,DMI,MI,CM,DM,M,C,D,U,VER: inteiro
inicio
//Este procedimento separa os algarismos do número inserido.
se int(XN/10000000000)>0 entao
   DBI<-int(XN/10000000000)
fimse
se int(XN/1000000000)>0 entao
   BI<-int(XN/10000000000-10*DBI)
fimse
se int(XN/100000000)>0 entao
   CMI<-int(XN/100000000-100*DBI-10*BI)
fimse
se int(XN/10000000)>0 entao
   DMI<-int(XN/10000000-1000*DBI-100*BI-10*CMI)
fimse
se int(XN/1000000)>0 entao
   MI<-int(XN/1000000-10000*DBI-1000*BI-100*CMI-10*DMI)
fimse
se int(XN/100000)>0 entao
   CM<-int(XN/100000-100000*DBI-10000*BI-1000*CMI-100*DMI-10*MI)
fimse
se int(XN/10000)>0 entao
   DM<-int(XN/10000-1000000*DBI-100000*BI-10000*CMI-1000*DMI-100*MI-10*CM)
fimse
se int(XN/1000)>0 entao
   M<-int(XN/1000-10000000*DBI-1000000*BI-100000*CMI-10000*DMI-1000*MI-100*CM-10*DM)
fimse
se int(XN/100)>0 entao
   C<-int(XN/100-100000000*DBI-10000000*BI-1000000*CMI-10*M-100000*DMI-10000*MI-1000*CM-100*DM)
fimse
se int(XN/10)>0 entao
   D<-int(XN/10-1000000000*DBI-100000000*BI-10000000*CMI-1000000*DMI-100000*MI-10000*CM-1000*DM-100*M-10*C)
fimse
se XN>0 entao
   U<-int(XN-10000000000*DBI-1000000000*BI-10000000*CMI-10000000*DMI-1000000*MI-100000*CM-10000*DM-1000*M-100*C-10*D)
fimse
VER<-(11-((U*2+D*3+C*4+M*5+DM*6+CM*7+MI*8+DMI*9+CMI*10+BI*11+DBI*12)mod 11))
se (VER=10) ou (VER=11) entao
   VER<-0
fimse
retorne VER
fimfuncao
inicio
escreval("Digite um CPF.")
leia(XN)
escreval("O digito verificador é: ", Verifica)
fimalgoritmo

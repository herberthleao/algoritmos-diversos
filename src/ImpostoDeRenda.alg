algoritmo "ImpostoDeRenda"
// Disciplina   :  L�gica de Programa��o
// Professora   : Tatyane Calixto
// Descri��o   : Calcula o imposto de renda de N pessoas.
// Autor(a)    : Herberth Le�o
// Data atual  : 20/10/2020
var
   pessoas: vetor[1..100] de caractere
   salarios: vetor[1..100] de real
   descontos: vetor[1..100] de real
   quantidade: inteiro
   i: inteiro
inicio
   // L� a quantidade pessoas, com limite de 100 para n�o exceder o vetor.
   repita
      escreva("N� de profissionais (m�x. 100): ")
      leia(quantidade)
   ate (quantidade > 0) e (quantidade < 101)

   // L� os nomes e sal�rios.
   para i de 1 ate quantidade faca
      limpatela
      escreva("Nome: ")
      leia(pessoas[i])
      escreva("Sal�rio (R$): ")
      leia(salarios[i])
      
      // Calcula o imposto de renda.
      // Acima de R$ 2.200,00: desconto de 22%.
      se salarios[i] > 2200 entao
         descontos[i] <- salarios[i] * 22 / 100
      senao
         // Entre R$ 1.000,00 e R$ 2.200,00: desconto de 13%.
         se salarios[i] >= 1000 entao
            descontos[i] <- salarios[i] * 13 / 100
         fimse
      fimse
   fimpara

   // Exibe nomes, sal�rios e sal�rios com desconto.
   limpatela
   escreval("Relat�rio")
   para i de 1 ate quantidade faca
      escreval("")
      escreval("Nome: ", pessoas[i])
      escreval("Sal�rio bruto: R$ ", salarios[i]:0:2)
      escreval("Sal�rio l�quido: R$ ", (salarios[i] - descontos[i]):0:2)
   fimpara
fimalgoritmo
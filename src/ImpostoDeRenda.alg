algoritmo "ImpostoDeRenda"
// Disciplina   :  Lógica de Programação
// Professora   : Tatyane Calixto
// Descrição   : Calcula o imposto de renda de N pessoas.
// Autor(a)    : Herberth Leão
// Data atual  : 20/10/2020
var
   pessoas: vetor[1..100] de caractere
   salarios: vetor[1..100] de real
   descontos: vetor[1..100] de real
   quantidade: inteiro
   i: inteiro
inicio
   // Lê a quantidade pessoas, com limite de 100 para não exceder o vetor.
   repita
      escreva("Nº de profissionais (máx. 100): ")
      leia(quantidade)
   ate (quantidade > 0) e (quantidade < 101)

   // Lê os nomes e salários.
   para i de 1 ate quantidade faca
      limpatela
      escreva("Nome: ")
      leia(pessoas[i])
      escreva("Salário (R$): ")
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

   // Exibe nomes, salários e salários com desconto.
   limpatela
   escreval("Relatório")
   para i de 1 ate quantidade faca
      escreval("")
      escreval("Nome: ", pessoas[i])
      escreval("Salário bruto: R$ ", salarios[i]:0:2)
      escreval("Salário líquido: R$ ", (salarios[i] - descontos[i]):0:2)
   fimpara
fimalgoritmo
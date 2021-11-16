algoritmo "Banco24h"
// Disciplina   :  Lógica de Programação 
// Professora   : Tatyane Calixto 
// Descrição   : Simula um caixa eletrônico onde será realizado um saque.
// Autor       : Herberth Leão
// Data atual  : 16/09/2020
var
   saldo: real
   saque: real
   autorizacao: logico
inicio
   escreval("Boas-vindas ao Banco24h!")

   // Inicializa as variáveis.
   autorizacao <- falso
   // Gera um número aleatório para o saldo, que seja acima de 0 (zero).
   enquanto (saldo = 0) faca
      saldo <- randi(1045)
   fimenquanto

   // Solicita o valor para saque, até que a quantidade seja válida.
   enquanto (autorizacao = falso) faca
      escreval("Seu saldo atual é de: R$ ", saldo)
      escreva("Quanto deseja sacar? ")
      leia(saque)

      // Se o valor do saque for acima do saldo, exibe o erro e solicita um
      // novo valor.
      se (saque > saldo) entao
         escreval("Saldo insuficiente!")
      senao
         // Caso contrário, autoriza a transação, exibe o saldo restante e
         // encerra o loop.
         autorizacao <- verdadeiro
         saldo <- saldo - saque
         escreval("Saque realizado com sucesso!")
         escreval("Seu saldo restante é de: R$ ", saldo)
      fimse
   fimenquanto
fimalgoritmo
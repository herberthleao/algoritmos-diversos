algoritmo "Banco24h"
// Disciplina   :  L�gica de Programa��o 
// Professora   : Tatyane Calixto 
// Descri��o   : Simula um caixa eletr�nico onde ser� realizado um saque.
// Autor       : Herberth Le�o
// Data atual  : 16/09/2020
var
   saldo: real
   saque: real
   autorizacao: logico
inicio
   escreval("Boas-vindas ao Banco24h!")

   // Inicializa as vari�veis.
   autorizacao <- falso
   // Gera um n�mero aleat�rio para o saldo, que seja acima de 0 (zero).
   enquanto (saldo = 0) faca
      saldo <- randi(1045)
   fimenquanto

   // Solicita o valor para saque, at� que a quantidade seja v�lida.
   enquanto (autorizacao = falso) faca
      escreval("Seu saldo atual � de: R$ ", saldo)
      escreva("Quanto deseja sacar? ")
      leia(saque)

      // Se o valor do saque for acima do saldo, exibe o erro e solicita um
      // novo valor.
      se (saque > saldo) entao
         escreval("Saldo insuficiente!")
      senao
         // Caso contr�rio, autoriza a transa��o, exibe o saldo restante e
         // encerra o loop.
         autorizacao <- verdadeiro
         saldo <- saldo - saque
         escreval("Saque realizado com sucesso!")
         escreval("Seu saldo restante � de: R$ ", saldo)
      fimse
   fimenquanto
fimalgoritmo
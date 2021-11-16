algoritmo "ElevaXaY"
// Disciplina   :  Lógica de Programação
// Professora   : Tatyane Calixto 
// Descrição   : Eleva um número fornecido a outro, em função de multiplicação.
// Autor(a)    : Herberth Leão
// Data atual  : 08/10/2020
var
   x, y, resultado: inteiro
   contador: inteiro
inicio
   escreva("Digite o valor de X: ")
   leia(x)
   
   escreva("Digite o valor de Y: ")
   leia(y)
   
   resultado <- 1
   para contador de 1 ate y faca
      resultado <- resultado * x
   fimpara
   
   limpatela
   escreval(x, " ^ ", y, " = ", resultado)
fimalgoritmo
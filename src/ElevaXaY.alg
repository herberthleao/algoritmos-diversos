algoritmo "ElevaXaY"
// Disciplina   :  L�gica de Programa��o
// Professora   : Tatyane Calixto 
// Descri��o   : Eleva um n�mero fornecido a outro, em fun��o de multiplica��o.
// Autor(a)    : Herberth Le�o
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
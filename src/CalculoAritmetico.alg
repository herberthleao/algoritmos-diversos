algoritmo "CalculoAritmetico"
// Disciplina   :  L�gica de Programa��o
// Professora   : Tatyane Calixto
// Descri��o   : Soma ou subtrai dois dados n�meros.
// Autor(a)    : Herberth Le�o
// Data atual  : 22/09/2020
var
   operacao: inteiro
   operandos: vetor[0..1] de inteiro
   contador: inteiro
inicio
   // Exibe um menu de opera��es e l� a op��o escolhida.
   escreval("Que opera��o voc� deseja realizar?")
   escreval("1 - Somar")
   escreval("2 - Subtrair")
   leia(operacao)

   // L� os dois n�meros a serem calculados.
   para contador de 0 ate 1 faca
      escreva("Digite um n�mero a ser calculado: ")
      leia(operandos[contador])
   fimpara

   // Realiza o c�lculo com os n�meros fornecidos, de acordo com a opera��o
   // escolhida.
   se operacao = 1 entao
      escreval("A soma dos n�meros � ", operandos[0] + operandos[1])
   senao
      escreval("A subtra��o dos n�meros � ", operandos[0] - operandos[1])
   fimse
fimalgoritmo
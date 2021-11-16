algoritmo "CalculoAritmetico"
// Disciplina   :  Lógica de Programação
// Professora   : Tatyane Calixto
// Descrição   : Soma ou subtrai dois dados números.
// Autor(a)    : Herberth Leão
// Data atual  : 22/09/2020
var
   operacao: inteiro
   operandos: vetor[0..1] de inteiro
   contador: inteiro
inicio
   // Exibe um menu de operações e lê a opção escolhida.
   escreval("Que operação você deseja realizar?")
   escreval("1 - Somar")
   escreval("2 - Subtrair")
   leia(operacao)

   // Lê os dois números a serem calculados.
   para contador de 0 ate 1 faca
      escreva("Digite um número a ser calculado: ")
      leia(operandos[contador])
   fimpara

   // Realiza o cálculo com os números fornecidos, de acordo com a operação
   // escolhida.
   se operacao = 1 entao
      escreval("A soma dos números é ", operandos[0] + operandos[1])
   senao
      escreval("A subtração dos números é ", operandos[0] - operandos[1])
   fimse
fimalgoritmo
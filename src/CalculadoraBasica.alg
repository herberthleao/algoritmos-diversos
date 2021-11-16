algoritmo "CalculadoraBasica"
// Disciplina   :  Lógica de Programação
// Professora   : Tatyane Calixto
// Descrição   : Realiza operações aritméticas básicas sobre dois números.
// Autor(a)    : Herberth Leão
// Data atual  : 22/09/2020
var
   operandos: vetor[0..1] de real
   operacao: caracter
   resultado: real
   continua: caracter

funcao checarDivisaoPorZero(): logico
// Verifica se há um número sendo dividido por 0 (zero), para que possa ser
// prevenido.
var
   resultado: logico
inicio
   se ((operandos[0] = 0) ou (operandos[1] = 0)) e (operacao = "/") entao
      resultado <- verdadeiro
   senao
      resultado <- falso
   fimse
   
   retorne resultado
fimfuncao

funcao somar(x, y: real): real
// Operação de adição.
inicio
   retorne x + y
fimfuncao

funcao subtrair(x, y: real): real
// Operação de subtração.
inicio
   retorne x - y
fimfuncao

funcao multiplicar(x, y: real): real
// Operação de multiplicação.
inicio
   retorne x * y
fimfuncao

funcao dividir(x, y: real): real
// Operação de divisão.
var
   resultado: real
inicio
   resultado <- 0

   // Previne que seja realizada uma divisão por 0 (zero).
   se (checarDivisaoPorZero() = falso) entao
      resultado <- x / y
   fimse

   retorne resultado
fimfuncao

procedimento redefinir(tudo: logico)
// Redefine os valores das variáveis.
inicio
   // Previne que os operandos sejam redefinidos no loop de opoeradores.
   // Só serão redefinidos no início do loop principal.
   se tudo = verdadeiro entao
      operandos[0] <- 0
      operandos[1] <- 0
   fimse

   operacao <- ""
   resultado <- 0
fimprocedimento

inicio
   continua <- "S"
   // Permite que o usuário realize mais de uma operação.
   enquanto continua = "S" faca
      // Redefine todas as variáveis.
      redefinir(verdadeiro)

      limpatela
      // Solicita os operandos a serem calculados.
      escreval("Digite os dois operandos consecutivamente: ")
      leia(operandos[0])
      leia(operandos[1])

      // Solicita um operador, até receber uma opção válida.
      enquanto operacao = "" faca
         // Redefine as variáveis, exceto os operandos.
         redefinir(falso)

         limpatela
         // Solicita a operação a ser realizada.
         escreval("Escolha a operação: ")
         escreval("")
         escreval("(+) Somar")
         escreval("(-) Subtrair")
         escreval("(*) Multiplicar")
         escreval("(/) Dividir")
         escreval("")
         leia(operacao)

         // Verifica a operação e realiza o cálculo sobre os dois operandos.
         escolha operacao
         caso "+"
            resultado <- somar(operandos[0], operandos[1])
         caso "-"
            resultado <- subtrair(operandos[0], operandos[1])
         caso "*"
            resultado <- multiplicar(operandos[0], operandos[1])
         caso "/"
            resultado <- dividir(operandos[0], operandos[1])
         outrocaso
            // Se o operador não for válido, o loop irá se repetir e será
            // solicitado novamente.
            operacao <- ""
            escreval("Operação inválida!")
            timer 1000
            timer 0
         fimescolha
      fimenquanto

      limpatela

      // Verifica se a operação foi válida e gerou um resultado, ou se houve
      // tentativa de divisão por zero, que não é permitido.
      se (checarDivisaoPorZero()) entao
         escreval("Não é possível dividir por 0 (zero).")
      senao
         // Exibe o resultado da operação.
         escreval("Resultado: ", resultado)
      fimse

      // Pergunta se o usuário deseja realizar outro cálculo.
      // Se sim, o loop principal será novamente executado.
      // Caso contrário, o algoritmo será encerrado.
      escreval("")
      escreval("Realizar nova operação?")
      escreval("(S) Sim - (N) Não")
      leia(continua)
   fimenquanto
fimalgoritmo
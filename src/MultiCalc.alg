algoritmo "MultiCalc"
// Disciplina   :  Lógica de Programação
// Professora   : Tatyane Calixto
// Descrição   : Faz múltiplos cálculos por vez.
// Autor(a)    : Herberth Leão
// Data atual  : 24/09/2020
var
   a, b: inteiro
   continua: caracter
   contador: inteiro

funcao checarDivisaoPorZero(): logico
// Verifica se há um número sendo dividido por 0 (zero), para que possa ser
// prevenido.
var
   resultado: logico
inicio
   se (a = 0) ou (b = 0) entao
      resultado <- verdadeiro
   senao
      resultado <- falso
   fimse

   retorne resultado
fimfuncao

funcao somar(x, y: inteiro): real
// Operação de adição.
inicio
   retorne x + y
fimfuncao

funcao subtrair(x, y: inteiro): real
// Operação de subtração.
inicio
   retorne x - y
fimfuncao

funcao multiplicar(x, y: inteiro): real
// Operação de multiplicação.
inicio
   retorne x * y
fimfuncao

funcao dividir(x, y: inteiro): real
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

funcao extrairRaizQuadrada(x: inteiro): real
// Extração de raiz quadrada.
inicio
   retorne raizq(x)
fimfuncao

funcao extrairDivisorInteiro(x: inteiro; divisor: inteiro): inteiro
// Extração de divisores inteiros.
var
   resultado: inteiro
inicio
   se (x % divisor) = 0 entao
      resultado <- divisor
   senao
      resultado <- 0
   fimse

   retorne resultado
fimfuncao

funcao fatorar(x: inteiro): real
// Operação de fatoração.
var
   fatorial: inteiro
   contador: inteiro
inicio
   fatorial <- 1

   para contador de 1 ate x faca
      fatorial <- fatorial * contador
   fimpara

   retorne fatorial
fimfuncao

procedimento redefinir()
// Redefine os valores das variáveis.
inicio
   a <- 0
   b <- 0
fimprocedimento

inicio
   continua <- "S"
   // Permite que o usuário realize mais de uma operação.
   enquanto continua = "S" faca
      // Redefine todas as variáveis.
      redefinir()

      limpatela
      // Solicita os operandos a serem calculados.
      escreval("Digite os dois operandos consecutivamente: ")
      leia(a)
      leia(b)

      limpatela
      escreval("Soma (A + B): ", somar(a, b))
      escreval("Subtração (A - B): ", subtrair(a, b))
      escreval("Subtração (B - A): ", subtrair(b, a))
      escreval("Multiplicação (A * B): ", multiplicar(a, b))
      se (checarDivisaoPorZero() = verdadeiro) entao
         escreval("Divisão (A / B): Não é possível dividir por 0 (zero)")
         escreval("Divisão (B / A): Não é possível dividir por 0 (zero)")
      senao
         escreval("Divisão (A / B): ", dividir(a, b))
         escreval("Divisão (B / A): ", dividir(b, a))
      fimse
      escreval("Quadrado (A): ", extrairRaizQuadrada(a))
      escreval("Quadrado (B): ", extrairRaizQuadrada(b))

      se (checarDivisaoPorZero() = verdadeiro) entao
         escreval("Divisores Inteiros (A): Não é possível dividir por 0 (zero)")
         escreval("Divisores Inteiros (B): Não é possível dividir por 0 (zero)")
      senao
         escreva("Divisores Inteiros (A): ")

         para contador de 1 ate 100 faca
            se extrairDivisorInteiro(a, contador) <> 0 entao
               escreva(contador, " ")
            fimse
         fimpara

         escreval("")

         escreva("Divisores Inteiros (B): ")

         para contador de 1 ate 100 faca
            se extrairDivisorInteiro(b, contador) <> 0 entao
               escreva(contador, " ")
            fimse
         fimpara
      fimse

      escreval("")

      escreval("Fatorial (A): ", fatorar(a))
      escreval("Fatorial (B): ", fatorar(b))

      // Pergunta se o usuário deseja realizar outro cálculo.
      // Se sim, o loop principal será novamente executado.
      // Caso contrário, o algoritmo será encerrado.
      escreval("")
      escreval("Realizar nova operação?")
      escreval("(S) Sim - (N) Não")
      leia(continua)
   fimenquanto
fimalgoritmo
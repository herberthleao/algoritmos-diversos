algoritmo "MultiCalc"
// Disciplina   :  L�gica de Programa��o
// Professora   : Tatyane Calixto
// Descri��o   : Faz m�ltiplos c�lculos por vez.
// Autor(a)    : Herberth Le�o
// Data atual  : 24/09/2020
var
   a, b: inteiro
   continua: caracter
   contador: inteiro

funcao checarDivisaoPorZero(): logico
// Verifica se h� um n�mero sendo dividido por 0 (zero), para que possa ser
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
// Opera��o de adi��o.
inicio
   retorne x + y
fimfuncao

funcao subtrair(x, y: inteiro): real
// Opera��o de subtra��o.
inicio
   retorne x - y
fimfuncao

funcao multiplicar(x, y: inteiro): real
// Opera��o de multiplica��o.
inicio
   retorne x * y
fimfuncao

funcao dividir(x, y: inteiro): real
// Opera��o de divis�o.
var
   resultado: real
inicio
   resultado <- 0

   // Previne que seja realizada uma divis�o por 0 (zero).
   se (checarDivisaoPorZero() = falso) entao
      resultado <- x / y
   fimse

   retorne resultado
fimfuncao

funcao extrairRaizQuadrada(x: inteiro): real
// Extra��o de raiz quadrada.
inicio
   retorne raizq(x)
fimfuncao

funcao extrairDivisorInteiro(x: inteiro; divisor: inteiro): inteiro
// Extra��o de divisores inteiros.
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
// Opera��o de fatora��o.
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
// Redefine os valores das vari�veis.
inicio
   a <- 0
   b <- 0
fimprocedimento

inicio
   continua <- "S"
   // Permite que o usu�rio realize mais de uma opera��o.
   enquanto continua = "S" faca
      // Redefine todas as vari�veis.
      redefinir()

      limpatela
      // Solicita os operandos a serem calculados.
      escreval("Digite os dois operandos consecutivamente: ")
      leia(a)
      leia(b)

      limpatela
      escreval("Soma (A + B): ", somar(a, b))
      escreval("Subtra��o (A - B): ", subtrair(a, b))
      escreval("Subtra��o (B - A): ", subtrair(b, a))
      escreval("Multiplica��o (A * B): ", multiplicar(a, b))
      se (checarDivisaoPorZero() = verdadeiro) entao
         escreval("Divis�o (A / B): N�o � poss�vel dividir por 0 (zero)")
         escreval("Divis�o (B / A): N�o � poss�vel dividir por 0 (zero)")
      senao
         escreval("Divis�o (A / B): ", dividir(a, b))
         escreval("Divis�o (B / A): ", dividir(b, a))
      fimse
      escreval("Quadrado (A): ", extrairRaizQuadrada(a))
      escreval("Quadrado (B): ", extrairRaizQuadrada(b))

      se (checarDivisaoPorZero() = verdadeiro) entao
         escreval("Divisores Inteiros (A): N�o � poss�vel dividir por 0 (zero)")
         escreval("Divisores Inteiros (B): N�o � poss�vel dividir por 0 (zero)")
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

      // Pergunta se o usu�rio deseja realizar outro c�lculo.
      // Se sim, o loop principal ser� novamente executado.
      // Caso contr�rio, o algoritmo ser� encerrado.
      escreval("")
      escreval("Realizar nova opera��o?")
      escreval("(S) Sim - (N) N�o")
      leia(continua)
   fimenquanto
fimalgoritmo
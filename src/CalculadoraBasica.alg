algoritmo "CalculadoraBasica"
// Disciplina   :  L�gica de Programa��o
// Professora   : Tatyane Calixto
// Descri��o   : Realiza opera��es aritm�ticas b�sicas sobre dois n�meros.
// Autor(a)    : Herberth Le�o
// Data atual  : 22/09/2020
var
   operandos: vetor[0..1] de real
   operacao: caracter
   resultado: real
   continua: caracter

funcao checarDivisaoPorZero(): logico
// Verifica se h� um n�mero sendo dividido por 0 (zero), para que possa ser
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
// Opera��o de adi��o.
inicio
   retorne x + y
fimfuncao

funcao subtrair(x, y: real): real
// Opera��o de subtra��o.
inicio
   retorne x - y
fimfuncao

funcao multiplicar(x, y: real): real
// Opera��o de multiplica��o.
inicio
   retorne x * y
fimfuncao

funcao dividir(x, y: real): real
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

procedimento redefinir(tudo: logico)
// Redefine os valores das vari�veis.
inicio
   // Previne que os operandos sejam redefinidos no loop de opoeradores.
   // S� ser�o redefinidos no in�cio do loop principal.
   se tudo = verdadeiro entao
      operandos[0] <- 0
      operandos[1] <- 0
   fimse

   operacao <- ""
   resultado <- 0
fimprocedimento

inicio
   continua <- "S"
   // Permite que o usu�rio realize mais de uma opera��o.
   enquanto continua = "S" faca
      // Redefine todas as vari�veis.
      redefinir(verdadeiro)

      limpatela
      // Solicita os operandos a serem calculados.
      escreval("Digite os dois operandos consecutivamente: ")
      leia(operandos[0])
      leia(operandos[1])

      // Solicita um operador, at� receber uma op��o v�lida.
      enquanto operacao = "" faca
         // Redefine as vari�veis, exceto os operandos.
         redefinir(falso)

         limpatela
         // Solicita a opera��o a ser realizada.
         escreval("Escolha a opera��o: ")
         escreval("")
         escreval("(+) Somar")
         escreval("(-) Subtrair")
         escreval("(*) Multiplicar")
         escreval("(/) Dividir")
         escreval("")
         leia(operacao)

         // Verifica a opera��o e realiza o c�lculo sobre os dois operandos.
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
            // Se o operador n�o for v�lido, o loop ir� se repetir e ser�
            // solicitado novamente.
            operacao <- ""
            escreval("Opera��o inv�lida!")
            timer 1000
            timer 0
         fimescolha
      fimenquanto

      limpatela

      // Verifica se a opera��o foi v�lida e gerou um resultado, ou se houve
      // tentativa de divis�o por zero, que n�o � permitido.
      se (checarDivisaoPorZero()) entao
         escreval("N�o � poss�vel dividir por 0 (zero).")
      senao
         // Exibe o resultado da opera��o.
         escreval("Resultado: ", resultado)
      fimse

      // Pergunta se o usu�rio deseja realizar outro c�lculo.
      // Se sim, o loop principal ser� novamente executado.
      // Caso contr�rio, o algoritmo ser� encerrado.
      escreval("")
      escreval("Realizar nova opera��o?")
      escreval("(S) Sim - (N) N�o")
      leia(continua)
   fimenquanto
fimalgoritmo
algoritmo "ValidaData"
// Disciplina   :  L�gica de Programa��o
// Professora   : Tatyane Calixto
// Descri��o   : Verifica se a data fornecida � v�lida.
// Autor(a)    : Herberth Le�o
// Data atual  : 08/10/2020
var
   contador: inteiro
   // Armazena o dia, m�s e ano fornecidos pelo usu�rio.
   data: vetor[0..2] de inteiro
   // Armazena os valores l�gicos das valida��es.
   dia, mes, ano: logico

funcao validarDia(dia, mes: inteiro; bissexto: logico): logico
// Valida o dia, utilizando os crit�rios do m�s e ano fornecidos.
var
   validacao: logico
   mesesDeTrinta: vetor[0..3] de inteiro
inicio
   validacao <- falso

   // Define os meses que possuem 30 dias.
   mesesDeTrinta[0] <- 4
   mesesDeTrinta[1] <- 6
   mesesDeTrinta[2] <- 9
   mesesDeTrinta[3] <- 11

   // Verifica se o dia fornecido est� entre 1 e 31.
   se (dia >= 1) e (dia <= 31) entao
      // Contempla todos os meses, inclusive os que possuem 31 dias.
      validacao <- verdadeiro

      // Verifica os crit�rios do dia para fevereiro.
      // Se o dia for maior que 29, ou igual a 29 em ano n�o-bissexto,
      // define o dia como inv�lido.
      se (mes = 2) e ((dia > 29) ou ((dia = 29) e (bissexto = falso))) entao
         validacao <- falso
      fimse
      
      // Verifica os crit�rios do dia, em meses de 30 dias.
      para contador de 0 ate 3 faca
         // Verifica se o m�s em quest�o � de 30 e se o dia fornecido � 31.
         se (mes = mesesDeTrinta[contador]) e (dia = 31) entao
            validacao <- falso
         fimse
      fimpara
   fimse

   retorne validacao
fimfuncao

funcao validarMes(mes: inteiro): logico
// Verifica se o m�s fornecido � v�lido.
var
   validacao: logico
inicio
   validacao <- falso
   
   // Checa se � um m�s entre 1 e 12.
   se (mes >= 1) e (mes <= 12) entao
      validacao <- verdadeiro
   fimse

   retorne validacao
fimfuncao

funcao validarAno(ano: inteiro): logico
// Verifica se o ano fornecido � v�lido.
var
   validacao: logico
inicio
   validacao <- falso
   
   // Qualquer ano acima de 0 (zero) � v�lido.
   se ano > 0 entao
      validacao <- verdadeiro
   fimse
   
   retorne validacao
fimfuncao

funcao checarAnoBissexto(ano: inteiro): logico
// Verifica se o ano fornecido � bissexto.
// Ajuda a determinar a validade do dia 29 de fevereiro.
var
   bissexto: logico
inicio
   bissexto <- falso
   
   // Se o ano for divis�vel 400, ou por 4 e n�o por 100, significa
   // que � bissexto.
   se (ano % 400 = 0) ou ((ano % 4 = 0) e (ano % 100 <> 0)) entao
      bissexto <- verdadeiro
   fimse
   
   retorne bissexto
fimfuncao

inicio
   escreval("Digite o dia, m�s e ano respectivamente:")
   // L� o dia, m�s e ano.
   para contador de 0 ate 2 faca
      leia(data[contador])
   fimpara
   
   // Valida todos os dados.
   dia <- validarDia(data[0], data[1], checarAnoBissexto(data[2]))
   mes <- validarMes(data[1])
   ano <- validarAno(data[2])
   
   limpatela
   // Se todos os dados forem v�lidos, exibe como data v�lida.
   // Caso contr�rio, exibe como inv�lida.
   se (dia = verdadeiro) e (mes = verdadeiro) e (ano = verdadeiro) entao
      escreval("A data ", data[0], "/", data[1], "/", data[2], " � v�lida!")
   senao
      escreval("A data ", data[0], "/", data[1], "/", data[2], " � inv�lida!")
   fimse
fimalgoritmo
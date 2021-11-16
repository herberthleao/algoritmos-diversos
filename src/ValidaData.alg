algoritmo "ValidaData"
// Disciplina   :  Lógica de Programação
// Professora   : Tatyane Calixto
// Descrição   : Verifica se a data fornecida é válida.
// Autor(a)    : Herberth Leão
// Data atual  : 08/10/2020
var
   contador: inteiro
   // Armazena o dia, mês e ano fornecidos pelo usuário.
   data: vetor[0..2] de inteiro
   // Armazena os valores lógicos das validações.
   dia, mes, ano: logico

funcao validarDia(dia, mes: inteiro; bissexto: logico): logico
// Valida o dia, utilizando os critérios do mês e ano fornecidos.
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

   // Verifica se o dia fornecido está entre 1 e 31.
   se (dia >= 1) e (dia <= 31) entao
      // Contempla todos os meses, inclusive os que possuem 31 dias.
      validacao <- verdadeiro

      // Verifica os critérios do dia para fevereiro.
      // Se o dia for maior que 29, ou igual a 29 em ano não-bissexto,
      // define o dia como inválido.
      se (mes = 2) e ((dia > 29) ou ((dia = 29) e (bissexto = falso))) entao
         validacao <- falso
      fimse
      
      // Verifica os critérios do dia, em meses de 30 dias.
      para contador de 0 ate 3 faca
         // Verifica se o mês em questão é de 30 e se o dia fornecido é 31.
         se (mes = mesesDeTrinta[contador]) e (dia = 31) entao
            validacao <- falso
         fimse
      fimpara
   fimse

   retorne validacao
fimfuncao

funcao validarMes(mes: inteiro): logico
// Verifica se o mês fornecido é válido.
var
   validacao: logico
inicio
   validacao <- falso
   
   // Checa se é um mês entre 1 e 12.
   se (mes >= 1) e (mes <= 12) entao
      validacao <- verdadeiro
   fimse

   retorne validacao
fimfuncao

funcao validarAno(ano: inteiro): logico
// Verifica se o ano fornecido é válido.
var
   validacao: logico
inicio
   validacao <- falso
   
   // Qualquer ano acima de 0 (zero) é válido.
   se ano > 0 entao
      validacao <- verdadeiro
   fimse
   
   retorne validacao
fimfuncao

funcao checarAnoBissexto(ano: inteiro): logico
// Verifica se o ano fornecido é bissexto.
// Ajuda a determinar a validade do dia 29 de fevereiro.
var
   bissexto: logico
inicio
   bissexto <- falso
   
   // Se o ano for divisível 400, ou por 4 e não por 100, significa
   // que é bissexto.
   se (ano % 400 = 0) ou ((ano % 4 = 0) e (ano % 100 <> 0)) entao
      bissexto <- verdadeiro
   fimse
   
   retorne bissexto
fimfuncao

inicio
   escreval("Digite o dia, mês e ano respectivamente:")
   // Lê o dia, mês e ano.
   para contador de 0 ate 2 faca
      leia(data[contador])
   fimpara
   
   // Valida todos os dados.
   dia <- validarDia(data[0], data[1], checarAnoBissexto(data[2]))
   mes <- validarMes(data[1])
   ano <- validarAno(data[2])
   
   limpatela
   // Se todos os dados forem válidos, exibe como data válida.
   // Caso contrário, exibe como inválida.
   se (dia = verdadeiro) e (mes = verdadeiro) e (ano = verdadeiro) entao
      escreval("A data ", data[0], "/", data[1], "/", data[2], " é válida!")
   senao
      escreval("A data ", data[0], "/", data[1], "/", data[2], " é inválida!")
   fimse
fimalgoritmo
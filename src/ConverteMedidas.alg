algoritmo "ConverteMedidas"
// Disciplina   :  L�gica de Programa��o
// Professora   : Tatyane Calixto
// Descri��o   : Converte valores de uma unidade de medida para outra.
// Autor(a)    : Herberth Le�o
// Data atual  : 20/10/2020
var
   unidades: vetor[1..5, 1..5] de real
   medidas: vetor[1..5] de caractere
   continua: caractere

// Carrega todos os dados referentes �s medidas, para serem utilizadas nos
// c�lculos de convers�o.
procedimento inicializar()
inicio
   medidas[1] <- "Metro"
   medidas[2] <- "Polegada"
   medidas[3] <- "P�"
   medidas[4] <- "Jarda"
   medidas[5] <- "Milha"

   // Metro
   unidades[1, 1] <- 1 // Metro
   unidades[1, 2] <- 39.37 // Polegada
   unidades[1, 3] <- 3.28 // P�
   unidades[1, 4] <- 1.09 // Jarda
   unidades[1, 5] <- 0.00062 // Milha

   // Polegada
   unidades[2, 1] <- 0.025 // Metro
   unidades[2, 2] <- 1 // Polegada
   unidades[2, 3] <- 0.083 // P�
   unidades[2, 4] <- 0.027 // Jarda
   unidades[2, 5] <- 0.00002 // Milha

   // P�
   unidades[3, 1] <- 0.304 // Metro
   unidades[3, 2] <- 12 // Polegada
   unidades[3, 3] <- 1 // P�
   unidades[3, 4] <- 0.333 // Jarda
   unidades[3, 5] <- 0.00019 // Milha

   // Jarda
   unidades[4, 1] <- 0.914 // Metro
   unidades[4, 2] <- 36 // Polegada
   unidades[4, 3] <- 3 // P�
   unidades[4, 4] <- 1 // Jarda
   unidades[4, 5] <- 0.00057 // Milha

   // Milha
   unidades[5, 1] <- 1609.34 // Metro
   unidades[5, 2] <- 63360 // Polegada
   unidades[5, 3] <- 5280 // P�
   unidades[5, 4] <- 1760 // Jarda
   unidades[5, 5] <- 1 // Milha
fimprocedimento

// Rotina principal.
procedimento gerenciarInterface()
var
   entrada, saida: inteiro
   valor, result: real
inicio
   // Pega o tipo de medida do valor a ser convertido.
   entrada <- lerMedida("entrada")

   // Pega o valor a ser convertido.
   escreva("Valor em ", medidas[entrada], "s: ")
   leia(valor)

   // Pega o tipo de medida do resultado.
   saida <- lerMedida("sa�da")

   // Realiza a conevers�o.
   result <- valor * unidades[entrada, saida]

   // Exibe o resultado formatado.
   exibirResultado(entrada, saida, valor, result)
fimprocedimento

// L� os tipos de medidas de entrada e de sa�da.
funcao lerMedida(es: caractere): inteiro
var
   medida, i: inteiro
inicio
   // Solicita o tipo de medida at� que seja v�lido.
   repita
      exibirTitulo()

      // Exibe as op��es de medidas.
      para i de 1 ate 5 faca
         escreval(i, " - ", medidas[i])
      fimpara

      escreval("")
      escreva("Medida de ", es, " (1 a 5): ")
      leia(medida)
   ate (medida > 0) e (medida < 6)

   retorne medida
fimfuncao

// Exibe o resultado formatado.
procedimento exibirResultado(entrada, saida: inteiro; valor, result: real)
inicio
   exibirTitulo()

   // Formata o resultado.
   escreva(valor, " ", medidas[entrada], "(s) = ")
   escreval(result, " ", medidas[saida], "(s)")

   // Se "S", realiza uma nova conves�o. Se "N", encerra o algoritmo.
   escreval("")
   escreval("Deseja continuar? (S - N)")
   leia(continua)
fimprocedimento

// Exibe um cabe�alho em todas as se��es.
procedimento exibirTitulo()
inicio
   limpatela
   escreval("Conversor de Medidas - v0.1.0")
   escreval("")
fimprocedimento

inicio
   continua <- "S"

   enquanto continua = "S" faca
      inicializar()
      gerenciarInterface()
   fimenquanto
fimalgoritmo
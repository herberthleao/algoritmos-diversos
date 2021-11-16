algoritmo "NumerosRomanos"
// Disciplina   :  Lógica de Programação
// Professora   : Tatyane Calixto
// Descrição   : Converte números decimais para romanos.
// Autor(a)    : Herberth Leão
// Data atual  : 22/10/2020
var
   romano: caractere
   n: inteiro

procedimento converterCentena()
inicio
   se n >= 900 entao // Acima de 900.
      atualizar("CM", 900)
   fimse

   se (n < 900) e (n >= 500) entao // Entre 899 e 500.
      atualizar("D", 500)
   fimse

   se (n < 500) e (n >= 400) entao // Entre 499 e 400.
      atualizar("CD", 400)
   fimse

   se (n < 400) e (n >= 100) entao // Entre 399 e 100.
      atualizar("C", 100)
   fimse
fimprocedimento

procedimento converterDezena()
inicio
   se (n < 100) e (n >= 90) entao // Entre 99 e 90.
      atualizar("XC", 90)
   fimse

   se (n < 90) e (n >= 50) entao // Entre 89 e 50.
      atualizar("L", 50)
   fimse

   se (n < 50) e (n >= 40) entao // Entre 49 e 40.
      atualizar("XL", 40)
   fimse

   se (n < 40) e (n >= 10) entao // Entre 39 e 10.
      atualizar("X", 10)
   fimse
fimprocedimento

procedimento converterUnidade()
inicio
   se n = 9 entao // Sendo 9.
      atualizar("IX", 9)
   fimse

   se (n < 9) e (n >= 5) entao // Entre 8 e 5.
      atualizar("V", 5)
   fimse

   se n = 4 entao // Sendo 4.
      atualizar("IV", 4)
   fimse

   se (n < 4) e (n >= 1) entao // Entre 3 e 1.
      atualizar("I", 1)
   fimse
fimprocedimento

procedimento atualizar(alg: caractere; num: inteiro)
inicio
   romano <- romano + alg // Concatena os algarismos.
   n <- n - num // Subtrai valor do número integral, para o próximo algarismo.
fimprocedimento

inicio
   // Repete até receber um número decimal válido.
   repita
      limpatela
      escreva("Numeração Decimal (1 a 999): ")
      leia(n)
   ate (n > 0) e (n < 1000)

   // Converter o número decimal para romano.
   enquanto n <> 0 faca
      converterCentena()
      converterDezena()
      converterUnidade()
   fimenquanto

   escreval("Numeração Romana: ", romano)
fimalgoritmo
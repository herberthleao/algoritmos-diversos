algoritmo "NumerosPrimos"
// Disciplina   :  Lógica de Programação
// Professora   : Tatyane Calixto
// Descrição   : Calcula e exibe os 20 primeiros números primos.
// Autor(a)    : Herberth Leão
// Data atual  : 15/10/2020
var
   primos: vetor[0..19] de inteiro
   i, atual: inteiro
   primo: logico

funcao checarPrimo(n: inteiro): logico
// Verifica se o número fornecido é um número primo.
var
   i: inteiro
   limite: inteiro
   primo: logico
inicio
   // Parte do pressuposto que se trata de um número primo.
   primo <- verdadeiro
   
   // Define o limite do loop.
   limite <- n - 1

   // As verificações só acontecerão até N - 1, porque o número pode ser
   // divisível por ele mesmo, mas não pelos números anteriores.
   para i de 2 ate limite faca
      // Se o número for divisível por qualquer um no intervalo do loop,
      // signfica que não é um número primo.
      se n % i = 0 entao
         primo <- falso
      fimse
   fimpara

   retorne primo
fimfuncao
inicio
   // Armazena os números a serem verificados (1 até N).
   atual <- 1
   
   // Itera sobre o vetor para armazenar os 20 primeiros números primos.
   para i de 0 ate 19 faca

      primo <- falso

      // Repete até o próximo número primo ser encontrado.
      repita
         // Atualiza o número, para verificar se é primo. Inicia em 2.
         atual <- atual + 1

         // Verifica se o novo número é primo.
         primo <- checarPrimo(atual)
      ate primo = verdadeiro

      // Se o número é primo, armazena na posição atual do vetor.
      primos[i] <- atual
   fimpara

   // Exibe os resultados.
   escreva("Números primos: ")
   para i de 0 ate 19 faca
      escreva(primos[i], " ")
   fimpara
fimalgoritmo
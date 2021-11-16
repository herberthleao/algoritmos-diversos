algoritmo "FiltroParImpar"
// Disciplina   :  Lógica de Programação
// Professora   : Tatyane Calixto
// Descrição   : Separa números pares e ímpares em vetores distintos e os exibe.
// Autor(a)    : Herberth Leão
// Data atual  : 29/09/2020
var
   pares: vetor[0..4] de inteiro
   impares: vetor[0..4] de inteiro
   n: inteiro
   i: inteiro

procedimento redefinir()
// Define todas as posições do vetor pra -1, para que na iteração seja exibido
// apenas os números que foram fornecidos pelo usuário.
inicio
   para i de 0 ate 4 faca
      pares[i] <- -1
      impares[i] <- -1
   fimpara
fimprocedimento

funcao checarPar(n: inteiro): logico
// Verifica se um número é par e retorna verdadeiro.
// Caso contrário, retorna falso.
var
   resultado: logico
inicio
   se n % 2 = 0 entao
      resultado <- verdadeiro
   senao
      resultado <- falso
   fimse

   retorne resultado
fimfuncao

procedimento exibir()
// Exibe os números em sequência: primeiro os pares e depois os ímpares.
inicio
   limpatela
   escreva("Números sequenciados: ")

   // Exibe os números pares.
   para i de 0 ate 4 faca
      se pares[i] <> -1 entao
         escreva(pares[i], " ")
      fimse
   fimpara

   // Exibe os números ímpares.
   para i de 0 ate 4 faca
      se impares[i] <> -1 entao
         escreva(impares[i], " ")
      fimse
   fimpara
fimprocedimento

inicio
   redefinir()
   // Lê cinco números aleatórios, fornecidos pelo usuário.
   escreval("Digite 5 números:")

   para i de 0 ate 4 faca
      leia(n)
      // Se for par ou ímpar, armazena no vetor adequado.
      se checarPar(n) = verdadeiro entao
         pares[i] <- n
      senao
         impares[i] <- n
      fimse
   fimpara

   // Exibe ambos os vetores com os números em sequência.
   exibir()
fimalgoritmo
algoritmo "FiltroParImpar"
// Disciplina   :  L�gica de Programa��o
// Professora   : Tatyane Calixto
// Descri��o   : Separa n�meros pares e �mpares em vetores distintos e os exibe.
// Autor(a)    : Herberth Le�o
// Data atual  : 29/09/2020
var
   pares: vetor[0..4] de inteiro
   impares: vetor[0..4] de inteiro
   n: inteiro
   i: inteiro

procedimento redefinir()
// Define todas as posi��es do vetor pra -1, para que na itera��o seja exibido
// apenas os n�meros que foram fornecidos pelo usu�rio.
inicio
   para i de 0 ate 4 faca
      pares[i] <- -1
      impares[i] <- -1
   fimpara
fimprocedimento

funcao checarPar(n: inteiro): logico
// Verifica se um n�mero � par e retorna verdadeiro.
// Caso contr�rio, retorna falso.
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
// Exibe os n�meros em sequ�ncia: primeiro os pares e depois os �mpares.
inicio
   limpatela
   escreva("N�meros sequenciados: ")

   // Exibe os n�meros pares.
   para i de 0 ate 4 faca
      se pares[i] <> -1 entao
         escreva(pares[i], " ")
      fimse
   fimpara

   // Exibe os n�meros �mpares.
   para i de 0 ate 4 faca
      se impares[i] <> -1 entao
         escreva(impares[i], " ")
      fimse
   fimpara
fimprocedimento

inicio
   redefinir()
   // L� cinco n�meros aleat�rios, fornecidos pelo usu�rio.
   escreval("Digite 5 n�meros:")

   para i de 0 ate 4 faca
      leia(n)
      // Se for par ou �mpar, armazena no vetor adequado.
      se checarPar(n) = verdadeiro entao
         pares[i] <- n
      senao
         impares[i] <- n
      fimse
   fimpara

   // Exibe ambos os vetores com os n�meros em sequ�ncia.
   exibir()
fimalgoritmo
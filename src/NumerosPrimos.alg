algoritmo "NumerosPrimos"
// Disciplina   :  L�gica de Programa��o
// Professora   : Tatyane Calixto
// Descri��o   : Calcula e exibe os 20 primeiros n�meros primos.
// Autor(a)    : Herberth Le�o
// Data atual  : 15/10/2020
var
   primos: vetor[0..19] de inteiro
   i, atual: inteiro
   primo: logico

funcao checarPrimo(n: inteiro): logico
// Verifica se o n�mero fornecido � um n�mero primo.
var
   i: inteiro
   limite: inteiro
   primo: logico
inicio
   // Parte do pressuposto que se trata de um n�mero primo.
   primo <- verdadeiro
   
   // Define o limite do loop.
   limite <- n - 1

   // As verifica��es s� acontecer�o at� N - 1, porque o n�mero pode ser
   // divis�vel por ele mesmo, mas n�o pelos n�meros anteriores.
   para i de 2 ate limite faca
      // Se o n�mero for divis�vel por qualquer um no intervalo do loop,
      // signfica que n�o � um n�mero primo.
      se n % i = 0 entao
         primo <- falso
      fimse
   fimpara

   retorne primo
fimfuncao
inicio
   // Armazena os n�meros a serem verificados (1 at� N).
   atual <- 1
   
   // Itera sobre o vetor para armazenar os 20 primeiros n�meros primos.
   para i de 0 ate 19 faca

      primo <- falso

      // Repete at� o pr�ximo n�mero primo ser encontrado.
      repita
         // Atualiza o n�mero, para verificar se � primo. Inicia em 2.
         atual <- atual + 1

         // Verifica se o novo n�mero � primo.
         primo <- checarPrimo(atual)
      ate primo = verdadeiro

      // Se o n�mero � primo, armazena na posi��o atual do vetor.
      primos[i] <- atual
   fimpara

   // Exibe os resultados.
   escreva("N�meros primos: ")
   para i de 0 ate 19 faca
      escreva(primos[i], " ")
   fimpara
fimalgoritmo
algoritmo "CalculaMedia"
// Disciplina   :  L�gica de Programa��o
// Professora   : Tatyane Calixto
// Descri��o   : Calcula a m�dia aritm�tica de tr�s n�meros.
// Autor(a)    : Herberth Le�o
// Data atual  : 22/09/2020
var
   notas: vetor[0..1] de real
   contador: inteiro
   total: real
inicio
   // L� as notas a serem calculadas e as armazena em um vetor.
   para contador de 0 ate 1 faca
      escreva("Digite a pr�xima nota a ser calculada: ")
      leia(notas[contador])
   fimpara

   // Soma todas as notas do vetor.
   para contador de 0 ate 1 faca
      total <- total + notas[contador]
   fimpara

   // Calcula a m�dia e exibe.
   escreval("Sua m�dia aritm�tica � ", total / 3)
fimalgoritmo
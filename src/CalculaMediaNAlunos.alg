algoritmo "MediaNAlunos"
// Disciplina   :  L�gica de Programa��o
// Professora   : Tatyane Calixto
// Descri��o   : Calcula a m�dia de N alunos.
// Autor(a)    : Herberth Le�o
// Data atual  : 22/09/2020
var
   alunos: inteiro
   contador: inteiro
   notas: vetor[0..1] de real
   media: real
inicio
   // L� qunantos alunos precisam de c�lculo de m�dia.
   escreval("Digite a quantidade de alunos: ")
   leia(alunos)

   // Calcula a m�dia at� o n�mero determinado.
   para contador de 0 ate alunos faca
      // L� as notas.
      escreva("Digite a primeira nota: ")
      leia(notas[0])

      escreva("Digite a segunda nota: ")
      leia(notas[1])

      // Calcula a m�dia aritm�tica.
      media <- (notas[0] + notas[1]) / 2

      // Se a nota � maior ou igual a 7, exibe aprova��o.
      // Caso contr�rio, exibe reprova��o.
      se (media >= 7) entao
         escreval("Estudante passou, com m�dia ", media)
      senao
         escreval("Estudante n�o passou, com m�dia ", media)
      fimse
   fimpara
fimalgoritmo
algoritmo "MediaNAlunos"
// Disciplina   :  Lógica de Programação
// Professora   : Tatyane Calixto
// Descrição   : Calcula a média de N alunos.
// Autor(a)    : Herberth Leão
// Data atual  : 22/09/2020
var
   alunos: inteiro
   contador: inteiro
   notas: vetor[0..1] de real
   media: real
inicio
   // Lê qunantos alunos precisam de cálculo de média.
   escreval("Digite a quantidade de alunos: ")
   leia(alunos)

   // Calcula a média até o número determinado.
   para contador de 0 ate alunos faca
      // Lê as notas.
      escreva("Digite a primeira nota: ")
      leia(notas[0])

      escreva("Digite a segunda nota: ")
      leia(notas[1])

      // Calcula a média aritmética.
      media <- (notas[0] + notas[1]) / 2

      // Se a nota é maior ou igual a 7, exibe aprovação.
      // Caso contrário, exibe reprovação.
      se (media >= 7) entao
         escreval("Estudante passou, com média ", media)
      senao
         escreval("Estudante não passou, com média ", media)
      fimse
   fimpara
fimalgoritmo
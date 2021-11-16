algoritmo "CalculaMedia"
// Disciplina   :  Lógica de Programação
// Professora   : Tatyane Calixto
// Descrição   : Calcula a média aritmética de três números.
// Autor(a)    : Herberth Leão
// Data atual  : 22/09/2020
var
   notas: vetor[0..1] de real
   contador: inteiro
   total: real
inicio
   // Lê as notas a serem calculadas e as armazena em um vetor.
   para contador de 0 ate 1 faca
      escreva("Digite a próxima nota a ser calculada: ")
      leia(notas[contador])
   fimpara

   // Soma todas as notas do vetor.
   para contador de 0 ate 1 faca
      total <- total + notas[contador]
   fimpara

   // Calcula a média e exibe.
   escreval("Sua média aritmética é ", total / 3)
fimalgoritmo
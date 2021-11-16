algoritmo "AlunosReprovados"
// Disciplina   :  Lógica de Programação
// Professora   : Tatyane Calixto
// Descrição   : Exibe uma lista de estudantes em reprovação.
// Autor(a)    : Herberth Leão
// Data atual  : 20/10/2020
var
   estudantes: vetor[0..4] de caractere
   medias: vetor[0..4] de real
   i: inteiro
   reprovacao: logico
inicio
   // Lê os nomes e médias.
   para i de 0 ate 4 faca
      limpatela
      escreva("Nome: ")
      leia(estudantes[i])
      escreva("Média: ")
      leia(medias[i])
   fimpara

   // Exibe a lista de reprovados.
   limpatela
   escreval("Lista de reprovações:")

   para i de 0 ate 4 faca
      se medias[i] < 6 entao
         escreval(" - ", estudantes[i])
         reprovacao <- verdadeiro
      fimse
   fimpara

   // Se não houver reprovações, exibe mensagem.
   se nao reprovacao = verdadeiro entao
      escreval("Sem reprovações!")
   fimse
fimalgoritmo
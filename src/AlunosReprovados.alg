algoritmo "AlunosReprovados"
// Disciplina   :  L�gica de Programa��o
// Professora   : Tatyane Calixto
// Descri��o   : Exibe uma lista de estudantes em reprova��o.
// Autor(a)    : Herberth Le�o
// Data atual  : 20/10/2020
var
   estudantes: vetor[0..4] de caractere
   medias: vetor[0..4] de real
   i: inteiro
   reprovacao: logico
inicio
   // L� os nomes e m�dias.
   para i de 0 ate 4 faca
      limpatela
      escreva("Nome: ")
      leia(estudantes[i])
      escreva("M�dia: ")
      leia(medias[i])
   fimpara

   // Exibe a lista de reprovados.
   limpatela
   escreval("Lista de reprova��es:")

   para i de 0 ate 4 faca
      se medias[i] < 6 entao
         escreval(" - ", estudantes[i])
         reprovacao <- verdadeiro
      fimse
   fimpara

   // Se n�o houver reprova��es, exibe mensagem.
   se nao reprovacao = verdadeiro entao
      escreval("Sem reprova��es!")
   fimse
fimalgoritmo
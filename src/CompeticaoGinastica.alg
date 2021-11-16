algoritmo "CompeticaoGinastica"
// Disciplina   :  Lógica de Programação
// Professora   : Tatyane Calixto
// Descrição   : Calcula média de pontos em competição de ginástica.
// Autor(a)    : Herberth Leão
// Data atual  : 24/10/2020
var
   notas: vetor[1..7] de real
   // Armazena a pior e melhor nota e seus índices.
   anuladas: vetor[0..2, 0..2] de real
   nota, soma: real
   nome: caractere
   i: inteiro
inicio
   // Lê o nome do(a) atleta.
   escreva("Atleta: ")
   leia(nome)

   // Lê as sete notas.
   para i de 1 ate 7 faca
      escreva("Nota: ")
      leia(nota)

      // Calcula a melhor nota e a armazena, junto com seu índice.
      se nota > anuladas[1, 1] entao
         anuladas[1, 0] <- i
         anuladas[1, 1] <- nota
      fimse

      // Registra a nota lida.
      notas[i] <- nota
   fimpara

   // Toma como base a maior nota e seu índice, para calcular a menor nota.
   anuladas[0, 0] <- anuladas[1, 0]
   anuladas[0, 1] <- anuladas[1, 1]

   // Calcula a pior nota e a armazena, junto com seu índice.
   para i de 1 ate 7 faca
      se notas[i] < anuladas[0, 1] entao
         anuladas[0, 0] <- i
         anuladas[0, 1] <- notas[i]
      fimse
   fimpara

   // Soma todas as notas, exceto a melhor e a pior.
   para i de 1 ate 7 faca
      // Verifica se o índice é diferente dos índices da melhor e pior nota.
      se (i <> anuladas[0, 0]) e (i <> anuladas[1, 0]) entao
         soma <- soma + notas[i]
      fimse
   fimpara

   // Exibe o resultado.
   escreval("")
   escreval("Resultado final: ")
   escreval("Atleta: ", nome)
   escreval("Melhor nota: ", anuladas[1, 1])
   escreval("Pior nota: ", anuladas[0, 1])
   escreval("Média: ", (soma / 5):0:2)
fimalgoritmo
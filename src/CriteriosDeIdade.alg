algoritmo "CriteriosDeIdade"
// Disciplina   :  Lógica de Programação
// Professora   : Tatyane Calixto
// Descrição   : Define a menor, maior e média de uma sequência de idades.
// Autor(a)    : Herberth Leão
// Data atual  : 13/10/2020
var
   contador: inteiro
   idades: vetor[0..9] de inteiro
   maior, menor, media, total: inteiro

inicio
   para contador de 0 ate 9 faca
      limpatela
      // Exibe o restante de idades a serem inseridas.
      escreval("Restantes: ", 10 - contador)
      // Lê a idade.
      escreva("Digite a idade: ")
      leia(idades[contador])

      // Soma todas as idades, pra extração da média.
      total <- total + idades[contador]
      
      // Calcula a maior idade.
      se idades[contador] > maior entao
         maior <- idades[contador]
      fimse
   fimpara

   // Define a menor idade, inicialmente como a maior, para realizar as
   // comparações.
   menor <- maior
   // Calcula a menor idade.
   para contador de 0 ate 9 faca
      se idades[contador] < menor entao
         menor <- idades[contador]
      fimse
   fimpara

   // Exibe os resultados.
   limpatela
   escreval("Maior idade: ", maior)
   escreval("Menor idade: ", menor)
   escreval("Média: ", total / 10) // Extrai a média das idades.
fimalgoritmo
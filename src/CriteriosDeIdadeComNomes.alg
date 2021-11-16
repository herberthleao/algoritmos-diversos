algoritmo "CriteriosDeIdadeComNomes"
// Disciplina   :  Lógica de Programação
// Professora   : Tatyane Calixto
// Descrição   : Define a menor e maior idade, com os respectivos nomes.
// Autor(a)    : Herberth Leão
// Data atual  : 13/10/2020
var
   contador: inteiro
   nomes: vetor[0..9] de caractere
   idades: vetor[0..9] de inteiro
   maior, menor: inteiro
   temp: inteiro
inicio
   para contador de 0 ate 9 faca
      limpatela
      // Exibe o restante de dados a serem inseridos.
      escreval("Restantes: ", 10 - contador)
      // Lê o nome e a idade.
      escreva("Digite o nome: ")
      leia(nomes[contador])
      
      escreva("Digite a idade: ")
      leia(idades[contador])

      // Calcula a maior idade.
      se idades[contador] > temp entao
         temp <- idades[contador]
         // Armazena o índice da maior idade.
         maior <- contador
      fimse
   fimpara

   // Calcula a menor idade.
   para contador de 0 ate 9 faca
      se idades[contador] < temp entao
         temp <- idades[contador]
         // Armazena o índice da menor idade.
         menor <- contador
      fimse
   fimpara

   // Exibe os resultados.
   limpatela
   escreva(nomes[maior], " possui a maior idade, com ")
   escreval(idades[maior], " anos.")

   escreva(nomes[menor], " possui a menor idade, com ")
   escreval(idades[menor], " anos.")
fimalgoritmo
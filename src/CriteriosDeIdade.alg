algoritmo "CriteriosDeIdade"
// Disciplina   :  L�gica de Programa��o
// Professora   : Tatyane Calixto
// Descri��o   : Define a menor, maior e m�dia de uma sequ�ncia de idades.
// Autor(a)    : Herberth Le�o
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
      // L� a idade.
      escreva("Digite a idade: ")
      leia(idades[contador])

      // Soma todas as idades, pra extra��o da m�dia.
      total <- total + idades[contador]
      
      // Calcula a maior idade.
      se idades[contador] > maior entao
         maior <- idades[contador]
      fimse
   fimpara

   // Define a menor idade, inicialmente como a maior, para realizar as
   // compara��es.
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
   escreval("M�dia: ", total / 10) // Extrai a m�dia das idades.
fimalgoritmo
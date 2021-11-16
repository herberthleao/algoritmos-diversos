algoritmo "DescobreMaiores"
// Disciplina   : Lógica de Programação
// Professora   : Tatyane Calixto 
// Descrição   : Lê várias idades e define quantas são maiores de 18.
// Autor(a)    : Herberth Leão
// Data atual  : 06/10/2020
var
   idade: inteiro
   maiores: inteiro
   contador: inteiro
inicio
   maiores <- 0

   escreval("Digite 10 idades consecutivamente:")
   // Lê as idades.
   para contador de 0 ate 9 faca
      leia(idade)

      // Se for maior de 18, incrementa a variável.
      se idade >= 18 entao
         maiores <- maiores + 1
      fimse
   fimpara

   limpatela
   // Exibe o total de maiores de idade.
   escreval("Maiores de idade: ", maiores)
fimalgoritmo
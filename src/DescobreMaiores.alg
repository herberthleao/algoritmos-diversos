algoritmo "DescobreMaiores"
// Disciplina   : L�gica de Programa��o
// Professora   : Tatyane Calixto 
// Descri��o   : L� v�rias idades e define quantas s�o maiores de 18.
// Autor(a)    : Herberth Le�o
// Data atual  : 06/10/2020
var
   idade: inteiro
   maiores: inteiro
   contador: inteiro
inicio
   maiores <- 0

   escreval("Digite 10 idades consecutivamente:")
   // L� as idades.
   para contador de 0 ate 9 faca
      leia(idade)

      // Se for maior de 18, incrementa a vari�vel.
      se idade >= 18 entao
         maiores <- maiores + 1
      fimse
   fimpara

   limpatela
   // Exibe o total de maiores de idade.
   escreval("Maiores de idade: ", maiores)
fimalgoritmo
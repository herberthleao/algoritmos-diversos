algoritmo "RestauranteComReservas"
// Disciplina   :  L�gica de Programa��o
// Professora   : Tatyane Calixto
// Descri��o   : Exibe as reservas de um restaurante.
// Autor(a)    : Herberth Le�o
// Data atual  : 13/10/2020
var
   fumantes, nFumantes: inteiro
   contador: inteiro
   aux: logico

procedimento exibir()
// Exibe a quantidade restante de mesas dispon�veis em cada �rea.
inicio
   // Verifica se � a �ltima repeti��o.
   // Se sim, altera o estado da vari�vel de controle do loop.
   se (fumantes = 5) e (nFumantes = 5) entao
      aux <- falso
   fimse

   limpatela
   escreva("Mesas Dispon�veis: ")
   escreva("Fumantes (", 5 - fumantes, ") - ")
   escreval("N�o Fumantes (", 5 - nFumantes, ")")
   escreval("")
fimprocedimento

procedimento reservar()
// Faz a reserva e previne os erros de dados.
var
   res: caractere
inicio
   escreval("Reserva para fumante? (S - N)")
   leia(res)

   // Se o limite tiver sido atingido em uma das duas �reas, n�o ser� poss�vel
   // fazer reserva na mesma.
   se ((res  = "S") e (fumantes = 5)) ou ((res = "N") e (nFumantes = 5)) entao
      limpatela
      escreval("N�o h� mesas dispon�veis nesta �rea.")
      timer 2000
      timer 0
   senao
      // Incrementa o total e a vari�vel de controle da �rea, de acordo com a
      // escolha do usu�rio.
      escolha res
      caso "S"
         fumantes <- fumantes + 1
      caso "N"
         nFumantes <- nFumantes + 1
      outrocaso
         escreval("Op��o inv�lida!")
         timer 2000
         timer 0
      fimescolha
   fimse
fimprocedimento
inicio
   // Controla a execu��o do loop.
   aux <- verdadeiro

   enquanto aux = verdadeiro faca
      exibir()
      reservar()
   fimenquanto
fimalgoritmo
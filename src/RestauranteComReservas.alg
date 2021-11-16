algoritmo "RestauranteComReservas"
// Disciplina   :  Lógica de Programação
// Professora   : Tatyane Calixto
// Descrição   : Exibe as reservas de um restaurante.
// Autor(a)    : Herberth Leão
// Data atual  : 13/10/2020
var
   fumantes, nFumantes: inteiro
   contador: inteiro
   aux: logico

procedimento exibir()
// Exibe a quantidade restante de mesas disponíveis em cada área.
inicio
   // Verifica se é a última repetição.
   // Se sim, altera o estado da variável de controle do loop.
   se (fumantes = 5) e (nFumantes = 5) entao
      aux <- falso
   fimse

   limpatela
   escreva("Mesas Disponíveis: ")
   escreva("Fumantes (", 5 - fumantes, ") - ")
   escreval("Não Fumantes (", 5 - nFumantes, ")")
   escreval("")
fimprocedimento

procedimento reservar()
// Faz a reserva e previne os erros de dados.
var
   res: caractere
inicio
   escreval("Reserva para fumante? (S - N)")
   leia(res)

   // Se o limite tiver sido atingido em uma das duas áreas, não será possível
   // fazer reserva na mesma.
   se ((res  = "S") e (fumantes = 5)) ou ((res = "N") e (nFumantes = 5)) entao
      limpatela
      escreval("Não há mesas disponíveis nesta área.")
      timer 2000
      timer 0
   senao
      // Incrementa o total e a variável de controle da área, de acordo com a
      // escolha do usuário.
      escolha res
      caso "S"
         fumantes <- fumantes + 1
      caso "N"
         nFumantes <- nFumantes + 1
      outrocaso
         escreval("Opção inválida!")
         timer 2000
         timer 0
      fimescolha
   fimse
fimprocedimento
inicio
   // Controla a execução do loop.
   aux <- verdadeiro

   enquanto aux = verdadeiro faca
      exibir()
      reservar()
   fimenquanto
fimalgoritmo
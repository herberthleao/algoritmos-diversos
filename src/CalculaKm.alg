algoritmo "CalculaKm"
// Disciplina   :  L�gica de Programa��o
// Professora   : Tatyane Calixto 
// Descri��o   : Registra a Km do percurso de uma viagem.
// Autor(a)    : Herberth Le�o
// Data atual  : 04/10/2020
var
   total, parcial: inteiro
inicio
   enquanto total < 10000 faca
      limpatela
      escreval("Dist�ncia percorrida: ", total, " km")
      escreva("Adicionar dist�ncia (km): ")
      leia(parcial)
      total <- total + parcial
   fimenquanto
   
   limpatela
   escreval("Voc� chegou ao destino com ", total, " km percorridos.")
fimalgoritmo
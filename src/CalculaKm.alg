algoritmo "CalculaKm"
// Disciplina   :  Lógica de Programação
// Professora   : Tatyane Calixto 
// Descrição   : Registra a Km do percurso de uma viagem.
// Autor(a)    : Herberth Leão
// Data atual  : 04/10/2020
var
   total, parcial: inteiro
inicio
   enquanto total < 10000 faca
      limpatela
      escreval("Distância percorrida: ", total, " km")
      escreva("Adicionar distância (km): ")
      leia(parcial)
      total <- total + parcial
   fimenquanto
   
   limpatela
   escreval("Você chegou ao destino com ", total, " km percorridos.")
fimalgoritmo
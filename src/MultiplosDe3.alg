algoritmo "MultiplosDe3"
// Disciplina   :  Lógica de Programação
// Professora   : Tatyane Calixto 
// Descrição   : Armazena os 20 primeiros múltiplos de 3 em um vetor.
// Autor(a)    : Herberth Leão
// Data atual  : 04/10/2020
var
   multiplos: vetor[0..19] de inteiro
   contador: inteiro
   aux: inteiro
inicio
   aux <- 0
   
   escreva("Estes são os 20 primeiros múltiplos de 3: ")
   
   para contador de 0 ate 57 faca
      se (contador % 3 = 0) e (aux < 20) entao
         multiplos[aux] <- contador
         aux <- aux + 1
         escreva(contador, " ")
      fimse
   fimpara
fimalgoritmo
algoritmo "MultiplosDe3"
// Disciplina   :  L�gica de Programa��o
// Professora   : Tatyane Calixto 
// Descri��o   : Armazena os 20 primeiros m�ltiplos de 3 em um vetor.
// Autor(a)    : Herberth Le�o
// Data atual  : 04/10/2020
var
   multiplos: vetor[0..19] de inteiro
   contador: inteiro
   aux: inteiro
inicio
   aux <- 0
   
   escreva("Estes s�o os 20 primeiros m�ltiplos de 3: ")
   
   para contador de 0 ate 57 faca
      se (contador % 3 = 0) e (aux < 20) entao
         multiplos[aux] <- contador
         aux <- aux + 1
         escreva(contador, " ")
      fimse
   fimpara
fimalgoritmo
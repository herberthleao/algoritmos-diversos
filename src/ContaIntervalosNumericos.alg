algoritmo "ContaIntervalosNumericos"
// Disciplina   :  L�gica de Programa��o
// Professora   : Tatyane Calixto
// Descri��o   : Contabiliza a quantidade de n�meros de acordo com intervalos.
// Autor(a)    : Herberth Le�o
// Data atual  : 13/10/2020
var
   contadores: vetor[0..2] de inteiro
   n: inteiro
inicio
   repita
      limpatela
      escreva("Digite um n�mero (para sair, insira um negativo): ")
      leia(n)

      // Incrementa se for entre 0 e 100.
      se (n >= 0) e (n <= 100) entao
         contadores[0] <- contadores[0] + 1
      fimse

      // Incrementa se for entre 101 e 200.
      se (n > 100) e (n <= 200) entao
         contadores[1] <- contadores[1] + 1
      fimse

      // Incrementa se for acima de 200.
      se n > 200 entao
         contadores[2] <- contadores[2] + 1
      fimse
   ate n < 0

   limpatela
   escreval(contadores[0], ", entre 0 e 100.")
   escreval(contadores[1], ", entre 101 e 200.")
   escreval(contadores[2], ", acima de 200.")
fimalgoritmo
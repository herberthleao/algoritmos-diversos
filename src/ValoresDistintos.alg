algoritmo "ValoresDistintos"
// Disciplina   :  L�gica de Programa��o
// Professora   : Tatyane Calixto
// Descri��o   : L� valores distintos e armazena em vetor.
// Autor(a)    : Herberth Le�o
// Data atual  : 18/10/2020
var
   sequencia: vetor[0..4] de inteiro
   i, num: inteiro

funcao checarExist(n: inteiro): logico
// Verifica se o n�mero j� foi armazenado. Se n�o, insere no vetor.
var
   i: inteiro
   existe: logico
inicio
   existe <- falso

   para i de 0 ate 4 faca
      se sequencia[i] = n entao
         existe <- verdadeiro
      fimse
   fimpara

   retorne existe
fimfuncao

inicio
   // L� os n�meros.
   enquanto i < 5 faca
      limpatela
      escreval("Restam: ", 5 - i)
      escreval("Digite um n�mero: ")
      leia(num)

      // Se o n�mero j� foi inserido, exibe alerta.
      // Sen�o, armazena e atualiza o contador.
      se checarExist(num) = verdadeiro entao
         escreval("N�mero j� registrado!")
         timer 1000
         timer 0
      senao
         sequencia[i] <- num
         i <- i + 1
      fimse
   fimenquanto
   
   // Exibe os n�meros do vetor.
   limpatela
   escreva("N: ")
   para i de 0 ate 4 faca
      escreva(sequencia[i], " ")
   fimpara
fimalgoritmo
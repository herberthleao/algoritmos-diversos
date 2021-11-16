algoritmo "ValoresDistintos"
// Disciplina   :  Lógica de Programação
// Professora   : Tatyane Calixto
// Descrição   : Lê valores distintos e armazena em vetor.
// Autor(a)    : Herberth Leão
// Data atual  : 18/10/2020
var
   sequencia: vetor[0..4] de inteiro
   i, num: inteiro

funcao checarExist(n: inteiro): logico
// Verifica se o número já foi armazenado. Se não, insere no vetor.
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
   // Lê os números.
   enquanto i < 5 faca
      limpatela
      escreval("Restam: ", 5 - i)
      escreval("Digite um número: ")
      leia(num)

      // Se o número já foi inserido, exibe alerta.
      // Senão, armazena e atualiza o contador.
      se checarExist(num) = verdadeiro entao
         escreval("Número já registrado!")
         timer 1000
         timer 0
      senao
         sequencia[i] <- num
         i <- i + 1
      fimse
   fimenquanto
   
   // Exibe os números do vetor.
   limpatela
   escreva("N: ")
   para i de 0 ate 4 faca
      escreva(sequencia[i], " ")
   fimpara
fimalgoritmo
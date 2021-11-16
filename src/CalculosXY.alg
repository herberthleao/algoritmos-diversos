algoritmo "CalculosXY"
// Disciplina   :  Lógica de Programação
// Professora   : Tatyane Calixto
// Descrição   : Lê números em vetor e calcula sobre duas posições.
// Autor(a)    : Herberth Leão
// Data atual  : 18/10/2020
var
   num: vetor[0..9] de inteiro
   res: vetor[1..5] de real
   x, y: inteiro
   i: inteiro
   valid: logico
inicio
   valid <- falso

   // Lê os números.
   para i de 0 ate 9 faca
      limpatela
      escreval("Restam: ", 10 - i)
      escreva("Digite um número: ")
      leia(num[i])
   fimpara

   // Solicita as posições até que sejam válidas.
   enquanto valid = falso faca
      limpatela
      escreval("Digite dois números (entre 0 e 9): ")
      leia(x, y)

      // Se ambas as posições fornecidas forem válidas, encerra o loop.
      se ((x >= 0) e (x <= 9)) e ((y >= 0) e (y <= 9)) entao
         valid <- verdadeiro
      fimse
   fimenquanto

   // Realiza os cálculos sobre as posições fornecidas e armazena os
   // resultados.
   res[1] <- num[x] + num[y]
   res[2] <- num[x] - num[y]
   res[3] <- num[x] * num[y]
   
   // Só divide se o divisor for diferente de zero.
   // Caso contrário, o resultado será exibido como zero (valor padrão).
   se num[y] <> 0 entao
      res[4] <- num[x] / num[y]
   fimse
   
   res[5] <- num[x] ^ num[y]

   // Exibe os resultados.
   limpatela
   escreval("Resultados:")
   para i de 1 ate 5 faca
      escreval("[", i, "] = ", res[i]:0:2)
   fimpara
fimalgoritmo
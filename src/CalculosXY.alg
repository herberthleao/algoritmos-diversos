algoritmo "CalculosXY"
// Disciplina   :  L�gica de Programa��o
// Professora   : Tatyane Calixto
// Descri��o   : L� n�meros em vetor e calcula sobre duas posi��es.
// Autor(a)    : Herberth Le�o
// Data atual  : 18/10/2020
var
   num: vetor[0..9] de inteiro
   res: vetor[1..5] de real
   x, y: inteiro
   i: inteiro
   valid: logico
inicio
   valid <- falso

   // L� os n�meros.
   para i de 0 ate 9 faca
      limpatela
      escreval("Restam: ", 10 - i)
      escreva("Digite um n�mero: ")
      leia(num[i])
   fimpara

   // Solicita as posi��es at� que sejam v�lidas.
   enquanto valid = falso faca
      limpatela
      escreval("Digite dois n�meros (entre 0 e 9): ")
      leia(x, y)

      // Se ambas as posi��es fornecidas forem v�lidas, encerra o loop.
      se ((x >= 0) e (x <= 9)) e ((y >= 0) e (y <= 9)) entao
         valid <- verdadeiro
      fimse
   fimenquanto

   // Realiza os c�lculos sobre as posi��es fornecidas e armazena os
   // resultados.
   res[1] <- num[x] + num[y]
   res[2] <- num[x] - num[y]
   res[3] <- num[x] * num[y]
   
   // S� divide se o divisor for diferente de zero.
   // Caso contr�rio, o resultado ser� exibido como zero (valor padr�o).
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
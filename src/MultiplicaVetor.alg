algoritmo "MultiplicaVetor"
// Disciplina   :  L�gica de Programa��o
// Professora   : Tatyane Calixto
// Descri��o   : Multiplica um vetor de 10 n�meros por 5.
// Autor(a)    : Herberth Le�o
// Data atual  : 29/09/2020
var
   numeros: vetor[0..9] de inteiro
   resultados: vetor[0..9] de inteiro
   i: inteiro
inicio
   escreval("Digite 10 n�meros:")
   
   // L� os 10 n�meros, armazena em um vetor e os m�ltiplica por 5, armazenando
   // em outro vetor.
   para i de 0 ate 9 faca
      leia(numeros[i])

      resultados[i] <- numeros[i] * 5
   fimpara

   // Exibe os n�meros e seus respectivos resultados, lado a lado.
   limpatela
   escreval("Multiplicados por 5:")
   para i de 0 ate 9 faca
      escreval(numeros[i], " -> ", resultados[i])
   fimpara
fimalgoritmo
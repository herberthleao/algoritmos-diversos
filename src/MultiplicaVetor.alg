algoritmo "MultiplicaVetor"
// Disciplina   :  Lógica de Programação
// Professora   : Tatyane Calixto
// Descrição   : Multiplica um vetor de 10 números por 5.
// Autor(a)    : Herberth Leão
// Data atual  : 29/09/2020
var
   numeros: vetor[0..9] de inteiro
   resultados: vetor[0..9] de inteiro
   i: inteiro
inicio
   escreval("Digite 10 números:")
   
   // Lê os 10 números, armazena em um vetor e os múltiplica por 5, armazenando
   // em outro vetor.
   para i de 0 ate 9 faca
      leia(numeros[i])

      resultados[i] <- numeros[i] * 5
   fimpara

   // Exibe os números e seus respectivos resultados, lado a lado.
   limpatela
   escreval("Multiplicados por 5:")
   para i de 0 ate 9 faca
      escreval(numeros[i], " -> ", resultados[i])
   fimpara
fimalgoritmo
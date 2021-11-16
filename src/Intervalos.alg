algoritmo "Intervalos"
// Disciplina   :  Lógica de Programação
// Professora   : Tatyane Calixto
// Descrição   : Conta números por intervalos.
// Autor(a)    : Herberth Leão
// Data atual  : 23/10/2020
var
   limites: vetor[0..3, 0..1] de inteiro
   contagens: vetor[0..3] de inteiro
   i, n: inteiro
inicio
   // Define os limites à esquerda e direita dos intervalos.
   // Entre 0 e 25.
   limites[0, 0] <- 0
   limites[0, 1] <- 25
   // Entre 26 e 50.
   limites[1, 0] <- 26
   limites[1, 1] <- 50
   // Entre 51 e 75.
   limites[2, 0] <- 51
   limites[2, 1] <- 75
   // Entre 76 e 100.
   limites[3, 0] <- 76
   limites[3, 1] <- 100

   // Lê os números até receber um número negativo.
   enquanto n >= 0 faca
      limpatela
      escreva("Digite um número (negativo para sair): ")
      leia(n)

      // Verifica se o número lido faz parte de algum intervalo e incrementa
      // a contagem para o intervalo específico.
      para i de 0 ate 3 faca
         se (n >= limites[i, 0]) e (n <= limites[i, 1]) entao
            contagens[i] <- contagens[i] + 1
         fimse
      fimpara
   fimenquanto

   // Exibe os resultados das contagens.
   limpatela
   para i de 0 ate 3 faca
      escreval("[", limites[i, 0], "-", limites[i, 1], "] = ", contagens[i])
   fimpara
fimalgoritmo
algoritmo "ExibeVetor"
// Disciplina   :  Lógica de Programação
// Professora   : Tatyane Calixto
// Descrição   : Exibe o vetor na ordem lida ou inversa.
// Autor(a)    : Herberth Leão
// Data atual  : 18/10/2020
var
   n: vetor[0..4] de inteiro
   i: inteiro
   cod: inteiro
inicio
   // Lê os números.
   para i de 0 ate 4 faca
      limpatela
      escreval("Restam: ", 5 - i)
      escreval("Digite um número: ")
      leia(n[i])
   fimpara

   // Menu para escolher ordem de exibição.
   limpatela
   escreval("2 - Exibir ordem inversa")
   escreval("1 - Exibir ordem lida")
   escreval("0 - Sair")
   leia(cod)

   // Se 1, exibe na ordem de leitura.
   // Se 2, exibe na ordem inversa.
   // Se 0, nada acontece e o algoritmo encerra.
   limpatela
   se cod = 1 entao
      para i de 0 ate 4 faca
         escreva(n[i], " ")
      fimpara
   fimse

   se cod = 2 entao
      para i de 4 ate 0 passo -1 faca
         escreva(n[i], " ")
      fimpara
   fimse
fimalgoritmo
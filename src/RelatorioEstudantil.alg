algoritmo "RelatorioEstudantil"
// Disciplina   :  Lógica de Programação
// Professora   : Tatyane Calixto
// Descrição   : Gera um relatório de notas fornecidas pelo usuário.
// Autor(a)    : Herberth Leão
// Data atual  : 24/10/2020
var
   notas: vetor[1..1000] de real
   nota, soma, media: real
   quantidade, acimaMedia, abaixoSete: inteiro
   i, tamanho: inteiro
inicio
   // Lê as notas até receber -1.
   repita
      escreva("Nota: ")
      leia(nota)

      se nota >= 0 entao
         // Soma todas as notas.
         soma <- soma + nota
         // Incrementa a contagem de notas.
         tamanho <- tamanho + 1
         // Armazena a nota.
         notas[tamanho] <- nota
      fimse
   ate nota = -1

   // Calcula a média das notas.
   media <- soma / tamanho

   // Conta os números acima da média e abaixo de 7.
   para i de 1 ate tamanho faca
      se notas[i] > media entao
         acimaMedia <- acimaMedia + 1
      fimse

      se notas[i] < 7 entao
         abaixoSete <- abaixoSete + 1
      fimse
   fimpara

   // Exibe os resultados.
   limpatela
   escreval("Quantidade de valores: ", tamanho)

   escreva("Valores na ordem padrão: ")
   para i de 1 ate tamanho faca
      escreva(notas[i], " ")
   fimpara
   escreval("")

   escreva("Valores na ordem inversa: ")
   para i de tamanho ate 1 passo -1 faca
      escreva(notas[i], " ")
   fimpara
   escreval("")

   escreval("Soma dos valores: ", soma)

   escreval("Média dos valores: ", media)

   escreval("Quantidade acima da média: ", acimaMedia)

   escreval("Quantidade abaixo de 7: ", abaixoSete)
fimalgoritmo
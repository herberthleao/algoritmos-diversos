algoritmo "RelatorioEstudantil"
// Disciplina   :  L�gica de Programa��o
// Professora   : Tatyane Calixto
// Descri��o   : Gera um relat�rio de notas fornecidas pelo usu�rio.
// Autor(a)    : Herberth Le�o
// Data atual  : 24/10/2020
var
   notas: vetor[1..1000] de real
   nota, soma, media: real
   quantidade, acimaMedia, abaixoSete: inteiro
   i, tamanho: inteiro
inicio
   // L� as notas at� receber -1.
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

   // Calcula a m�dia das notas.
   media <- soma / tamanho

   // Conta os n�meros acima da m�dia e abaixo de 7.
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

   escreva("Valores na ordem padr�o: ")
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

   escreval("M�dia dos valores: ", media)

   escreval("Quantidade acima da m�dia: ", acimaMedia)

   escreval("Quantidade abaixo de 7: ", abaixoSete)
fimalgoritmo
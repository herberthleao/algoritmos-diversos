algoritmo "Audiencia"
// Disciplina   :  L�gica de Programa��o
// Professora   : Tatyane Calixto
// Descri��o   : Calcula o percentual de audi�ncia de canais da TV.
// Autor(a)    : Herberth Le�o
// Data atual  : 15/10/2020
var
   espects: vetor[0..4] de inteiro
   canais: vetor[0..4] de inteiro
   casas, i: inteiro
   canal, pessoas, total: inteiro

funcao pegarPercentual(id: inteiro): real
// Calcula o percentual de espectadores, para o canal solicitado.
var
   percent: real
inicio
   // Previne a divis�o por zero.
   // Se o total de pessoas for maior que zero, calcula o percentual.
   // Caso contr�rio, ser� retornado zero, por padr�o.
   se total <> 0 entao
      percent <- espects[id] / total * 100
   fimse

   retorne percent
fimfuncao
inicio
   // Define os canais, para ser exibido nos resultados.
   canais[0] <- 3
   canais[1] <- 5
   canais[2] <- 8
   canais[3] <- 11
   canais[4] <- 13

   // Solicita o n�mero de casas, para definir o limite do loop.
   escreva("Insira o total de casas participantes: ")
   leia(casas)

   para i de 1 ate casas faca
      limpatela
      escreval("Restam: ", casas - i) // Exibe o total de registros restantes.

      // L� o canal e o n�mero de espectadores de cada casa.
      escreva("Digite o canal (3, 5, 8, 11 ou 13): ")
      leia(canal)

      escreva("Digite o n�mero de pessoas: ")
      leia(pessoas)

      // Soma os espectadores ao total geral.
      total <- total + pessoas

      // Soma os espectadores ao total do canal, se for um canal v�lido.
      escolha canal
      caso 3
         espects[0] <- espects[0] + pessoas
      caso 5
         espects[1] <- espects[1] + pessoas
      caso 8
         espects[2] <- espects[2] + pessoas
      caso 11
         espects[3] <- espects[3] + pessoas
      caso 13
         espects[4] <- espects[4] + pessoas
      fimescolha
   fimpara

   limpatela
   // Exibe os resultados.
   para i de 0 ate 4 faca
      escreval(canais[i], ": ", pegarPercentual(i), "% de audi�ncia")
   fimpara
fimalgoritmo
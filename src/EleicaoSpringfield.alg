algoritmo "EleicaoSpringfield"
// Disciplina   :  L�gica de Programa��o
// Professora   : Tatyane Calixto
// Descri��o   : Realiza a elei��o para a cidade de Springfield.
// Autor(a)    : Herberth Le�o
// Data atual  : 22/09/2020
var
   cand: vetor[2..5, 0..1] de caracter
   votos: vetor[2..5] de inteiro
   i: inteiro
   votantes: inteiro
   voto: inteiro
   total: inteiro
   escolhido: logico
   maior: inteiro
   venc: inteiro
   empate: logico

procedimento exibirUrna
// Formata os dados dos candidatos e exibe na tela.
var
   i: inteiro
inicio
   limpatela
   escreval("Elei��o Springfield 2020")
   escreval("")
   // Exibe o n�mero, nome e quantidade de votos atuais dos candidatos.
   para i de 2 ate 5 faca
      escreval(cand[i, 0], " - ", cand[i, 1], " - ", votos[i], " voto(s)")
   fimpara
   escreval("")
fimprocedimento

procedimento redefinir
// Redefine as vari�veis, para iniciar um novo turno.
inicio
   empate <- falso
   voto <- 0
   total <- 0
   maior <- 0
   venc <- 0

   // Zera os votos de cada candidato.
   para i de 2 ate 5 faca
      votos[i] <- 0
   fimpara
fimprocedimento

inicio
   // Inicializa as vari�veis.
   escolhido <- falso

   redefinir()

   cand[2, 0] <- "02"
   cand[2, 1] <- "Homer Simpson"
   cand[3, 0] <- "03"
   cand[3, 1] <- "Ned Flanders"
   cand[4, 0] <- "04"
   cand[4, 1] <- "Selma Bouvier"
   cand[5, 0] <- "05"
   cand[5, 1] <- "Edna Krabappel"

   // L� qunantos quantos votantes ir�o participar da elei��o.
   escreval("Digite a quantidade de votantes: ")
   leia(votantes)

   // Controla os turnos. S� para de executar, quando um candidato for
   // escolhido.
   enquanto escolhido = falso faca
      // Redefine as vari�veis para um novo turno.
      redefinir()

      // Recebe os votos at� atingir o total de votantes especificado.
      enquanto total < votantes faca
         // Imprime o estado atual da urna.
         exibirUrna()

         // Recebe o voto.
         escreval("Quem voc� escolhe para assumir a nossa prefeitura?")
         leia(voto)

         // Verifica se o voto � para um candidato v�lido.
         // Caso n�o seja, n�o contabiliza, exibe o alerta e tenta novamente.
         se (voto < 2) ou (voto > 5) entao
            escreval("Voto inv�lido! Escolha uma op��o da urna.")
            // Espera 3s para que a mensagem seja exibida.
            timer 3000
            timer 0
         senao
            // Contabiliza o voto nos totais e no candidato adequado.
            votos[voto] <- votos[voto] + 1
            total <- total + 1
         fimse
      fimenquanto

      // Calcula o candidato com maior n�mero de votos.
      para i de 2 ate 5 faca
         se votos[i] > maior entao
            // Define o maior n�mero de votos.
            maior <- votos[i]
            // Define previamente o n�mero do vencedor.
            venc <- i
         fimse
      fimpara

      // Verifica se existe outro candidato com o mesmo n�mero de votos que o
      // vencedor. Se sim, significa que houve empate.
      para i de 2 ate 5 faca
         se (votos[i] = maior) e (i <> venc) entao
            empate <- verdadeiro
         fimse
      fimpara

      // Imprime os resultados finais.
      exibirUrna()

      // Verifica se deu empate ou houve um vencedor.
      // Se houve empate, um novo turno ser� realizado.
      // Caso contr�rio, o programa ser� encerrado.
      se empate = verdadeiro entao
         escreval("Parece que houve empate! Um novo turno ser� realizado.")
         // Espera 3s para a mensagem ser exibida.
         timer 3000
         timer 0
      senao
         // Exibe o nome do candidato vencedor.
         escreva("Parab�ns, ", cand[venc, 1])
         escreval("! Voc� assumir� a prefeitura.")
         // Encerra o loop de controle de turnos.
         escolhido <- verdadeiro
      fimse
   fimenquanto
fimalgoritmo
algoritmo "Enquete"
// Disciplina   :  L�gica de Programa��o
// Professora   : Tatyane Calixto 
// Descri��o   : Uma empresa de pesquisas precisa tabular os resultados da
//               seguinte enquete feita a um grande quantidade de organiza��es.
//               "Qual o melhor Sistema Operacional para uso em servidores?"
//               As poss�veis respostas s�o: 1 - Windows Server 2 - Unix
//               3 - Linux 4 - Netware 5 - Mac OS 6 - Outro. Voc� foi
-//               contratado para desenvolver um programa que leia o resultado
//               da enquete e informe ao final o resultado da mesma. O programa
//               dever� ler os valores at� ser informado o valor 7, que encerra
//               a entrada dos dados. N�o dever�o ser aceitos valores al�m dos
//               v�lidos para o programa (1 a 7). Os valores referentes a cada
//               uma das op��es devem ser armazenados num vetor. Ap�s os dados
//               terem sido completamente informados, o programa dever�
//               calcular a percentual de cada um dos concorrentes e informar o
//               vencedor da enquete.
// Autor(a)    : Herberth Le�o
// Data atual  : 29/10/2020
var
   votos: vetor[1..6] de inteiro
   sistemas, espacos: vetor[1..6] de caractere
   i, voto, total, maior: inteiro
   percent: real
   
funcao calcularPercent(indice: inteiro): real
var
   percent: real
inicio
   percent <- 0
   
   se total <> 0 entao
      percent <- votos[indice] / total * 100
   fimse

   retorne percent
fimfuncao

funcao calcularMaior(): inteiro
var
   indice, i, maior: inteiro
inicio
   para i de 1 ate 6 faca
      se votos[i] > maior entao
         maior <- votos[i]
         indice <- i
      fimse
   fimpara
   
   retorne indice
fimfuncao

inicio
   sistemas[1] <- "Windows Server"
   sistemas[2] <- "Unix"
   sistemas[3] <- "Linux"
   sistemas[4] <- "Netware"
   sistemas[5] <- "MacOS"
   sistemas[6] <- "Outro"

   repita
      limpatela
      escreval("Qual o melhor Sistema Operacional para uso em servidores?")
      escreval("")
      
      para i de 1 ate 6 faca
         escreval(i, " - ", sistemas[i])
      fimpara

      escreval("")
      escreval("(7 - para sair)")
      escreval("")

      leia(voto)
      
      se (voto > 0) e (voto < 7) entao
         votos[voto] <- votos[voto] + 1
         total <- total + 1
      fimse
   ate voto = 7
   
   maior <- calcularMaior()
   
   // Espa�os entre os nomes dos sistemas e a quantidade dos votos,
   // na exibi��o.
   espacos[1] <- "        "
   espacos[2] <- "                  "
   espacos[3] <- "                 "
   espacos[4] <- "               "
   espacos[5] <- "                 "
   espacos[6] <- "                 "

   limpatela
   escreval("Sistema Operacional     Votos     %")
   escreval("-------------------     -----     ---")

   para i de 1 ate 6 faca
      escreva(sistemas[i], espacos[i], " ", votos[i], "         ")
      percent <- calcularPercent(i)
      escreval(percent:1, "%")
   fimpara
   
   escreval("-------------------     -----     ---")
   escreval("Total                  ", total)
   
   se maior > 0 entao
      escreval("")
      escreva("O Sistema Operacional mais votado foi o ", sistemas[maior])
      escreva(", com ", votos[maior], " voto(s), correspondendo a ")
      percent <- calcularPercent(maior)
      escreval(percent:1, "% do(s) voto(s).")
   fimse
fimalgoritmo
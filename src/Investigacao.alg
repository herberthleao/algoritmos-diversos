algoritmo "Investigacao"
// Disciplina   :  L�gica de Programa��o
// Professora   : Tatyane Calixto
// Descri��o   : Classifica indiv�duos em investiga��o por question�rio.
// Autor(a)    : Herberth Le�o
// Data atual  : 22/10/2020
var
   perguntas: vetor[0..4] de caractere
   resposta: caractere
   positivas: inteiro
   classificacao: caractere
   i: inteiro
inicio
   // Se menos de 2 respostas forem positivas, � inocente.
   classificacao <- "inocente"

   perguntas[0] <- "Telefonou para a v�tima?"
   perguntas[1] <- "Esteve no local do crime?"
   perguntas[2] <- "Mora perto da v�tima?"
   perguntas[3] <- "A v�tima devia para a pessoa?"
   perguntas[4] <- "J� trabalhou com a v�tima?"

   // L� as respostas.
   para i de 0 ate 4 faca
      // Repete at� ter uma resposta v�lida (S ou N).
      repita
         limpatela
         escreval(perguntas[i], " (S - N)")
         leia(resposta)
      ate (resposta = "S") ou (resposta = "N")

      // Incrementa se a resposta for positiva.
      se resposta = "S" entao
         positivas <- positivas + 1
      fimse
   fimpara

   // Se todas forem positivas, � culpado.
   se positivas = 5 entao
      classificacao <- "assassino"
   fimse
   // Se entre 3 e 4 forem positivas, � c�mplice.
   se (positivas >= 3) e (positivas <= 4) entao
      classificacao <- "c�mplice"
   fimse
   // Se 2 forem positivas, � suspeito.
   se positivas = 2 entao
      classificacao <- "suspeito"
   fimse

   // Exibe o resultado.
   limpatela
   escreval("O indiv�duo � ", classificacao, ".")
fimalgoritmo
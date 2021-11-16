algoritmo "Investigacao"
// Disciplina   :  Lógica de Programação
// Professora   : Tatyane Calixto
// Descrição   : Classifica indivíduos em investigação por questionário.
// Autor(a)    : Herberth Leão
// Data atual  : 22/10/2020
var
   perguntas: vetor[0..4] de caractere
   resposta: caractere
   positivas: inteiro
   classificacao: caractere
   i: inteiro
inicio
   // Se menos de 2 respostas forem positivas, é inocente.
   classificacao <- "inocente"

   perguntas[0] <- "Telefonou para a vítima?"
   perguntas[1] <- "Esteve no local do crime?"
   perguntas[2] <- "Mora perto da vítima?"
   perguntas[3] <- "A vítima devia para a pessoa?"
   perguntas[4] <- "Já trabalhou com a vítima?"

   // Lê as respostas.
   para i de 0 ate 4 faca
      // Repete até ter uma resposta válida (S ou N).
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

   // Se todas forem positivas, é culpado.
   se positivas = 5 entao
      classificacao <- "assassino"
   fimse
   // Se entre 3 e 4 forem positivas, é cúmplice.
   se (positivas >= 3) e (positivas <= 4) entao
      classificacao <- "cúmplice"
   fimse
   // Se 2 forem positivas, é suspeito.
   se positivas = 2 entao
      classificacao <- "suspeito"
   fimse

   // Exibe o resultado.
   limpatela
   escreval("O indivíduo é ", classificacao, ".")
fimalgoritmo
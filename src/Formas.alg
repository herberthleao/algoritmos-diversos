algoritmo "Formas"
// Disciplina   :  Lógica de Programação
// Professora   : Tatyane Calixto
// Descrição   : Exibe formas com lados do tamanho de N.
// Autor(a)    : Herberth Leão
// Data atual  : 15/10/2020
var
   i, j: inteiro
   n: inteiro
   aux: inteiro

procedimento desenharQuadrado()
inicio
   // Representa as linhas.
   para i de 1 ate n faca
      // Insere quebra de linha.
      escreval("")

      // Se for o lado de cima (primeira linha) ou de baixo (última linha),
      // escreve os asteriscos continuamente.
      se (i = 1) ou (i = n) entao
         // Representa as colunas. Desenha uma sequência de asteriscos.
         para i de 1 ate n faca
            escreva("*")
         fimpara
      senao
         // Representa as colunas.
         para j de 1 ate n faca
            // Se for o lado esquerdo (primeira coluna) ou direito (última
            // coluna), escreve os asteriscos apenas na primeira e última
            // posição.
            se (j = 1) ou (j = n) entao
               escreva("*")
            senao
               // Entre a primeira e última posição, insere espaços.
               escreva(" ")
            fimse
         fimpara
      fimse
   fimpara
fimprocedimento

procedimento desenharTriangulo()
inicio
   // Representa as linhas.
   para i de 1 ate n faca
      // Insere quebra de linha.
      escreval(" ")

      // Desenha a primeira linha.
      se (i = 1) entao
         escreva("*")
      fimse

      // Desenha as linhas que necessitam de espaços (entre a primeira e
      // última).
      se (i > 1) e (i < n) entao
         // Asterisco do início, sempre na primeira coluna.
         escreva("*")

         // Insere os espaços, entre os asteriscos.
         para j de 1 ate aux faca
            escreva(" ")
         fimpara

         // Asterisco do final.
         escreva("*")

         // Incrementa a quantidade espaços a cada iteração, para manter o
         // último asterisco cada vez mais distante do primeiro.
         aux <- aux + 1
      fimse

      // Desenha a última linha.
      // Exibe uma sequência de asteriscos. É a linha mais extensa.
      se (i = n) entao
         para j de 1 ate n faca
            escreva("*")
         fimpara
      fimse
   fimpara
fimprocedimento

procedimento desenharLosango()
var
   dir, esq: vetor[0..1] de inteiro
   meio: inteiro
inicio
   // Calcula a metade da largura. Se o resultado for real, converte pra
   // inteiro. Serve de base para os cálculos dos limites da forma.
   meio <- int(n / 2)
   // Define o limite das linhas.
   aux <- n

   // Se o número dado for par, faz ajustes e trata como ímpar, para que a
   // forma seja desenhada corretamente.
   se n % 2 = 0 entao
      // Define a metade como de um número a menos (um número ímpar).
      meio <- meio - 1
      // O losango só será desenhado até a penultima linha. Então, remove a
      // última com exibições indesejadas.
      aux <- n - 1
   fimse

   // Difine os limites iniciais para a posição da esquerda.
   // O asterisco será escrito entre esses dois números.
   esq[0] <- meio
   esq[1] <- meio + 2

   // Difine os limites iniciais para a posição da direita.
   // O asterisco será escrito entre esses dois números.
   dir[0] <- meio
   dir[1] <- meio + 2

   // Representa as linhas.
   para i de 1 ate aux faca
      // Insere quebra de linha.
      escreval("")

      // Representa as colunas.
      para j de 1 ate n faca
         // Se a posição atual for entre os limites da esquerda ou da direita,
         // escreve o asterisco. Caso contrário, insere espaços.
         se ((j > esq[0]) e (j < esq[1])) ou ((j > dir[0]) e (j < dir[1])) entao
            escreva("*")
         senao
            escreva(" ")
         fimse
      fimpara

      // Se a linha atual é da primeira metade do losango, decrementa os
      // limites da esquerda e incrementa os da direita.
      se i <= meio entao
         esq[0] <- esq[0] - 1
         esq[1] <- esq[1] - 1

         dir[0] <- dir[0] + 1
         dir[1] <- dir[1] + 1
      // Se for da segunda metade incrementa os limites da esquerda e
      // decrementa os da direita.
      senao
         esq[0] <- esq[0] + 1
         esq[1] <- esq[1] + 1

         dir[0] <- dir[0] - 1
         dir[1] <- dir[1] - 1
      fimse
   fimpara
fimprocedimento
inicio
   escreva("Digite o tamanho dos lados: ")
   leia(n)

   desenharQuadrado()
   desenharTriangulo()
   desenharLosango()
fimalgoritmo
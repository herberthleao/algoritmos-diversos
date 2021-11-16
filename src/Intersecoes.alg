algoritmo "Intersecoes"
// Disciplina   :  Lógica de Programação
// Professora   : Tatyane Calixto 
// Descrição   : Calcula interseções entre vetores.
// Autor(a)    : Herberth Leão
// Data atual  : 18/10/2020
var
   a, b, c: vetor[0..4] de inteiro
   i, j: inteiro
   posicao: inteiro

procedimento adicionar(n: inteiro)
// Adiciona uma interseção ao terceiro vetor.
var
   i: inteiro
   existe: logico
inicio
   existe <- falso
   // Checa se o número já foi adicionado.
   para i de 0 ate 4 faca
      se n = c[i] entao
         existe <- verdadeiro
      fimse
   fimpara
   
   // Se ainda não foi adicionado, adiciona e incrementa a contagem do índice
   // para o próximo número.
   se existe = falso entao
      c[posicao] <- n
      
      posicao <- posicao + 1
   fimse
fimprocedimento
inicio
   // Lê os números dos dois vetores.
   para i de 0 ate 4 faca
      limpatela
      escreval("Restam: ", 10 - i)
      escreval("Digite números consecutivamente: ")
      leia(a[i], b[i])
   fimpara
   
   // Verifica as interseções e adiciona ao terceiro vetor.
   para i de 0 ate 4 faca
      para j de 0 ate 4 faca
         se a[i] = b[j] entao
            adicionar(a[i])
         fimse
      fimpara
   fimpara
   
   // Exibe os resultados.
   limpatela
   escreva("Interseções: ")
   para i de 0 ate posicao faca
      escreva(c[i], " ")
   fimpara
fimalgoritmo
algoritmo "Intersecoes"
// Disciplina   :  L�gica de Programa��o
// Professora   : Tatyane Calixto 
// Descri��o   : Calcula interse��es entre vetores.
// Autor(a)    : Herberth Le�o
// Data atual  : 18/10/2020
var
   a, b, c: vetor[0..4] de inteiro
   i, j: inteiro
   posicao: inteiro

procedimento adicionar(n: inteiro)
// Adiciona uma interse��o ao terceiro vetor.
var
   i: inteiro
   existe: logico
inicio
   existe <- falso
   // Checa se o n�mero j� foi adicionado.
   para i de 0 ate 4 faca
      se n = c[i] entao
         existe <- verdadeiro
      fimse
   fimpara
   
   // Se ainda n�o foi adicionado, adiciona e incrementa a contagem do �ndice
   // para o pr�ximo n�mero.
   se existe = falso entao
      c[posicao] <- n
      
      posicao <- posicao + 1
   fimse
fimprocedimento
inicio
   // L� os n�meros dos dois vetores.
   para i de 0 ate 4 faca
      limpatela
      escreval("Restam: ", 10 - i)
      escreval("Digite n�meros consecutivamente: ")
      leia(a[i], b[i])
   fimpara
   
   // Verifica as interse��es e adiciona ao terceiro vetor.
   para i de 0 ate 4 faca
      para j de 0 ate 4 faca
         se a[i] = b[j] entao
            adicionar(a[i])
         fimse
      fimpara
   fimpara
   
   // Exibe os resultados.
   limpatela
   escreva("Interse��es: ")
   para i de 0 ate posicao faca
      escreva(c[i], " ")
   fimpara
fimalgoritmo
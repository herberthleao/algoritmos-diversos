algoritmo "Triangulos"
// Disciplina   :  L�gica de Programa��o
// Professora   : Tatyane Calixto 
// Descri��o   : Valida os lados do tri�ngulo e identifica seu tipo.
// Autor(a)    : Herberth Le�o
// Data atual  : 07/10/2020
var
   contador: inteiro
   lados: vetor[0..2] de inteiro

funcao validarTriangulo(a, b, c: inteiro): logico
// Verifica se os lados fornecidos formam um tri�ngulo.
var
   validacao: logico
inicio
   validacao <- falso
   
   se (a + b > c) e (b + c > a) e (a + c > b) entao
      validacao <- verdadeiro
   fimse
   
   retorne validacao
fimfuncao

funcao detectarTriangulo(a, b, c: inteiro): caractere
// Identifica a categoria do tri�ngulo (equil�tero, is�sceles ou escaleno).
var
   tipos: vetor[0..2] de caractere
   resultado: inteiro
inicio
   tipos[0] <- "equil�tero"
   tipos[1] <- "is�sceles"
   tipos[2] <- "escaleno"

   // Se todos os lados forem iguais, � equil�tero.
   se (a = b) e (b = c) e (c = a) entao
      resultado <- 0
   senao
      // Se apenas dois lados forem iguais, � is�sceles.
      se (a = b) ou (b = c) ou (c = a) entao
         resultado <- 1
      senao
         // Se os lados forem diferentes, � escaleno.
         resultado <- 2
      fimse
   fimse
   
   retorne tipos[resultado]
fimfuncao

inicio
   escreval("Digite os lados do tri�ngulo:")
   // L� os lados do tri�ngulo.
   para contador de 0 ate 2 faca
      leia(lados[contador])
   fimpara
   
   limpatela

   // Se for um tri�ngulo v�lido, exibe sua categoria. Sen�o, exibe alerta.
   se validarTriangulo(lados[0], lados[1], lados[2]) = verdadeiro entao
      escreval("Tri�ngulo ", detectarTriangulo(lados[0], lados[1], lados[2]))
   senao
      escreval("N�o � um tri�ngulo!")
   fimse
fimalgoritmo
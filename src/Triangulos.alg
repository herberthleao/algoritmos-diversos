algoritmo "Triangulos"
// Disciplina   :  Lógica de Programação
// Professora   : Tatyane Calixto 
// Descrição   : Valida os lados do triângulo e identifica seu tipo.
// Autor(a)    : Herberth Leão
// Data atual  : 07/10/2020
var
   contador: inteiro
   lados: vetor[0..2] de inteiro

funcao validarTriangulo(a, b, c: inteiro): logico
// Verifica se os lados fornecidos formam um triângulo.
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
// Identifica a categoria do triângulo (equilátero, isósceles ou escaleno).
var
   tipos: vetor[0..2] de caractere
   resultado: inteiro
inicio
   tipos[0] <- "equilátero"
   tipos[1] <- "isósceles"
   tipos[2] <- "escaleno"

   // Se todos os lados forem iguais, é equilátero.
   se (a = b) e (b = c) e (c = a) entao
      resultado <- 0
   senao
      // Se apenas dois lados forem iguais, é isósceles.
      se (a = b) ou (b = c) ou (c = a) entao
         resultado <- 1
      senao
         // Se os lados forem diferentes, é escaleno.
         resultado <- 2
      fimse
   fimse
   
   retorne tipos[resultado]
fimfuncao

inicio
   escreval("Digite os lados do triângulo:")
   // Lê os lados do triângulo.
   para contador de 0 ate 2 faca
      leia(lados[contador])
   fimpara
   
   limpatela

   // Se for um triângulo válido, exibe sua categoria. Senão, exibe alerta.
   se validarTriangulo(lados[0], lados[1], lados[2]) = verdadeiro entao
      escreval("Triângulo ", detectarTriangulo(lados[0], lados[1], lados[2]))
   senao
      escreval("Não é um triângulo!")
   fimse
fimalgoritmo
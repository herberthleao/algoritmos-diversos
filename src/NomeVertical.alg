algoritmo "NomeVertical"
// Disciplina   :  L�gica de Programa��o
// Professora   : Tatyane Calixto 
// Descri��o   : Fa�a um programa que solicite o nome do usu�rio e imprima-o na
//               vertical de forma que o nome fique em formato de escada.
// Autor(a)    : Herberth Le�o
// Data atual  : 29/10/2020
var
   nome: caractere
   i: inteiro
inicio
   escreva("Insira o nome: ")
   leia(nome)
   
   para i de 1 ate compr(nome) faca
      escreval(copia(nome; 1; i))
   fimpara
fimalgoritmo
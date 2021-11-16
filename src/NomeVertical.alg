algoritmo "NomeVertical"
// Disciplina   :  Lógica de Programação
// Professora   : Tatyane Calixto 
// Descrição   : Faça um programa que solicite o nome do usuário e imprima-o na
//               vertical de forma que o nome fique em formato de escada.
// Autor(a)    : Herberth Leão
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
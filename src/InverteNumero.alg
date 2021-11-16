algoritmo "InverteNumero"
// Disciplina   :  Lógica de Programação
// Professora   : Tatyane Calixto 
// Descrição   : Faça uma função que retorne o reverso de um número inteiro
//               informado. Por exemplo: 127 -> 721.
// Autor(a)    : Herberth Leão
// Data atual  : 29/10/2020
var
   num: inteiro

funcao reverter(num: inteiro): caractere
var
   str: caractere
   rev: caractere
   i: inteiro
inicio
   str <- numpcarac(num)

   para i de compr(str) ate 1 passo -1 faca
      rev <- rev + copia(str; i; 1)
   fimpara
   
   retorne rev
fimfuncao

inicio
   escreva("Insira o número: ")
   leia(num)

   escreval("Reverso: ", reverter(num))
fimalgoritmo
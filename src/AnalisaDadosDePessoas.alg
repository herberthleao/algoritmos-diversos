algoritmo "AnalisaDadosDePessoas"
// Disciplina   :  L�gica de Programa��o
// Professora   : Tatyane Calixto
// Descri��o   : L� dados de pessoas e extrai informa��es.
// Autor(a)    : Herberth Le�o
// Data atual  : 08/10/2020
var
   nomes: vetor[0..9] de caractere
   alturas: vetor[0..9] de real
   sexos: vetor[0..9] de caractere
   contador: inteiro

funcao pegarMenorAltura(): real
// Define a menor altura do grupo.
var
   menor: real
inicio
   // Define como valor inicial, a maior altura.
   menor <- pegarMaiorAltura()

   // Itera sobre as alturas fornecidas e estabelece a menor.
   // Tamb�m verifica se valor � positivo. Do contr�rio, a altura � inv�lida.
   para contador de 0 ate 9 faca
      se (alturas[contador] > 0) e (alturas[contador] < menor) entao
         menor <- alturas[contador]
      fimse
   fimpara

   retorne menor
fimfuncao

funcao pegarMaiorAltura(): real
// Define a maior altura do grupo.
var
   maior: real
inicio
   // Itera sobre as alturas fornecidas e estabelece a maior.
   // Tamb�m verifica se valor � positivo. Do contr�rio, a altura � inv�lida.
   para contador de 0 ate 9 faca
      se (alturas[contador] > 0) e (alturas[contador] > maior) entao
         maior <- alturas[contador]
      fimse
   fimpara

   retorne maior
fimfuncao

funcao calcularMediaAlturaFeminina(): real
// Calcula a m�dia das alturas entre as mulheres.
var
   // Total de mulheres.
   totalMulheres: inteiro
   // Soma das alturas.
   somaAlturas: real
   // M�dia das alturas.
   mediaAlturas: real
inicio
   para contador de 0 ate 9 faca
      se sexos[contador] = "F" entao
         // Incrementa o total de mulheres.
         totalMulheres <- totalMulheres + 1
         // Soma �s alturas.
         somaAlturas <- somaAlturas + alturas[contador]
      fimse
   fimpara

   // Evita que seja dividido por 0 (zero), caso n�o haja registro de mulheres.
   se totalMulheres > 0 entao
      // Calcula a m�dia das alturas.
      mediaAlturas <- somaAlturas / totalMulheres
   fimse
   
   retorne mediaAlturas
fimfuncao

funcao calcularTotalHomens(): inteiro
// Soma o total de homens no registro.
var
   total: inteiro
inicio
   para contador de 0 ate 9 faca
      se sexos[contador] = "M" entao
         total <- total + 1
      fimse
   fimpara
   
   retorne total
fimfuncao

inicio
   // L� o nome, altura e sexo das pessoas e armazena em tr�s vetores.
   para contador de 0 ate 9 faca
      limpatela
      // Exibe o n�mero restante de registros a serem inseridos.
      escreval("Restantes: ", 10 - contador)

      escreva("Digite o nome: ")
      leia(nomes[contador])

      escreva("Digite a altura: ")
      leia(alturas[contador])
      
      escreva("Digite o sexo (M - F): ")
      leia(sexos[contador])
   fimpara
   
   limpatela
   // Exibe todos os dados devidamente calculados e formatados.
   escreval("Maior altura do grupo: ", pegarMaiorAltura():0:2)
   escreval("Menor altura do grupo: ", pegarMenorAltura():0:2)
   escreval("M�dia de altura feminina: ", calcularMediaAlturaFeminina():0:2)
   escreval("N�mero total de homens: ", calcularTotalHomens())
fimalgoritmo
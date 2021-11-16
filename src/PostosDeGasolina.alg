algoritmo "PostosDeGasolina"
// Disciplina   :  Lógica de Programação
// Professora   : Tatyane Calixto 
// Descrição   : Define os postos com maior e menor valor da gasolina.
// Autor(a)    : Herberth Leão
// Data atual  : 15/10/2020
var
   postos: vetor[0..4] de caractere
   precos: vetor[0..4] de real
   maior, menor: inteiro
   i: inteiro
   aux: real
inicio
   para i de 0 ate 4 faca
      limpatela
      escreval("Restam: ", 5 - i) // Exibe as inserções restantes.
      // Lê os nomes e valores dos postos.
      escreva("Insira o nome do posto: ")
      leia(postos[i])

      escreva("Insira o preço da gasolina (R$): ")
      leia(precos[i])
      
      // Simultaneamente, verifica o preço mais alto.
      se precos[i] > aux entao
         // Armazena o preço, se for maior que o anterior.
         aux <- precos[i]
         // Armazena seu índice.
         maior <- i
      fimse
   fimpara
   
   // Verifica o preço mais baixo.
   para i de 0 ate 4 faca
      // Reutiliza a variável com o maior preço, pra fazer a checagem.
      se precos[i] < aux entao
         // Armazena o preço, se for menor que o anterior.
         aux <- precos[i]
         // Armazena seu índice.
         menor <- i
      fimse
   fimpara
   
   limpatela
   // Exibe os resultados.
   escreval("Maior preço: ", postos[maior], " com R$ ", precos[maior])
   escreval("Manor preço: ", postos[menor], " com R$ ", precos[menor])
fimalgoritmo
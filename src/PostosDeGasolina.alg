algoritmo "PostosDeGasolina"
// Disciplina   :  L�gica de Programa��o
// Professora   : Tatyane Calixto 
// Descri��o   : Define os postos com maior e menor valor da gasolina.
// Autor(a)    : Herberth Le�o
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
      escreval("Restam: ", 5 - i) // Exibe as inser��es restantes.
      // L� os nomes e valores dos postos.
      escreva("Insira o nome do posto: ")
      leia(postos[i])

      escreva("Insira o pre�o da gasolina (R$): ")
      leia(precos[i])
      
      // Simultaneamente, verifica o pre�o mais alto.
      se precos[i] > aux entao
         // Armazena o pre�o, se for maior que o anterior.
         aux <- precos[i]
         // Armazena seu �ndice.
         maior <- i
      fimse
   fimpara
   
   // Verifica o pre�o mais baixo.
   para i de 0 ate 4 faca
      // Reutiliza a vari�vel com o maior pre�o, pra fazer a checagem.
      se precos[i] < aux entao
         // Armazena o pre�o, se for menor que o anterior.
         aux <- precos[i]
         // Armazena seu �ndice.
         menor <- i
      fimse
   fimpara
   
   limpatela
   // Exibe os resultados.
   escreval("Maior pre�o: ", postos[maior], " com R$ ", precos[maior])
   escreval("Manor pre�o: ", postos[menor], " com R$ ", precos[menor])
fimalgoritmo
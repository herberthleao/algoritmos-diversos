algoritmo "Restaurante"
// Disciplina   :  L�gica de Programa��o
// Professora   : Tatyane Calixto
// Descri��o   : Calcula a conta total de um restaurante self-service.
// Autor(a)    : Herberth Le�o
// Data atual  : 13/10/2020
var
   pesoPrato: real
   valorBebida: real
   valorQuilo: real
inicio
   // Peso padr�o do quilo (R$ 20,00 ou R$ 15,00?)
   valorQuilo <- 20

   repita
      limpatela
      escreva("Digite o peso do prato (kg): ")
      leia(pesoPrato)
      
      escreva("Digite o valor da bebida (R$): ")
      leia(valorBebida)
      
      limpatela
      escreval("Conta: R$ ", (valorBebida + (pesoPrato * valorQuilo)):0:2)
      // Tempo de espera de 3s at� a pr�xima repeti��o.
      timer 3000
      timer 0
   // Encerra quando o usu�rio inserir 0 para ambos os dados.
   ate (pesoPrato = 0) e (valorBebida = 0)
fimalgoritmo
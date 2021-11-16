algoritmo "Restaurante"
// Disciplina   :  Lógica de Programação
// Professora   : Tatyane Calixto
// Descrição   : Calcula a conta total de um restaurante self-service.
// Autor(a)    : Herberth Leão
// Data atual  : 13/10/2020
var
   pesoPrato: real
   valorBebida: real
   valorQuilo: real
inicio
   // Peso padrão do quilo (R$ 20,00 ou R$ 15,00?)
   valorQuilo <- 20

   repita
      limpatela
      escreva("Digite o peso do prato (kg): ")
      leia(pesoPrato)
      
      escreva("Digite o valor da bebida (R$): ")
      leia(valorBebida)
      
      limpatela
      escreval("Conta: R$ ", (valorBebida + (pesoPrato * valorQuilo)):0:2)
      // Tempo de espera de 3s até a próxima repetição.
      timer 3000
      timer 0
   // Encerra quando o usuário inserir 0 para ambos os dados.
   ate (pesoPrato = 0) e (valorBebida = 0)
fimalgoritmo
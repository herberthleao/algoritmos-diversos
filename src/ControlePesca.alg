algoritmo "ControlePesca"
// Disciplina   :  Lógica de Programação 
// Professora   : Tatyane Calixto 
// Descrição   : Controla o rendimento diário de pesca.
// Autor       : Herberth Leão
// Data        : 16/09/2020
var
    peso: real
    pesoLimite: real
    multa: real
    multaExcesso: real
    pesoExcesso: real
inicio
    // Inicializa as variáveis.
    pesoLimite <- 50
    multa <- 4.00
    pesoExcesso <- 0
    multaExcesso <- 0

    escreval("Controle de Pesca, v0.1.0")
    // Lê o peso de peixes a ser analisado.
    escreval("Insira o peso total de peixes: ")
    leia(peso)
    
    // Verifica se o peso excede o limite.
    se (peso > 50) entao
        // Pega a quantidade de peso excedente.
        pesoExcesso <- peso - pesoLimite
        // Calcula a multa em cima dessa quantidade.
        multaExcesso <- pesoExcesso * multa
    fimse
    
    // Exibe o total de multa a ser paga e a excedência.
    escreva("Você deverá pagar R$ ", multaExcesso, " de multa, pra ")
    escreval(pesoExcesso, " kg de excesso.")
fimalgoritmo
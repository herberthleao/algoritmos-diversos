algoritmo "NotaConceitual"
// Disciplina   :  Lógica de Programação
// Professora   : Tatyane Calixto
// Descrição   : Exibe nota conceitual, de acordo com a nota numérica.
// Autor(a)    : Herberth Leão
// Data atual  : 07/10/2020
var
   conceitos: vetor[0..10] de caractere
   nota: inteiro

funcao validarNota(nota: inteiro): logico
// Verifica se a nota fornecida é válida (0-10).
var
   validacao: logico
inicio
   validacao <- falso

   se (nota >= 0) e (nota <= 10) entao
      validacao <- verdadeiro
   fimse

   retorne validacao
fimfuncao

inicio
   // Define as notas conceituais.
   conceitos[0] <- "E"
   conceitos[3] <- "D"
   conceitos[5] <- "C"
   conceitos[7] <- "B"
   conceitos[9] <- "A"
   conceitos[1] <- conceitos[0]
   conceitos[10] <- conceitos[9]
   conceitos[2] <- conceitos[0] + conceitos[3] // ED
   conceitos[4] <- conceitos[3] + conceitos[5] // DC
   conceitos[6] <- conceitos[5] + conceitos[7] // CB
   conceitos[8] <- conceitos[7] + conceitos[9] // BA

   // Lê a nota numérica.
   escreva("Digite sua nota (0-10): ")
   leia(nota)

   limpatela
   
   // Se for uma nota válida, exibe o equivalente conceitual.
   se validarNota(nota) = verdadeiro entao
      escreval("Nota Conceitual: ", conceitos[nota])
   senao
      escreval("Nota inválida!")
   fimse
fimalgoritmo
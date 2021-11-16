algoritmo "GerenciadorDeConsultas"
// Disciplina   :  Lógica de Programação
// Professora   : Tatyane Calixto
// Descrição   : Gerencia as consultas marcadas de uma clínica.
// Autor(a)    : Herberth Leão
// Data atual  : 04/10/2020
var
   menu: vetor[0..3] de caractere
   consultas: vetor[8..16] de caractere
   encerra: logico
   contador: inteiro

procedimento inicializar()
// Inicializa as variáveis.
inicio
   encerra <- falso

   menu[0] <- "Agendar"
   menu[1] <- "Verificar Horário"
   menu[2] <- "Verificar Paciente"
   menu[3] <- "Sair"

   para contador de 8 ate 16 faca
      consultas[contador] <- ""
   fimpara
fimprocedimento

funcao validar(horario: inteiro): logico
// Valida o horário. A escolha deve ser de 8 a 16 (conforme expediente).
var
   validacao: logico
inicio
   validacao <- falso

   // Se a opção não está dentro do intervalo de 8 a 16, então é um horário
   // inválido. Isso evita que seja passado um índice incorreto para o vetor de
   // consultas.
   para contador de 8 ate 16 faca
      se horario = contador entao
         validacao <- verdadeiro
      fimse
   fimpara

   retorne validacao
fimfuncao

funcao checarDisponibilidade(horario: inteiro): logico
// Verifica se o horário especificado está disponível ou ocupado.
var
   disponibilidade: logico
inicio
   disponibilidade <- falso

   se consultas[horario] = "" entao
      disponibilidade <- verdadeiro
   fimse

   retorne disponibilidade
fimfuncao

procedimento exibirMenu()
// Exibe todas as opções do menu.
var
   contador: inteiro
inicio
   limpatela
   para contador de 0 ate 3 faca
      escreval(contador, " - ", menu[contador])
   fimpara
fimprocedimento

procedimento controlarMenu()
// Controla o fluxo do menu principal.
var
   acao: inteiro
inicio
   // Renderiza o menu.
   exibirMenu()
   // Lê a opção escolhida pelo usuário.
   leia(acao)

   // Encaminha para a ação, de acordo com a opção escolhida.
   // Se a opção for inválida, exibe um alerta.
   escolha acao
   caso 0
      agendar()
   caso 1
      verificarHorario()
   caso 2
      verificarPaciente()
   caso 3
      sair()
   outrocaso
      exibirAlerta("Opção inválida!")
   fimescolha
fimprocedimento

procedimento agendar()
// Agenda uma nova consulta.
var
   nome: caractere
   horario: inteiro
inicio
   // Eixbe o cabeçalho.
   exibirSecao("Agendar Nova Consulta")

   // Lê o nome e o horário.
   escreva("Digite seu nome: ")
   leia(nome)
   escreva("Digite o horário (8-16): ")
   leia(horario)

   // Valida se o horário está dentro do intervalo e no formato correto.
   se validar(horario) = verdadeiro entao
      // Verifica se o horário está livre.
      se checarDisponibilidade(horario) = verdadeiro entao
         consultas[horario] <- nome
      senao
         exibirAlerta("Horário indisponível!")
         agendar()
      fimse
   senao
      exibirAlerta("Horário inválido! Por favor, escolha uma opção de 8 a 16.")
      agendar()
   fimse
fimprocedimento

procedimento verificarHorario()
// Verifica quem está agendado para dado horário.
var
   horario: inteiro
inicio
   // Eixbe o cabeçalho.
   exibirSecao("Verificar Horário")

   // Lê o horário.
   escreva("Digite o horário (8-16): ")
   leia(horario)

   // Valida se o horário está dentro do intervalo e no formato correto.
   se validar(horario) = verdadeiro entao
      // Verifica se o horário está livre.
      se checarDisponibilidade(horario) = verdadeiro entao
         exibirAlerta("Este horário está disponível!")
      senao
         escreval("")
         escreval("Horário já reservado para: ", consultas[horario])
         
         exibirRodape()
      fimse
   senao
      exibirAlerta("Horário inválido! Por favor, escolha uma opção de 8 a 16.")
      verificarHorario()
   fimse
fimprocedimento

procedimento verificarPaciente()
// Checa os horários agendados para dado paciente.
var
   nome: caractere
   aux: inteiro
   reservas: vetor[0..8] de inteiro
inicio
   aux <- 0

   // Eixbe o cabeçalho.
   exibirSecao("Verificar Registro de Paciente")

   // Lê o nome.
   escreva("Digite seu nome: ")
   leia(nome)

   // Itera o vetor de consultas e armazena todos os horários do paciente.
   para contador de 8 ate 16 faca
      se consultas[contador] = nome entao
         reservas[aux] <- contador
         aux <- aux + 1
      fimse
   fimpara

   // Se aux ainda for 0 (zero), significa que não foram encontrados registros
   // para o paciente em questão.
   se aux = 0 entao
      exibirAlerta("Nenhum horário agendado para o(a) paciente!")
   senao
      // Do contrário, exibe todos os registros encontrados.
      escreval("")
      escreva("Horário(s) reservado(s) para ", nome, ": ")

      para contador de 0 ate 8 faca
         se reservas[contador] <> 0 entao
            escreva(reservas[contador], " ")
         fimse
      fimpara

      exibirRodape()
   fimse
fimprocedimento

procedimento sair()
// Altera o estado da variável de controle do loop, para encerrar o algoritmo.
inicio
   encerra <- verdadeiro
fimprocedimento

procedimento exibirSecao(titulo: caractere)
// Exibe uma nova seção com o título especificado.
inicio
   limpatela
   escreval(titulo)
   escreval()
fimprocedimento

procedimento exibirAlerta(texto: caractere)
// Exibe uma mensagem, durante um determinado tempo.
inicio
   limpatela
   escreval(texto)
   // Define o tempo de espera.
   timer 3000
   timer 0
fimprocedimento

procedimento exibirRodape()
// Espera a até que o usuário tecle, para voltar ao menu principal.
// Ajuda a exibir os dados durante o tempo que o usuário necessitar.
var
   opcao: inteiro
inicio
   escreval("")
   escreval("0 - Voltar")

   leia(opcao)
fimprocedimento

inicio
   // Inicializa todas as variáveis essenciais.
   inicializar()

   // Executa até que o usuário escolha sair.
   enquanto encerra = falso faca
      controlarMenu()
   fimenquanto
fimalgoritmo
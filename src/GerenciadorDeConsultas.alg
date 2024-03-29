algoritmo "GerenciadorDeConsultas"
// Disciplina   :  L�gica de Programa��o
// Professora   : Tatyane Calixto
// Descri��o   : Gerencia as consultas marcadas de uma cl�nica.
// Autor(a)    : Herberth Le�o
// Data atual  : 04/10/2020
var
   menu: vetor[0..3] de caractere
   consultas: vetor[8..16] de caractere
   encerra: logico
   contador: inteiro

procedimento inicializar()
// Inicializa as vari�veis.
inicio
   encerra <- falso

   menu[0] <- "Agendar"
   menu[1] <- "Verificar Hor�rio"
   menu[2] <- "Verificar Paciente"
   menu[3] <- "Sair"

   para contador de 8 ate 16 faca
      consultas[contador] <- ""
   fimpara
fimprocedimento

funcao validar(horario: inteiro): logico
// Valida o hor�rio. A escolha deve ser de 8 a 16 (conforme expediente).
var
   validacao: logico
inicio
   validacao <- falso

   // Se a op��o n�o est� dentro do intervalo de 8 a 16, ent�o � um hor�rio
   // inv�lido. Isso evita que seja passado um �ndice incorreto para o vetor de
   // consultas.
   para contador de 8 ate 16 faca
      se horario = contador entao
         validacao <- verdadeiro
      fimse
   fimpara

   retorne validacao
fimfuncao

funcao checarDisponibilidade(horario: inteiro): logico
// Verifica se o hor�rio especificado est� dispon�vel ou ocupado.
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
// Exibe todas as op��es do menu.
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
   // L� a op��o escolhida pelo usu�rio.
   leia(acao)

   // Encaminha para a a��o, de acordo com a op��o escolhida.
   // Se a op��o for inv�lida, exibe um alerta.
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
      exibirAlerta("Op��o inv�lida!")
   fimescolha
fimprocedimento

procedimento agendar()
// Agenda uma nova consulta.
var
   nome: caractere
   horario: inteiro
inicio
   // Eixbe o cabe�alho.
   exibirSecao("Agendar Nova Consulta")

   // L� o nome e o hor�rio.
   escreva("Digite seu nome: ")
   leia(nome)
   escreva("Digite o hor�rio (8-16): ")
   leia(horario)

   // Valida se o hor�rio est� dentro do intervalo e no formato correto.
   se validar(horario) = verdadeiro entao
      // Verifica se o hor�rio est� livre.
      se checarDisponibilidade(horario) = verdadeiro entao
         consultas[horario] <- nome
      senao
         exibirAlerta("Hor�rio indispon�vel!")
         agendar()
      fimse
   senao
      exibirAlerta("Hor�rio inv�lido! Por favor, escolha uma op��o de 8 a 16.")
      agendar()
   fimse
fimprocedimento

procedimento verificarHorario()
// Verifica quem est� agendado para dado hor�rio.
var
   horario: inteiro
inicio
   // Eixbe o cabe�alho.
   exibirSecao("Verificar Hor�rio")

   // L� o hor�rio.
   escreva("Digite o hor�rio (8-16): ")
   leia(horario)

   // Valida se o hor�rio est� dentro do intervalo e no formato correto.
   se validar(horario) = verdadeiro entao
      // Verifica se o hor�rio est� livre.
      se checarDisponibilidade(horario) = verdadeiro entao
         exibirAlerta("Este hor�rio est� dispon�vel!")
      senao
         escreval("")
         escreval("Hor�rio j� reservado para: ", consultas[horario])
         
         exibirRodape()
      fimse
   senao
      exibirAlerta("Hor�rio inv�lido! Por favor, escolha uma op��o de 8 a 16.")
      verificarHorario()
   fimse
fimprocedimento

procedimento verificarPaciente()
// Checa os hor�rios agendados para dado paciente.
var
   nome: caractere
   aux: inteiro
   reservas: vetor[0..8] de inteiro
inicio
   aux <- 0

   // Eixbe o cabe�alho.
   exibirSecao("Verificar Registro de Paciente")

   // L� o nome.
   escreva("Digite seu nome: ")
   leia(nome)

   // Itera o vetor de consultas e armazena todos os hor�rios do paciente.
   para contador de 8 ate 16 faca
      se consultas[contador] = nome entao
         reservas[aux] <- contador
         aux <- aux + 1
      fimse
   fimpara

   // Se aux ainda for 0 (zero), significa que n�o foram encontrados registros
   // para o paciente em quest�o.
   se aux = 0 entao
      exibirAlerta("Nenhum hor�rio agendado para o(a) paciente!")
   senao
      // Do contr�rio, exibe todos os registros encontrados.
      escreval("")
      escreva("Hor�rio(s) reservado(s) para ", nome, ": ")

      para contador de 0 ate 8 faca
         se reservas[contador] <> 0 entao
            escreva(reservas[contador], " ")
         fimse
      fimpara

      exibirRodape()
   fimse
fimprocedimento

procedimento sair()
// Altera o estado da vari�vel de controle do loop, para encerrar o algoritmo.
inicio
   encerra <- verdadeiro
fimprocedimento

procedimento exibirSecao(titulo: caractere)
// Exibe uma nova se��o com o t�tulo especificado.
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
// Espera a at� que o usu�rio tecle, para voltar ao menu principal.
// Ajuda a exibir os dados durante o tempo que o usu�rio necessitar.
var
   opcao: inteiro
inicio
   escreval("")
   escreval("0 - Voltar")

   leia(opcao)
fimprocedimento

inicio
   // Inicializa todas as vari�veis essenciais.
   inicializar()

   // Executa at� que o usu�rio escolha sair.
   enquanto encerra = falso faca
      controlarMenu()
   fimenquanto
fimalgoritmo
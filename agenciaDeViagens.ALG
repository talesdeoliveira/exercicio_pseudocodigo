Algoritmo "semnome"

Var
   // Se��o de Declara��es das vari�veis
   nome: vetor[1..5] de caractere
   sexo: vetor[1..5] de caractere
   dataNasc: vetor[1..5] de caractere
   celular: vetor[1..5] de caractere
   cpf: vetor[1..5] de caractere
   endereco: vetor[1..5] de caracter
   bairro: vetor[1..5] de caractere
   cidade: vetor[1..5] de caractere
   estado: vetor[1..5] de caractere
   cep: vetor[1..5] de caractere
   
   cpfCliente: caractere

   codDest: vetor[1..5] de caractere
   cidadeDest: vetor[1..5] de caractere
   estadoDest: vetor[1..5] de caractere
   periodo: vetor[1..5] de caractere
   infoDest: vetor[1..5] de caractere



   opcao: caracter
   i,s,j: inteiro
   simOuNao: caractere


   ///////////////////////Procedimento Tela Inicial////////////////////////////////

procedimento tela_inicial ()

inicio
   enquanto opcao <> "5" faca
      escreval("---------------------------------------------------")
      escreval("          Bem-vindo(a) � TOGGY viagens!!!          ")
      escreval("---------------------------------------------------")
      escreval("(1) Cadastrar cliente")
      escreval("(2) Consultar cliente cadastrado")
      escreval("(3) Cadastrar destinos")
      escreval("(4) Consultar destinos")
      escreval("(5) Sair")
      escreva("Digite o n�mero correspondente a op��o desejada: ")
      leia(opcao)
      se opcao = "1" entao
         limpatela
         cadastro_clientes ()
      fimse
      se opcao = "2" entao
         limpatela
         consulta_clientes ()
      fimse
      se opcao = "3" entao
         limpatela
         cadastro_destinos
      fimse
      se opcao = "4" entao
         limpatela
         consulta_destinos
      fimse
      se opcao = "5" entao
         limpatela
         escreva("Obrigado, volte sempre!")
      fimse
   fimenquanto

fimprocedimento


///////////////////////Procedimento Cadastro de clientes////////////////////////

procedimento cadastro_clientes ()

inicio
   escreval("--------------------------------------------------")
   escreval("               Cadastro de Clientes               ")
   escreval("--------------------------------------------------")

   para i de 1 ate 5 faca
      se (nome[i] = "") entao
         escreva("Nome completo: ")
         leia(nome[i])
         enquanto (nome[i] = "") faca
            escreval("Preenchimento obrigat�rio!")
            escreva("Nome completo: ")
            leia(nome[i])
         fimenquanto
         escreva("Confirma? (S/N): ")
         leia(simOuNao)
         enquanto (simOuNao <> "n") e (simOuNao <> "N") e (simOuNao <> "s") e (simOuNao <> "S") faca
            escreval("Por favor, digite a letra 'S' para sim ou a letra 'N' para n�o.")
            escreva("Confirma? (S/N):  ")
            leia(simOuNao)
         fimenquanto
         enquanto (simOuNao = "n") ou (simOuNao = "N") faca
            escreva("Nome Completo: ")
            leia(nome[i])
            enquanto (nome[i] = "") faca
               escreval("Preenchimento obrigat�rio!")
               escreva("Nome completo: ")
               leia(nome[i])
            fimenquanto
            escreva("Confirma? (S/N): ")
            leia(simOuNao)
         fimenquanto
         se (simOuNao = "s") ou (simOuNao = "S") entao

            escreva("Sexo (M/F): ")
         fimse

         leia(sexo[i])
         enquanto (sexo[i] = "") faca
            escreval("Preenchimento obrigat�rio!")
            escreva("Sexo (M/F): ")
            leia(sexo[i])
         fimenquanto
         enquanto (sexo[i] <> "M") e (sexo[i] <> "F") faca
            escreval("Digite 'M' para masculino e 'F' para feminino.")
            escreva("Sexo (M/F): ")
            leia(sexo[i])
         fimenquanto
         escreva("Confirma? (S/N): ")
         leia(simOuNao)
         enquanto (simOuNao <> "n") e (simOuNao <> "N") e (simOuNao <> "s") e (simOuNao <> "S") faca
            escreval("Por favor, digite a letra 'S' para sim ou a letra 'N' para n�o.")
            escreva("Confirma? (S/N):  ")
            leia(simOuNao)
         fimenquanto
         enquanto (simOuNao = "n") ou (simOuNao = "N") faca
            escreva("Sexo (M/F): ")
            leia(sexo[i])
            enquanto (sexo[i] = "") faca
               escreval("Preenchimento obrigat�rio!")
               escreva("Sexo (M/F): ")
               leia(sexo[i])
            fimenquanto
            enquanto (sexo[i] <> "M") e (sexo[i] <> "F")
               escreval("Digite 'M' para masculino e 'F' para feminino.)
               escreva("Sexo (M/F): ")
               leia(sexo[i])
            fimenquanto
            escreva("Confirma? (S/N): ")
            leia(simOuNao)
         fimenquanto
         se (simOuNao = "s") ou (simOuNao = "S") entao

            escreva("Data de Nascimento (dd/mm/aaaa): ")
         fimse

         leia(dataNasc[i])
         enquanto (dataNasc[i] = "") faca
            escreval("Preenchimento obrigat�rio!")
            escreva("Data de Nascimento (dd/mm/aaaa): ")
            leia(dataNasc[i])
         fimenquanto
         escreva("Confirma? (S/N): ")
         leia(simOuNao)
         enquanto (simOuNao <> "n") e (simOuNao <> "N") e (simOuNao <> "s") e (simOuNao <> "S") faca
            escreval("Por favor, digite a letra 'S' para sim ou a letra 'N' para n�o.")
            escreva("Confirma? (S/N):  ")
            leia(simOuNao)
         fimenquanto
         enquanto (simOuNao = "n") ou (simOuNao = "N") faca
            escreva("Data de Nascimento (dd/mm/aaaa): ")
            leia(dataNasc[i])
            enquanto (dataNasc[i] = "") faca
               escreval("Preenchimento obrigat�rio!")
               escreva("Data de Nascimento (dd/mm/aaaa): ")
               leia(dataNasc[i])
            fimenquanto
            escreva("Confirma? (S/N): ")
            leia(simOuNao)
         fimenquanto
         se (simOuNao = "s") ou (simOuNao = "S") entao

            escreva("DDD+Celular (apenas n�meros): ")
         fimse

         leia(celular[i])
         enquanto (celular[i] = "") faca
            escreval("Preenchimento obrigat�rio!")
            escreva("DDD+Celular (apenas n�meros): ")
            leia(celular[i])
         fimenquanto
         escreva("Confirma? (S/N): ")
         leia(simOuNao)
         enquanto (simOuNao <> "n") e (simOuNao <> "N") e (simOuNao <> "s") e (simOuNao <> "S") faca
            escreval("Por favor, digite a letra 'S' para sim ou a letra 'N' para n�o.")
            escreva("Confirma? (S/N):  ")
            leia(simOuNao)
         fimenquanto
         enquanto (simOuNao = "n") ou (simOuNao = "N") faca
            escreva("DDD+Celular (apenas n�meros): ")
            leia(celular[i])
            enquanto (celular[i] = "") faca
               escreval("Preenchimento obrigat�rio!")
               escreva("DDD+Celular (apenas n�meros): ")
               leia(celular[i])
            fimenquanto
            escreva("Confirma? (S/N): ")
            leia(simOuNao)
         fimenquanto
         se (simOuNao = "s") ou (simOuNao = "S") entao

            escreva("CPF: ")
         fimse

         leia(cpf[i])
         enquanto (cpf[i] = "") faca
            escreval("Preenchimento obrigat�rio!")
            escreva("CPF (apenas n�meros): ")
            leia(cpf[i])
         fimenquanto
         escreva("Confirma? (S/N): ")
         leia(simOuNao)
         enquanto (simOuNao <> "n") e (simOuNao <> "N") e (simOuNao <> "s") e (simOuNao <> "S") faca
            escreval("Por favor, digite a letra 'S' para sim ou a letra 'N' para n�o.")
            escreva("Confirma? (S/N):  ")
            leia(simOuNao)
         fimenquanto
         enquanto (simOuNao = "n") ou (simOuNao = "N") faca
            escreva("CPF (apenas n�meros): ")
            leia(cpf[i])
            enquanto (cpf[i] = "") faca
               escreval("Preenchimento obrigat�rio!")
               escreva("CPF (apenas n�meros): ")
               leia(cpf[i])
            fimenquanto
            escreva("Confirma? (S/N): ")
            leia(simOuNao)
         fimenquanto
         se (simOuNao = "s") ou (simOuNao = "S") entao

            escreva("Endere�o: ")
         fimse

         leia(endereco[i])
         enquanto (endereco[i] = "") faca
            escreval("Preenchimento obrigat�rio!")
            escreva("Endere�o: ")
            leia(endereco[i])
         fimenquanto
         escreva("Confirma? (S/N): ")
         leia(simOuNao)
         enquanto (simOuNao <> "n") e (simOuNao <> "N") e (simOuNao <> "s") e (simOuNao <> "S") faca
            escreval("Por favor, digite a letra 'S' para sim ou a letra 'N' para n�o.")
            escreva("Confirma? (S/N):  ")
            leia(simOuNao)
         fimenquanto
         enquanto (simOuNao = "n") ou (simOuNao = "N") faca
            escreva("Endere�o: ")
            leia(endereco[i])
            enquanto (endereco[i] = "") faca
               escreval("Preenchimento obrigat�rio!")
               escreva("Endere�o: ")
               leia(endereco[i])
            fimenquanto
            escreva("Confirma? (S/N): ")
            leia(simOuNao)
         fimenquanto
         se (simOuNao = "s") ou (simOuNao = "S") entao

            escreva("Bairro: ")
         fimse

         leia(bairro[i])
         enquanto (bairro[i] = "") faca
            escreval("Preenchimento obrigat�rio!")
            escreva("Bairro: ")
            leia(bairro[i])
         fimenquanto
         escreva("Confirma? (S/N): ")
         leia(simOuNao)
         enquanto (simOuNao <> "n") e (simOuNao <> "N") e (simOuNao <> "s") e (simOuNao <> "S") faca
            escreval("Por favor, digite a letra 'S' para sim ou a letra 'N' para n�o.")
            escreva("Confirma? (S/N):  ")
            leia(simOuNao)
         fimenquanto
         enquanto (simOuNao = "n") ou (simOuNao = "N") faca
            escreva("Bairro: ")
            leia(bairro[i])
            enquanto (bairro[i] = "") faca
               escreval("Preenchimento obrigat�rio!")
               escreva("Bairro: ")
               leia(bairro[i])
            fimenquanto
            escreva("Confirma? (S/N): ")
            leia(simOuNao)
         fimenquanto
         se (simOuNao = "s") ou (simOuNao = "S") entao

            escreva("Cidade: ")
         fimse

         leia(cidade[i])
         enquanto (cidade[i] = "") faca
            escreval("Preenchimento obrigat�rio!")
            escreva("Cidade: ")
            leia(cidade[i])
         fimenquanto
         escreva("Confirma? (S/N): ")
         leia(simOuNao)
         enquanto (simOuNao <> "n") e (simOuNao <> "N") e (simOuNao <> "s") e (simOuNao <> "S") faca
            escreval("Por favor, digite a letra 'S' para sim ou a letra 'N' para n�o.")
            escreva("Confirma? (S/N):  ")
            leia(simOuNao)
         fimenquanto
         enquanto (simOuNao = "n") ou (simOuNao = "N") faca
            escreva("Cidade: ")
            leia(cidade[i])
            enquanto (cidade[i] = "") faca
               escreval("Preenchimento obrigat�rio!")
               escreva("Cidade: ")
               leia(cidade[i])
            fimenquanto
            escreva("Confirma? (S/N): ")
            leia(simOuNao)
         fimenquanto
         se (simOuNao = "s") ou (simOuNao = "S") entao

            escreva("Estado (ex.: RJ): ")
         fimse

         leia(estado[i])
         enquanto (estado[i] = "") faca
            escreval("Preenchimento obrigat�rio!")
            escreva("Estado (ex.: RJ): ")
            leia(estado[i])
         fimenquanto
         escreva("Confirma? (S/N): ")
         leia(simOuNao)
         enquanto (simOuNao <> "n") e (simOuNao <> "N") e (simOuNao <> "s") e (simOuNao <> "S") faca
            escreval("Por favor, digite a letra 'S' para sim ou a letra 'N' para n�o.")
            escreva("Confirma? (S/N):  ")
            leia(simOuNao)
         fimenquanto
         enquanto (simOuNao = "n") ou (simOuNao = "N") faca
            escreva("Estado (ex.: RJ): ")
            leia(estado[i])
            enquanto (estado[i] = "") faca
               escreval("Preenchimento obrigat�rio!")
               escreva("Estado (ex.: RJ): ")
               leia(estado[i])
            fimenquanto
            escreva("Confirma? (S/N): ")
            leia(simOuNao)
         fimenquanto
         se (simOuNao = "s") ou (simOuNao = "S") entao

            escreva("CEP (apenas n�meros): ")
         fimse

         leia(cep[i])
         enquanto (cep[i] = "") faca
            escreval("Preenchimento obrigat�rio!")
            escreva("CEP (apenas n�meros): ")
            leia(cep[i])
         fimenquanto
         escreva("Confirma? (S/N): ")
         leia(simOuNao)
         enquanto (simOuNao <> "n") e (simOuNao <> "N") e (simOuNao <> "s") e (simOuNao <> "S") faca
            escreval("Por favor, digite a letra 'S' para sim ou a letra 'N' para n�o.")
            escreva("Confirma? (S/N):  ")
            leia(simOuNao)
         fimenquanto
         enquanto (simOuNao = "n") ou (simOuNao = "N") faca
            escreva("CEP (apenas n�meros): ")
            leia(cep[i])
            enquanto (cep[i] = "") faca
               escreval("Preenchimento obrigat�rio!")
               escreva("CEP (apenas n�meros): ")
               leia(cep[i])
            fimenquanto
            escreva("Confirma? (S/N): ")
            leia(simOuNao)
         fimenquanto
         se (simOuNao = "s") ou (simOuNao = "S") entao
            escreval("")
            escreval("Nome:",nome[i])
            escreval("Sexo:",sexo[i])
            escreval("Data de Nascimento:",dataNasc[i])
            escreval("Celular:",celular[i])
            escreval("CPF:",cpf[i])
            escreval("Endere�o:",endereco[i])
            escreval("Bairro:",bairro[i])
            escreval("Cidade:",cidade[i])
            escreval("Estado:",estado[i])
            escreval("CEP:",cep[i])
            escreval("")
         fimse
         voltar_menu ()
         limpatela
      fimse
      enquanto (i = 5) faca
         escreval("Esgotado o limite de cadastro!")
         escreval("")
         voltar_menu2 ()
      fimenquanto
   fimpara

fimprocedimento


///////////////////////Procedimento Voltar para Menu_1//////////////////////////

procedimento voltar_menu
inicio

   escreva("Voltar para o menu? (S/N): ")
   leia(opcao)

   enquanto (opcao = "s") ou (opcao = "S") faca
      limpatela
      tela_inicial ()
   fimenquanto

   enquanto (opcao = "n") ou (opcao = "N") faca
      limpatela
      cadastro_clientes ()
   fimenquanto

   enquanto (opcao <> "s") ou (opcao <> "S") ou (opcao <> "n") ou (opcao <> "N") faca
      escreva("Voltar para o menu? (S/N): ")
      leia(opcao)
      enquanto (opcao = "s") ou (opcao = "S") faca
         limpatela
         tela_inicial ()
      fimenquanto

      enquanto (opcao = "n") ou (opcao = "N") faca
         limpatela
         cadastro_clientes ()
      fimenquanto

   fimenquanto

fimprocedimento

/////////////////Procedimento Voltar para o Menu_2///////////////////////////////

procedimento voltar_menu2
inicio
   escreva("Digite a letra 'S' para voltar ao menu inicial: ")
   leia(opcao)
   enquanto (opcao = "s") ou (opcao = "S") faca
      limpatela
      tela_inicial ()
   fimenquanto
   enquanto (opcao <> "s") ou (opcao <> "S") faca
      escreva("Digite a letra 'S' para voltar ao menu inicial: ")
      leia(opcao)
      enquanto (opcao = "s") ou (opcao = "S") faca
         limpatela
         tela_inicial ()
      fimenquanto
   fimenquanto
fimprocedimento

////////////////////Procedimento Consulta de Clientes////////////////////////////

procedimento consulta_clientes ()
var

inicio
   escreval("--------------------------------------------------")
   escreval("               Consulta de Clientes               ")
   escreval("--------------------------------------------------")

   escreva("Digite o CPF do(a) cliente: ")
   leia(cpfCliente)
   enquanto (cpfCliente = "") faca
      escreval("Preenchimento obrigat�rio!")
      escreval("")
      escreva("Digite o CPF do(a) cliente: ")
      leia(cpfCliente)
   fimenquanto

   para i de 1 ate 5 faca
      se (cpfCliente = cpf[i]) entao
         escreval("Nome: ",nome[i])
         escreval("Sexo: ",sexo[i])
         escreval("Data de Nascimento: ",dataNasc[i])
         escreval("Celular: ",celular[i])
         escreval("CPF: ", cpf[i])
         escreval("Endere�o: ",endereco[i])
         escreval("Bairro: ",bairro[i])
         escreval("Cidade: ",cidade[i])
         escreval("Estado: ",estado[i])
         escreval("CEP: ",cep[i])
      fimse

         enquanto (cpfCliente <> cpf[i]) ou (cpfCliente = "") faca
            escreval("Cliente n�o encontrado ou inexistente.")
            escreval("")
            escreva("Digite o CPF do(a) cliente: ")
            leia(cpfCliente)
         fimenquanto

      voltar_menu4 ()
      limpatela
   fimpara
fimprocedimento

////////////////////Procedimento Voltar para o Menu_4////////////////////////////

Procedimento voltar_menu4 ()
inicio

   escreva("Voltar para o menu? (S/N): ")
   leia(opcao)

   enquanto (opcao = "s") ou (opcao = "S") faca
      limpatela
      tela_inicial ()
   fimenquanto

   enquanto (opcao = "n") ou (opcao = "N") faca
      limpatela
      consulta_clientes ()
   fimenquanto

   enquanto (opcao <> "s") ou (opcao <> "S") ou (opcao <> "n") ou (opcao <> "N") faca
      escreva("Voltar para o menu? (S/N): ")
      leia(opcao)
      enquanto (opcao = "s") ou (opcao = "S") faca
         limpatela
         tela_inicial ()
      fimenquanto

      enquanto (opcao = "n") ou (opcao = "N") faca
         limpatela
         consulta_clientes ()
      fimenquanto

   fimenquanto

fimprocedimento

////////////////////Procedimento Cadastro de Destinos////////////////////////////

procedimento cadastro_destinos ()

inicio
   escreval("--------------------------------------------------")
   escreval("               Cadastro de Destinos               ")
   escreval("--------------------------------------------------")
   para i de 1 ate 5 faca
      se (codDest[i] = "") entao
         escreva("C�digo de destino: ")
         aleatorio on
         leia(codDest[i])
         aleatorio off
      fimse
      se (cidadeDest[i] = "") entao
         escreva("Cidade destino: ")
         leia(cidadeDest[i])
         enquanto (cidadeDest[i] = "") faca
            escreval("Preenchimento obrigat�rio!")
            escreva("Cidade destino: ")
            leia(cidadeDest[i])
         fimenquanto
         escreva("Confirma? (S/N): ")
         leia(simOuNao)
         enquanto (simOuNao <> "n") e (simOuNao <> "N") e (simOuNao <> "s") e (simOuNao <> "S") faca
            escreval("Por favor, digite a letra 'S' para sim ou a letra 'N' para n�o.")
            escreva("Confirma? (S/N):  ")
            leia(simOuNao)
         fimenquanto
         enquanto (simOuNao = "n") ou (simOuNao = "N") faca
            escreva("Cidade destino: ")
            leia(cidadeDest[i])
            enquanto (cidadeDest[i] = "") faca
               escreval("Preenchimento obrigat�rio!")
               escreva("Cidade destino: ")
               leia(cidadeDest[i])
            fimenquanto
            escreva("Confirma? (S/N): ")
            leia(simOuNao)
         fimenquanto
         se (simOuNao = "s") ou (simOuNao = "S") entao
            escreva("Estado: ")
         fimse
         leia(estadoDest[i])
         enquanto (estadoDest[i] = "") faca
            escreval("Preenchimento obrigat�rio!")
            escreva("Estado: ")
            leia(estadoDest[i])
         fimenquanto
         escreva("Confirma? (S/N): ")
         leia(simOuNao)
         enquanto (simOuNao <> "n") e (simOuNao <> "N") e (simOuNao <> "s") e (simOuNao <> "S") faca
            escreval("Por favor, digite a letra 'S' para sim ou a letra 'N' para n�o.")
            escreva("Confirma? (S/N):  ")
            leia(simOuNao)
         fimenquanto
         enquanto (simOuNao = "n") ou (simOuNao = "N") faca
            escreva("Estado: ")
            leia(estadoDest[i])
            enquanto (estadoDest[i] = "") faca
               escreval("Preenchimento obrigat�rio!")
               escreva("Estado: ")
               leia(estadoDest[i])
            fimenquanto
            escreva("Confirma? (S/N): ")
            leia(simOuNao)
         fimenquanto
         se (simOuNao = "s") ou (simOuNao = "S") entao

            escreva("Per�odo: ")
         fimse
         leia(periodo[i])
         enquanto (periodo[i] = "") faca
            escreval("Preenchimento obrigat�rio!")
            escreva("Per�odo: ")
            leia(periodo[i])
         fimenquanto
         escreva("Confirma? (S/N): ")
         leia(simOuNao)
         enquanto (simOuNao <> "n") e (simOuNao <> "N") e (simOuNao <> "s") e (simOuNao <> "S") faca
            escreval("Por favor, digite a letra 'S' para sim ou a letra 'N' para n�o.")
            escreva("Confirma? (S/N):  ")
            leia(simOuNao)
         fimenquanto
         enquanto (simOuNao = "n") ou (simOuNao = "N") faca
            escreva("Per�odo: ")
            leia(periodo[i])
            enquanto (periodo[i] = "") faca
               escreval("Preenchimento obrigat�rio!")
               escreva("Per�odo: ")
               leia(periodo[i])
            fimenquanto
            escreva("Confirma? (S/N): ")
            leia(simOuNao)
         fimenquanto
         se (simOuNao = "s") ou (simOuNao = "S") entao

            escreva("Informa��es: ")
         fimse
         leia(infoDest[i])
         enquanto (infoDest[i] = "") faca
            escreval("Preenchimento obrigat�rio!")
            escreva("Informa��es: ")
            leia(infoDest[i])
         fimenquanto
         escreva("Confirma? (S/N): ")
         leia(simOuNao)
         enquanto (simOuNao <> "n") e (simOuNao <> "N") e (simOuNao <> "s") e (simOuNao <> "S") faca
            escreval("Por favor, digite a letra 'S' para sim ou a letra 'N' para n�o.")
            escreva("Confirma? (S/N):  ")
            leia(simOuNao)
         fimenquanto
         enquanto (simOuNao = "n") ou (simOuNao = "N") faca
            escreva("Informa��es: ")
            leia(infoDest[i])
            enquanto (infoDest[i] = "") faca
               escreval("Preenchimento obrigat�rio!")
               escreva("Informa��es: ")
               leia(infoDest[i])
            fimenquanto
            escreva("Confirma? (S/N): ")
            leia(simOuNao)
         fimenquanto
         se (simOuNao = "s") ou (simOuNao = "S") entao
            escreval("")
            escreval("Cadastro realizado com sucesso!")
            escreval("")
            escreval("C�digo de destino: ", codDest[i])
            escreval("Cidade: ",cidadeDest[i])
            escreval("Estado: ",estadoDest[i])
            escreval("Per�odo: ",periodo[i])
            escreval("Informa��es: ",infoDest[i])
            escreval("")
         fimse
         voltar_menu3 ()
         limpatela
      fimse
      enquanto (i = 5) faca
         escreval("Esgotado o limite de cadastro!")
         escreval("")
         voltar_menu2 ()
      fimenquanto
   fimpara
fimprocedimento

////////////////////Procedimento Voltar para o Menu_3////////////////////////////

procedimento voltar_menu3 ()
inicio
   escreva("Voltar para o menu? (S/N): ")
   leia(opcao)

   enquanto (opcao = "s") ou (opcao = "S") faca
      limpatela
      tela_inicial ()
   fimenquanto

   enquanto (opcao = "n") ou (opcao = "N") faca
      limpatela
      cadastro_destinos ()
   fimenquanto

   enquanto (opcao <> "s") ou (opcao <> "S") ou (opcao <> "n") ou (opcao <> "N") faca
      escreva("Voltar para o menu? (S/N): ")
      leia(opcao)
      enquanto (opcao = "s") ou (opcao = "S") faca
         limpatela
         tela_inicial ()
      fimenquanto

      enquanto (opcao = "n") ou (opcao = "N") faca
         limpatela
         cadastro_destinos ()
      fimenquanto

   fimenquanto
fimprocedimento

////////////////////////////////Consulta de Destinos////////////////////////////

procedimento consulta_destinos ()
var
   codigoCad: caractere
inicio
   escreval("--------------------------------------------------")
   escreval("               Consulta de Destinos               ")
   escreval("--------------------------------------------------")
   escreva("Digite o c�digo do destino: ")
   leia(codigoCad)
   enquanto (codigoCad = "") faca
      escreval("Preenchimento obrigat�rio!")
      escreval("")
      escreva("Digite o c�digo do destino: ")
      leia(codigoCad)
   fimenquanto
   para i de 1 ate 5 faca
      se (codigoCad = codDest[i]) entao
         escreval("Cidade: ",cidadeDest[i])
         escreval("Estado: ",estadoDest[i])
         escreval("Per�odo: ",periodo[i])
         escreval("Informa��es: ", infoDest[i])
      senao
         enquanto (codigoCad <> codDest[i]) faca
            escreval("Destino n�o encontrado ou inexistente.")
            escreval("")
            escreva("Digite o c�digo do destino: ")
            leia(codigoCad)
            enquanto (codigoCad = "") faca
               escreval("Preenchimento obrigat�rio!")
               escreval("")
               escreva("Digite o c�digo do destino: ")
               leia(codigoCad)
            fimenquanto
         fimenquanto
      fimse
   fimpara
   voltar_menu3 ()
   limpatela
fimprocedimento


Inicio

   tela_inicial ()




Fimalgoritmo




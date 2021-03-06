Algoritmo "22-09-pilha-v9.0"
// Disciplina  : L�gica de Programa��o
// Professor   : Edilson Valentim dos Santos Bitencourt
// Descri��o   : Algoritmo para simular Pilha em Software
// Autor       : Ivam Steffens Oliveira
// Data atual  : 20/09/2021
// Observa��es : Cr�ditos pelos banners
//               manytools.org/hacker-tools/ascii-banner/
//
// *********************************************************************
//            Pilha funciona assim: �ltimo elemento que entra
//         � o primeiro que sai, ingl�s: FILO(First-in, Last-out)
//**********************************************************************
//
//      !!!!!!!!!!!           IMPORTANTE             !!!!!!!!!
//
//**********************************************************************
//
//  Ao iniciar o programa, para melhor visualiza��o da pilha, por favor,
//  maximize a tela.
//
//**********************************************************************

Var
   pilha:vetor[0..20] de inteiro
   topo: inteiro
   elemento: inteiro
   valor: inteiro
   i, x, qtd: inteiro
   capMaxVetor: inteiro
   capVetorListar9a1: inteiro
   capMinVetor: inteiro
   opcao: caracter
   separador: caracter
   vermelho: inteiro // controle para mudar de cor, na op��o 1: empilhar
   achouExcluir: logico
   consulta: logico

procedimento inicializar
inicio
   capMaxVetor <- 20
   capVetorListar9a1 <- 9
   capMinVetor <- 1
   topo <- 0
   vermelho <- 1
fimprocedimento

procedimento mudaCorAmarelo
inicio
mudaCor("Amarelo", "Frente")
fimprocedimento

procedimento mudaCorVermelho
inicio
mudaCor("Vermelho", "Frente")
fimprocedimento

procedimento mudaCorBranco
inicio
mudaCor("Branco", "Frente")
fimprocedimento

procedimento mudaCorAzul
inicio
mudaCor("Azul", "Frente")
fimprocedimento

procedimento msgEmpilhar
inicio
// aqui faz parte de um projeto em que estou unindo
// a pilha e a fila no mesmo c�digo-fonte
fimprocedimento

procedimento msgPilhaVazia
inicio
// aqui faz parte de um projeto em que estou unindo
// a pilha e a fila no mesmo c�digo-fonte
fimprocedimento

procedimento msgCapMaxAting
inicio
      bannerAlerta
      escreval()
      escreval("Capacidade m�xima [ ", capMaxVetor, " elementos ] da pilha atingida.")
      escreval()
      escreval("Voc� precisa remover um elemento da pilha para poder adicionar outro.")
      separador2
fimprocedimento

procedimento mensagemInicial
inicio
   escreval("   ==>   Por favor, se a tela n�o estiver maximizada,")
   escreval("   ==>   maximize para uma melhor experi�ncia, obrigado.")
fimprocedimento

procedimento bannerPilha
inicio
   escreval("                ___ ___ _    _  _   _    ")
   escreval("               | _ \_ _| |  | || | /_\   ")
   escreval("               |  _/| || |__| __ |/ _ \  ")
   escreval("               |_| |___|____|_||_/_/ \_\ ")
   escreval("                                         ")
   escreval(separador)
fimprocedimento

procedimento bannerEmpilhado
inicio
escreval("       ___ __  __ ___ ___ _    _  _   _   ___   ___   ")
escreval("      | __|  \/  | _ \_ _| |  | || | /_\ |   \ / _ \  ")
escreval("      | _|| |\/| |  _/| || |__| __ |/ _ \| |) | (_) | ==> ", valor, "  <== ")
escreval("      |___|_|  |_|_| |___|____|_||_/_/ \_\___/ \___/  ")
fimprocedimento

procedimento bannerDesempilhar
inicio
escreval("  ___  ___ ___ ___ __  __ ___ ___ _    _  _   _   ___   ___  ")
escreval(" |   \| __/ __| __|  \/  | _ \_ _| |  | || | /_\ |   \ / _ \ ")
escreval(" | |) | _|\__ \ _|| |\/| |  _/| || |__| __ |/ _ \| |) | (_) | ==> ", x, "  <== ")
escreval(" |___/|___|___/___|_|  |_|_| |___|____|_||_/_/ \_\___/ \___/ ")
escreval()
escreval()
escreval(separador)
escreval(separador)
fimprocedimento

procedimento bannerTopo
inicio
escreval("                  _____ ___  ___  ___  ")
escreval("                 |_   _/ _ \| _ \/ _ \ ")
escreval("                   | || (_) |  _/ (_) | ==> ", pilha[topo], "  <==")
escreval("                   |_| \___/|_|  \___/ ")
escreval()
escreval()
escreval(separador)
escreval(separador)
fimprocedimento

procedimento bannerListagem
inicio
escreval("            _    ___ ___ _____ _   ___ ___ __  __  ")
escreval("           | |  |_ _/ __|_   _/_\ / __| __|  \/  | ")
escreval("           | |__ | |\__ \ | |/ _ \ (_ | _|| |\/| | ")
escreval("           |____|___|___/ |_/_/ \_\___|___|_|  |_| ")
fimprocedimento

procedimento bannerRemovidos
inicio
escreval("       ___ ___ __  __  _____   _____ ___   ___  ___   ")
escreval("      | _ \ __|  \/  |/ _ \ \ / /_ _|   \ / _ \/ __|  ")
escreval("      |   / _|| |\/| | (_) \ V / | || |) | (_) \__ \  ")
escreval("      |_|_\___|_|  |_|\___/ \_/ |___|___/ \___/|___/  ")
fimprocedimento

procedimento bannerMensagem
inicio
escreval("         __  __ ___ _  _ ___   _   ___ ___ __  __     ")
escreval("        |  \/  | __| \| / __| /_\ / __| __|  \/  |    ")
escreval("        | |\/| | _|| .` \__ \/ _ \ (_ | _|| |\/| |    ")
escreval("        |_|  |_|___|_|\_|___/_/ \_\___|___|_|  |_|    ")
escreval()
fimprocedimento

procedimento bannerAlerta
inicio
mudaCorVermelho
escreval("                 _   _    ___ ___ _____ _             ")
escreval("                /_\ | |  | __| _ \_   _/_\            ")
escreval("               / _ \| |__| _||   / | |/ _ \           ")
escreval("              /_/ \_\____|___|_|_\ |_/_/ \_\          ")
escreval()
fimprocedimento

procedimento volteSempre
inicio
escreval("   __   _____  _  _____ ___   ___ ___ __  __ ___ ___  ")
escreval("   \ \ / / _ \| ||_   _| __| / __| __|  \/  | _ \ __| ")
escreval("    \ V / (_) | |__| | | _|  \__ \ _|| |\/| |   / _|  ")
escreval("     \_/ \___/|____|_| |___| |___/___|_|  |_|_|_\___| ")
escreval()
escreval()
separador2
escreval("             _____   _____    _____   _____           ")
escreval("            | _ ) \ / / __|__| _ ) \ / / __|          ")
escreval("            | _ \\ V /| _|___| _ \\ V /| _|           ")
escreval("            |___/ |_| |___|  |___/ |_| |___|          ")
separador2
fimprocedimento

procedimento msgFecharPrograma
inicio
separador2
escreval("   Voc� digitou: [ ", opcao, " ] e escolheu fechar o programa.")
separador2
fimprocedimento

procedimento separador2
inicio
   escreval()
   escreval(separador)
   escreval()
   escreval(separador)
   escreval()
fimprocedimento

procedimento menuPrincipal
inicio
   bannerPilha
   escreval("* Sistema exemplifica conceito de Pilha em Programa��o. *")
   escreval("-------------- Digite uma das op��es abaixo ------------")
   escreval("  1  =>  Empilhar.")
   escreval("  2  =>  Desempilhar.")
   escreval("  3  =>  Topo.")
   escreval("  4  =>  Listar o resultado dos itens desempilhados.")
   escreval("  5  =>  Remover todos elementos da pilha.")
   escreval("  0  =>  (zero) => Fechar o programa.")
   escreval("--------------------------------------------------------")
   escreval("")
   leia(opcao)
   se ( opcao >= 6 ) e ( opcao <> "0" )  entao
      limpatela
      separador2
      bannerAlerta
      escreval("Voc� digitou: [ ", opcao, " ] => Op��o inv�lida.")
      escreval()
      escreval("Digite um n�mero entre 1 e 5, ou [ 0 ( zero ) ] para sair. Obrigado.")
   fimse
fimprocedimento

funcao pilhaVazia: logico
inicio
   se topo = 0 entao
      retorne verdadeiro
   senao
      retorne falso
   fimse
fimfuncao

funcao pilhaCheia: logico
inicio
   se topo = 20 entao
      retorne verdadeiro
   senao
      retorne falso
   fimse
fimfuncao

funcao empilhar(elemento: inteiro) : logico
inicio
   se pilhaCheia entao
      retorne falso
   senao
      topo <- topo + 1
      pilha[topo] <- elemento
      retorne verdadeiro
   fimse
fimfuncao

funcao removerTopo: inteiro
inicio
   se pilhaVazia entao
      retorne - 999
   senao
      elemento <- pilha[topo]
      pilha[topo] <- 0
      topo <- topo - 1
      retorne elemento
   fimse
fimfuncao

procedimento excluirTodosElementos
var k: inteiro
   pilha_aux: vetor[0..0] de inteiro
inicio
   limpatela
      mudaCorVermelho
      se pilhaVazia entao
         separador2
         bannerAlerta
         escreval("N�o � poss�vel remover todos os elementos da pilha.")
         escreval()
         escreval("Motivo ==> A pilha est� vazia.")
         escreval()
         escreval("Voc� pode voltar a empilhar.")
         separador2

      senao


   mudaCorBranco
   bannerMensagem
   escreval(separador)
   escreval("Todos os elementos da pilha removidos de uma s� vez,")
   escreval()
   escreval("com sucesso, conforme a lista abaixo:")
   escreval()
      para i de capMaxVetor ate 10 passo -1 faca
         pilha[i] <- 0
         escreval(i, "� => ", pilha[i])
      fimpara

      para i de capVetorListar9a1 ate capMinVetor passo -1 faca
          pilha[i] <- 0
          escreval(i, "� ==> ", pilha[i])
      fimpara

   topo <- 0
   escreval(separador)
   fimse
fimprocedimento

Inicio
separador <- ("--------------------------------------------------------")
qtd <- 0
x <- 0
inicializar
mensagemInicial
menuPrincipal

enquanto opcao <> "0" faca

   se opcao = "1" entao
      limpatela
      se pilhaCheia entao
         separador2
         mudaCorVermelho
         vermelho <- 1
         msgCapMaxAting
      senao
         se vermelho = 1 entao
            mudaCorBranco
            fimse
            bannerMensagem
            escreval("Capacidade da pilha nesse momento: [", (capMaxVetor + 1) - (topo + 1), " ] elementos.")
            escreval()
            escreva("Digite o elemento da pilha ( n�mero inteiro, por favor ) => ")
            leia(valor)

               se empilhar(valor) entao
                  qtd <- (qtd + 1)
                  limpatela
                  bannerEmpilhado
                  separador2
                  escreval("")
               fimse
         fimse
   fimse


   se opcao = "2" entao
      limpatela
      se pilhaVazia entao
         separador2
         bannerAlerta
         escreval("A pilha est� vazia, n�o h� o que desempilhar.")
         escreval("")
         escreval("Voc� pode adicionar elementos nela.")
         separador2

      senao
         mudaCorBranco
         valor <- removerTopo
         x <- valor
         qtd <- (qtd - 1)
         bannerDesempilhar
         escreval("")
      fimse
   fimse

   se opcao = "3" entao
      limpatela
      se pilhaVazia entao
         separador2
         bannerAlerta
         escreval("A pilha est� vazia, n�o h� o que mostrar.")
         escreval()
         escreval("Voc� pode voltar a empilhar.")
         separador2

      senao
         mudaCorAzul
         bannerTopo
      fimse
   fimse


   se opcao = "4" entao
      limpatela
      mudaCorVermelho
      se pilhaVazia entao
         separador2
         bannerAlerta
         escreval("A pilha est� vazia, n�o h� o que mostrar.")
         escreval()
         escreval("Voc� pode voltar a empilhar.")
         separador2

      senao
         mudaCorAzul
         bannerListagem
         escreval()
         escreval("O resultado da pilha empilhada �:")
         escreval()
            para i de capMaxVetor ate 10 passo -1 faca
               escreval(i, "� => ", pilha[i])
            fimpara
         
            para i de capVetorListar9a1 ate capMinVetor passo -1 faca
               escreval(i, "� ==> ", pilha[i])
            fimpara
         escreval()
      fimse
   fimse

   se opcao = "5" entao
      limpatela
      excluirTodosElementos
   fimse

   menuPrincipal

   fimenquanto

   separador2
   escreval("Pilha")
   para i de capMaxVetor ate capMinVetor passo -1 faca
      escreval(pilha[i])
      qtd <- elemento
   fimpara

   se opcao = "0" entao
      limpatela
      mudaCorAmarelo
      msgFecharPrograma
      volteSempre
   fimse

Fimalgoritmo
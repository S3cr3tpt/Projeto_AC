; Perifericos
ON_OFF				EQU			190H
Sel_Nr_Menu			EQU			1A0H
OK					EQU			1B0H
CHANGE				EQU			1C0H
CANCEL				EQU			1D0H
PESO				EQU			1E0H
PRODUTO				EQU 		1F0H

;Constantes
LIMITEPESO			EQU			1000H
PONTOASCII			EQU			1002H
MASCARAANTESVIRGULA	EQU			1004H
MASCARADPSVIRGULA	EQU			1006H
NUMERO0ASCII		EQU			1008H
NUMERO9ASCII		EQU			100AH
NUMERO100			EQU			100CH
NUMERO10			EQU			100EH
NUMEROPRODUTOS		EQU			1010H

;Memoria	
INICIOPRODUTOS		EQU			0300H
INCERMENTOPRODUTOS	EQU			0060H
MUDANCACPM			EQU			0062H; isto e simplemente para mudar de
;codigo de produto para um valor na memoria
DISTANCIAPESO		EQU			0064H
DISTANCIAPRECO		EQU			0066H
DISTANCIATOTAL		EQU			0068H



; Display
Display				EQU			210H
Display_end 		EQU			27FH
CaracterVazio 		EQU 		20H			; Caracter para limpar o ecra

MBalanca			EQU 		1			; Opcao de Balanca
MRegistos			EQU 		2			; Opcao de Registos
OLimpa				EQU 		3			; Opcao de Limpar

;StackPointer 		EQU 		6000H 

Place 0060H
incrementos:
	WORD 112
	WORD 100
	WORD 36
	WORD 68
	WORD 86
Place 0180H
MostraBotoes:
	String "Botoes em baixo "

Place 0192H
BOnOff:
	String "On_off        "

Place 01A2H
BSel_Nr_Menu:
	String "Sel_Nr_Menu   "

Place 01B2H
BOk:
	String "Ok            "

Place 01C2H
BChange:
	String "Change        "

Place 01D2H
BCancel:
	String "Cancel        "

Place 01E2H
BPeso:
	String "Peso          "

Place 01F2H
BProduto:
	String "Produto       "


;Tabela dos Precos e Nomes 
Place 0300H
Uvas:	
	String "100   Uvas      "
	String "Peso :          "
	String "              KG"
	String "Preco:          "
	String "      5.34EUR/KG"
	String "Total:          "
	String "             EUR"
Place 0370H
Melancia:	
	String "101 Melancia    "
	String "Peso :          "
	String "              KG"
	String "Preco:          "
	String "      1.87EUR/KG"
	String "Total:          "
	String "             EUR"

Place 03E0H
Ananas:	
	String "102  Ananas     "
	String "Peso :          "
	String "              KG"
	String "Preco:          "
	String "      1.87EUR/KG"
	String "Total:          "
	String "             EUR"
Place 0450H
Kiwi:	
	String "103   Kiwi      "
	String "Peso :          "
	String "              KG"
	String "Preco:          "
	String "      3.56EUR/KG"
	String "Total:          "
	String "             EUR"
Place 04C0H
Pessego:	
	String "104  Pessego    "
	String "Peso :          "
	String "              KG"
	String "Preco:          "
	String "      4.46EUR/KG"
	String "Total:          "
	String "             EUR"
Place 0530H
Banana:	
	String "105  Banana     "
	String "Peso :          "
	String "              KG"
	String "Preco:          "
	String "     2.58EUR/KG"
	String "Total:          "
	String "             EUR"	

Place 05A0H
Morango:	
	String "106  Morango    "
	String "Peso :          "
	String "              KG"
	String "Preco:          "
	String "     4.46EUR/KG"
	String "Total:          "
	String "             EUR"

Place 0610H
Framboesa:	
	String "107 Framboesa   "
	String "Peso :          "
	String "              KG"
	String "Preco:          "
	String "     17.81EUR/KG"
	String "Total:          "
	String "             EUR"

Place 0680H
Laranja:	
	String "108  Laranja    "
	String "Peso :          "
	String "              KG"
	String "Preco:          "
	String "      1.60EUR/KG"
	String "Total:          "
	String "             EUR"

Place 06F0H
Tangerina:	
	String "109 Tangerina   "
	String "Peso :          "
	String "              KG"
	String "Preco:          "
	String "      2.22EUR/KG"
	String "Total:          "
	String "             EUR"

Place 0760H
Cenoura:	
	String "110  Cenoura    "
	String "Peso :          "
	String "              KG"
	String "Preco:          "
	String "      1.04EUR/KG"
	String "Total:          "
	String "             EUR"

Place 07D0H
Batata:	
	String "111  Batata     "
	String "Peso :          "
	String "              KG"
	String "Preco:          "
	String "      1.14EUR/KG"
	String "Total:          "
	String "             EUR"

Place 0840H
Nabo:	
	String "112   Nabo      "
	String "Peso :          "
	String "              KG"
	String "Preco:          "
	String "      2.28EUR/KG"
	String "Total:          "
	String "             EUR"

Place 08B0H
Beterraba:	
	String "113 Beterraba   "
	String "Peso :          "
	String "              KG"
	String "Preco:          "
	String "      5.23EUR/KG"
	String "Total:          "
	String "             EUR"

Place 0920H
Alho:	
	String "114   Alho      "
	String "Peso :          "
	String "              KG"
	String "Preco:          "
	String "      6.19EUR/KG"
	String "Total:          "
	String "             EUR"

Place 0990H
Cebola:	
	String "115  Cebola     "
	String "Peso :          "
	String "              KG"
	String "Preco:          "
	String "     1.43EUR/KG"
	String "Total:          "
	String "             EUR"

Place 0A00H
Ervilha:	
	String "116  Ervilha    "
	String "Peso :          "
	String "              KG"
	String "Preco:          "
	String "      1.42EUR/KG"
	String "Total:          "
	String "             EUR"

Place 0A70H
Lentilhas:	
	String "117 Lentilhas   "
	String "Peso :          "
	String "              KG"
	String "Preco:          "
	String "      2.19EUR/KG"
	String "Total:          "
	String "             EUR"


Place 0AE0H
Trigo:	
	String "118   Trigo     "
	String "Peso :          "
	String "              KG"
	String "Preco:          "
	String "      0.95EUR/KG"
	String "Total:          "
	String "             EUR"

Place 0B50H
Milho:	
	String "119   Milho     "
	String "Peso :          "
	String "              KG"
	String "Preco:          "
	String "      3.62EUR/KG"
	String "Total:          "
	String "             EUR"

Place 0BC0H
Favas:	
	String "120   Favas     "
	String "Peso :          "
	String "              KG"
	String "Preco:          "
	String "      4.07EUR/KG"
	String "Total:          "
	String "             EUR"

Place 0C30H
Castanhas:	
	String "121 Castanhas   "
	String "Peso :          "
	String "              KG"
	String "Preco:          "
	String "      8.92EUR/KG"
	String "Total:          "
	String "             EUR"

Place 0CA0H
Noz:	
	String "122    Noz      "
	String "Peso :          "
	String "              KG"
	String "Preco:          "
	String "     18.39EUR/KG"
	String "Total:          "
	String "             EUR"



Place 0D10H
Amendoim:	
	String "123 Amendoim    "
	String "Peso :          "
	String "              KG"
	String "Preco:          "
	String "      8.03EUR/KG"
	String "Total:          "
	String "             EUR"

Place 0D80H
Cafe:	
	String "124   Cafe      "
	String "Peso :          "
	String "              KG"
	String "Preco:          "
	String "     20.25EUR/KG"
	String "Total:          "
	String "             EUR"


	
Place 1000H
Constantes:
	WORD 30000; maior que 30 kg
	WORD 46	; PONTO EM ASCII
	WORD 255; 00FFH
	WORD 65280; FF00H
	WORD 48	;NUMERO 0 EM ASCII
	WORD 57 ;NUMERO 9 EM ASCII
	WORD 100; Valor a ser comparado para as decimas
	WORD 10 ; Valor a ser Multiplicado p
	WORD 26 ;Numero de produtos +1


Place 2000H
MenuInicio:
	String " MENU PRINCIPAL "
	String "1 - BALANCA     "
	String "2 - REGISTOS    "
	string "----------------"
	String "3 - LIMPAR      "
	String "    REGISTOS    "

Place 2080H
MenuBalanca:
	String "  MENU BALANCA  "
	String "   POR FAVOR    "
	String "    INSIRA      "
	String "   O PESO E O   "
	String "    PRODUTO     "
	String "                "
	String "                "

Place 2100H
MenuErro:
	String "    ATENCAO     "
	String "                "
	String "    OPCAO       "
	string "    ERRADA      "
	String "                "
	String "                "	
	String "                "

Place 2180H
MenuDadosErrados:
	String "                "
	String "    ATENCAO     "
	String "    VERIFIQUE   "
	String "    OS DADOS    "
	String "    INSERIDOS   "
	String "                "
Place 21F0H
MenuConfirmacaoClear:
	String "                "
	String "    ATENCAO     "
	String "    ISTO IRA    "
	String "    APAGAR TODOS"
	String "    OS DADOS    "
	String "    INSERIDOS   "


Place 0000H
Inicio:	
		MOV R0, Principio
		JMP R0

Place 3000H

;inicializar o stackpoint para o Call funcuonar
pilha:
	STACK 50H;
StackPointer:

Principio:

	MOV SP, StackPointer
	CALL LimpaDisplay
	CALL LimpaPerifericos
	MOV R0, ON_OFF
Liga:
	MOVB R1, [R0]
	CMP R1, 1
	JNE Liga
ligado:	
	MOV R2, MenuInicio
	CALL MostraDisplay
	CALL LimpaPerifericos
Le_Opcao:
	MOV R0, Sel_Nr_Menu
	MOV R3, [OK]
	MOVB R1, [R0]
	CMP R3,0; Caso o OK esteja a 0 entao volta atras
	JLE Le_Opcao;volta atras
	CMP R1, 0;caso nada seja selecionado volta atras
	JEQ Le_Opcao; volta atras
	CMP R1, MBalanca;OPCAO 1
	JEQ BufferBalanca
	CMP R1, MRegistos;OPCAO 2
	;JEQ BufferMostraDisplayProdutos
	CMP R1, OLimpa; Opcao 3
	CALL ConfirmacaoClear;
	CMP R1,1
	JEQ ligado
	CALL RotinaERRO
	JMP ligado


BufferBalanca:
	MOV R1, OK
	MOVB R3, [R1] ; R3 = VALOR QUE ESTA NO OK
	CMP R3, 0
	JLE	BufferBalanca
	MOV R1, CANCEL
	MOVB R3, [R1] ; R3 = VALOR QUE ESTA NO CANCEL	
	CMP R3, 1
	JEQ	ligado
	MOV R2, MenuBalanca
	CALL MostraDisplay
	CALL LimpaPerifericos
	JMP OBalanca

;------------------
;   Rotina Erro
;------------------			
		
RotinaERRO:
	PUSH R0
	PUSH R1
	PUSH R2
	MOV R2, MenuErro
	CALL MostraDisplay
	CALL LimpaPerifericos		
	MOV R0, OK
ERRO:
	MOVB R1, [R0]
	CMP R1, 1
	JNE ERRO
	POP R2
	POP R1
	POP R0
	RET

RotinaERROBalanca:
	PUSH R8
	PUSH R2
	MOV R8,0
	MOV R2, MenuDadosErrados
	CALL MostraDisplay
	CALL LimpaPerifericos
	
	POP R2;
	POP R8;
	RET 

MostraDisplay:
	PUSH R0
	PUSH R1
	PUSH R3
	MOV R0, Display
	MOV R1, Display_end
Ciclo:	
	MOV R3, [R2]
	MOV [R0], R3
	ADD R2, 2
	ADD R0, 2
	CMP R0, R1
	JLE Ciclo
	POP R3
	POP R2
	POP R1
	RET


;----------------------
;MostraDisplay Produtos
;----------------------

MostraDisplayProdutos:
	PUSH R0
	PUSH R1
	PUSH R2
	PUSH R3
	PUSH R4
	PUSH R5
	PUSH R6
	PUSH R7
	PUSH R8
	PUSH R9
	PUSH R10
	PUSH R11
	PUSH TEMP
	MOV R0, OK;Coloca temporariamente o endereco do OK em R0
	MOV R1,0; Coloca temporariamente o 0 em R1
	MOV [R0], R1 ;Volta a colocar o Ok a 0
 	MOV R0, Display; Coloca em R0 o  apontador para o inicio do display
	MOV R1, Display_end; coloca em R1 o apontador para o fim do disply
	MOV R2, INICIOPRODUTOS; Coloca o apontador de R2 para o inicio dos produtos
	MOV R6, 0; inicia o Contador para saber em qual produto estamos
	MOV R7, [MUDANCACPM]; Coloca em R7 100  por causa do codigo do produto
	MOV R8, [INCERMENTOPRODUTOS]; Coloca em R8 o valor para passar ao proximo produto
	MOV R9, [NUMEROPRODUTOS]; Coloca o numero de produtos em R9
	MOV R10, 9; Coloca 8 em R10 para verificar se ja acabou a linha
	MOV TEMP, 0; Coloca a variavel temporaria a 0 para ser o contador
	JMP LoopLinhaDisplay; Carrega a primeira parte
BufferLoopDisplay:
	MOV R11,0;COloca o R11 a 0
	MOV [OK],R11; Coloca O botao de OK a 0
	SUB R2, 4; Volta as primeiras 4 casas
	SUB R2, 4; Volta as primeiras 4 casas
	SUB R2, 4; Volta as primeiras 4 casas
	SUB R2, 4; Volta ao inicio do priduto
	ADD R2, R8; Passa ao proximo produto
LoopDisplay: 
 	MOV R0, Display; Coloca em R0 o  apontador para o inicio do display
	MOV TEMP,CANCEL ;COloca a variavel temporaria a apontar para o cancel
	MOVB R5, [TEMP]; Coloca em R5 o registo que esta em CANCEL
	MOV TEMP, OK; COloca o apontador par ok em TEMP
	MOVB R4, [TEMP]; COloca em R4 o valor do enderenco Temp
	MOV TEMP, 0; Coloca a variavel temporaria a 0
	CMP R5, 1; Verifica se o utilizador quer cancelar
	JEQ AcabaDisplay; Acaba o display e volta a aparecer o menu
	CMP R4, 0; Verifica se o utilizador quer continuar
	JLE LoopDisplay; Volta atras caso nao quira
LoopLinhaDisplay:
	ADD R6, 1; Incrementa 1 nos produtos
	CMP R9, R6; Verifica se ja acabou os produtos
	JLE BufferAcabaDisplay; Se ja estiver ultrapassado o numero de produtos acaba
BufferLinhaDisplay:
	ADD TEMP, 1; Adiciona 1 a variavel temporaria
	CMP TEMP, R10; verifica se a primeira linha ja foi escrita
	JEQ BufferDisplayLinha; Vai incrementar para o poximo produto e depois voltar atras;
	MOV R4, [R2]; Coloca em R4 o valor que esta em R2, estou a reutilizar para poupar memoria
	MOV [R0], R4; Coloca no Display o valor de R2
	ADD R2, 2; avanca na casa do prodito
	ADD R0,2; avanca no display
	CMP R0, R1; Se o display ja acabou entao volta atras
	JLE BufferLinhaDisplay; Repete o processo para dar print em tudo
	JMP BufferLoopDisplay; Volta tras para a opcao de prosseguir
BufferDisplayLinha:	
	SUB R2, 4; Volta as primeiras 4 casas
	SUB R2, 4; Volta as primeiras 4 casas
	SUB R2, 4; Volta as primeiras 4 casas
	SUB R2, 4; Volta ao inicio do priduto
	ADD R2, R8; Passa ao proximo produto
	MOV TEMP,0;Voolta a colocar o contador a 0
	JMP LoopLinhaDisplay; passa a proxima linha do display
BufferAcabaDisplay:
	MOV R11,0;Coloca o R11 a 0
	MOV [OK],R11; Volta a colocar o Ok a 0 para esperar o input do utilizador
LoopEsperaPorInput:
	MOV TEMP, OK; Le o ok 
	MOVB R0,[TEMP];Coloca o valor do OK em R0
	CMP R0, 0;Se o R0 estiver a 1 acaba o display
	JEQ LoopEsperaPorInput; Caso contrario volta atras
AcabaDisplay:
	POP TEMP
	POP R11
    POP R10
	POP R9
	POP R8
	POP R7
	POP R6
	POP R5
	POP R4
	POP R3
	POP R2
	POP R1
	POP R0
	CALL LimpaPerifericos
	RET
;--------------------
; Limpa Perifericos
;--------------------				
			
LimpaPerifericos:
	PUSH R0
	PUSH R1
	PUSH R2
	PUSH R3
	PUSH R4
	PUSH R5
	PUSH R6
	MOV R0, ON_OFF
	MOV R1, Sel_Nr_Menu
	MOV R2, OK
	MOV R3, CHANGE
	MOV R4, CANCEL
	MOV R5, PESO 
	MOV R6, PRODUTO
	MOV R7, 0
	MOV R8, 0
CicloLimpaPerifericos:; Para limpar os 2 brimeiros bits
	ADD R0,R8		
	ADD R1,R8
	ADD R2,R8
	ADD R3,R8
	ADD R4,R8
	ADD R5,R8
	ADD R6,R8
	MOVB [R0], R7
	MOVB [R1], R7
	MOVB [R2], R7
	MOVB [R3], R7
	MOVB [R4], R7
	MOVB [R5], R7
	MOVB [R6], R7
	ADD R8, 1
	CMP R8, 1
	JEQ CicloLimpaPerifericos
	POP R6
	POP R5
	POP R4
	POP R3
	POP R2
	POP R1
	POP R0
	RET

;------------------
;  Limpa Display
;------------------	

	
LimpaDisplay:
	PUSH R0
	PUSH R1
	PUSH R2		
	MOV R0, Display
	MOV R1, Display_end
CicloLimpa:	
	MOV R2, CaracterVazio
	MOVB [R0], R2
	ADD R0, 1
	CMP R0, R1
	JLE CicloLimpa
	POP R2
	POP R1
	POP R0		
	RET	

;----------------------------------------------------------------
;Buffers para voltar ao inicio
;----------------------------------------------------------------
BufferCancel:JMP ligado	
BufferDesliga: JMP Principio
;-----------------------------------------------------
;Isto e simplemente para dar clear nos registos pois 
;estamos a assumir que so pode ter uma vez cada fruta
;e o Total e o registo que vai ficar
;-----------------------------------------------------

ConfirmacaoClear:
	MOV R2, MenuConfirmacaoClear ;coloca o apontador para o inicio do menu em R2
	CALL MostraDisplay; Mostra o menu 
	CALL LimpaPerifericos; limpa os perifericos
LoopClear:
	MOV TEMP,OK; COloca em TEMP o endereco de OK
	MOVB R3,[TEMP]; Le o botao de OK
	CMP R3, 1; Verifica se esta a 1
	JEQ ClearRegistos;Apaga todos os registos
	MOV TEMP, CANCEL; COloca o endereco de Cancel EM TEMP
	MOVB R3, [TEMP]; le o botao de cancelar em r3
	CMP R3, 1; Verifica se o botao de cancelar esta ativo
	JEQ BufferClear; Volta para o menu anterior
	JMP LoopClear; Volta atras caso o utilizador nao escolha
ClearRegistos:
	MOV R0, [INCERMENTOPRODUTOS]; Coloca em R0, o incremento para o proximo produto
	MOV R10, [NUMEROPRODUTOS]; Coloca o numero de produtos em R10
	MOV R11, 0; Coloca em R11 o contador
	MOV R2, INICIOPRODUTOS; coloca o apontador para o incio em R2
LoopRemover:
	ADD R11,1; Adiciona 1 ao contador
	CMP R11,R10; COmpara para ver se ja cheou ao final
	JEQ BufferClear; ACaba
	MOV R5,R2; Copia tambem para o R5
	MOV R6, [DISTANCIAPESO]; Coloca em R6 a disancia ao peso
	MOV R7,CaracterVazio ; Colloca 20H em R7
	ADD R5, R6; Vai para o Peso
	MOV [R5], R7; Apaga a primeira casa do peso
	ADD R5, 2;avanca
	MOV [R5], R7;apaga a segunda casa do peso
	ADD R5, 2;avanca
	MOV [R5], R7;apaga a terceira casa do peso
	ADD R5, 2;avanca
	MOV [R5], R7;apaga a Quarta casa do peso
	ADD R5, 2;avanca
	MOV [R5], R7;apaga a quinta casa do peso
	MOV R6, [DISTANCIATOTAL]
	MOV R5,R2
	ADD R5,R6
	MOV [R5], R7; Apaga o total
	ADD R5, 2;avanca
	MOV [R5], R7; Apaga o total
	ADD R5, 2;avanca
	MOV [R5], R7; Apaga o total
	ADD R5, 2;avanca
	MOV [R5], R7; Apaga o total
	ADD R5, 2;avanca
	MOV [R5], R7;
	ADD R2,R0
	JMP LoopRemover
BufferClear:
	MOV R1,1
	RET

;------------------
;  	 Balanca
;------------------	
BufferMostraDisplayProdutos:
	CALL MostraDisplayProdutos; Chama a funcao para mostrar os produtos
	MOV R2, MenuBalanca;Guarda a posicao def moemoria do menu inicial
	CAll MostraDisplay;Mostra o menu de escolha do peso e do Produto
OBalanca:
	;carrega o valor dos perifericos
	MOV R0, CANCEL; Carrega o botao de Cancel em R0
	MOVB R1, [R0]; Carrega o valor do botao cancel
	CMP R1,1 ;verifica se esta pressionao
	JEQ BufferCancel;
	MOV R0, ON_OFF; Carrega o botao de Onoff em R0
	MOVB R1, [R0]; Carrega o valor do botao cancel
	CMP R1,1 ;verifica se esta pressionao
	JEQ BufferDesliga;
	MOV R0,CHANGE; CARREGA o botao change em R0
	MOVB R1, [R0]; carrega o que esta gravado no endereco
	CMP R1, 1; Verifica se esta a 1
	JEQ BufferMostraDisplayProdutos;
	MOV R0, PRODUTO; Coloca em R0 o apontador para o produto
	MOV R1, PESO ;Coloca em R1 o apontador para o peso
	MOV R7, OK; Coloca o em R7 o apontador parabotao de ok
	MOV R9, [NUMEROPRODUTOS]; Coloca em R9 24, que e o numero de produtos
	MOVB R8, [R7]	; R8 = BOTAO DE OK
	MOVB R2, [R0]	; R2 = PRODUTO
	MOV R3, [R1]	; R3 = PESO
	MOV R4, [LIMITEPESO]
	CMP R2, 0; VERIFICAR SE O PRODUTO ESTA A 00
	JLE OBalanca;volta atras
	CMP R3,0; VERIFICAR SE O PESO ESTA A 00
	JLE OBalanca;Volta atras 
	MOV R4, [MUDANCACPM]; Guarda em R4, a mudanca de Codifo para produto
	SUB R2,R4; aqui fica guardado no r2 qual e o produto
	CMP R4, R3	;VERIFICAR SE O PESO ULTRAPASSA 30000 QUE E 7530H
	CALL RotinaERROBalanca;Vai para erro se o peso for maior que 30000
	CMP R9, R0; Se o valor recebido em R0 for maior que R9 quer dizer que o produto nao existe
	CALL RotinaERROBalanca ;Da erro caso isso aconteca
	CMP R8, 0; verifica se o botao de ok esta a 1
	JLE OBalanca
	MOV R5, INICIOPRODUTOS ; onde vamos guardar onde estamos nos menus
	MOV R6, [INCERMENTOPRODUTOS]	; o valor que vai incrementar nos menus

CicloEncontraFruta:
	CMP R2,0
	JEQ BufferDisplay
	ADD R5,R6
	SUB R2, 1
	JMP CicloEncontraFruta
BufferDisplay:
	MOV R2, R5
	CALL EditarPrint
	CALL MostraDisplay
	CALL LimpaPerifericos
	JMP OBalanca
EditarPrint:
	PUSH R6
	PUSH R7
	PUSH R8
	PUSH R9
	PUSH R10
	PUSH R11
	PUSH TEMP

	MOV R6, [DISTANCIAPESO]; mete em r6 a distancia ao peso
	MOV R7, R5
	MOV R8, [MASCARAANTESVIRGULA];colocaar em R8 00FF
	MOV R9, [MASCARADPSVIRGULA]; colocar em R9 FF00
	MOV R10,[NUMERO0ASCII] ; COLOCAR O NUMERO 0 ASCII EM R10 MUDAR ISTO PARA DINAMICO DEPOIS
	MOV TEMP, [PONTOASCII];coloca o Ponto em ASCII na variavel temporaria
	AND R8, R3 ; Vai buscar os digitos antes da virgula
	AND R9, R3 ;Vai buscar os numeros depois da virgula
	SHR R9,8	;coloca os bits na parte menos significativa
	ADD R7,R6	;passa para a casa para escrever o peso
	MOV [R7],R8;Coloca a parte inteira
	ADD R7,2;avanca
	MOV [R7], TEMP; coloca o ponto
	ADD R7,2;avanca
	MOV [R7], R9;coloca a parte decimal
	MOV R6, [DISTANCIAPRECO] ; coloca a distancia ao preco para ir buscalo
	MOV R7, R5	; volta ao inicio para o incremento estar certo
	ADD R7,R6	;POE O APONTADOR R7 PARA O PRECO
	MOVB R8, [R7] ; Coloca a parte decimal do preco em R8
	ADD R7, 2; avanca para a casa das unidades 
	MOV R11, [R7]	;Colocar o valor da casa das unidades e o "ponto" para R11
	MOV TEMP, [MASCARADPSVIRGULA]; Colocar a mascara em TEMP
	AND R11, TEMP; Fazer colocar os ultimo bit a 0 Pois e o "ponto"
	SHR R11,8; Mover 8 bits para a direita para ficar os bits na casa unidade
	CMP R8, R10;verificar se o valor recebito em R8 era 0
	JLE R8NaoASCII ; salta para o SomaUnidades se o falor recebido for 0
	SUB R8, R10 ; passa o valor R8 de ASCII para unidade
	MOV TEMP, [NUMERO10]; Coloca o numero 10 em 
	MUL R8, TEMP; Multiplica R8 por 10
	JMP SomaUnidades; Salta para o SomaUnidades
R8NaoASCII:
	MOV R8,0; Caso o R8 nao for um valor ASCII
SomaUnidades:
	SUB R11, R10; Transforma o R11 de ASCII para unidades
	ADD R8,R11; Colocar o Valor da soma no R8
	MUL R8,R3 ; Multiplica o peso pelo preco
	ADD R7, 2; Coloca o apontador R7 a apontar para as casas decimais
	MOV R11, [R7];Coloca Ambos os digitos em R11
	MOV R9, [MASCARADPSVIRGULA]; Coloca em R9, FF00
	AND R9, R11; Coloca em R9 o valor primeiro digito decimal
	SHR R9, 8; Coloca os bits na parte menos significativa
	SUB R9, R10; Tansforma de ASCII para unidades
	MOV TEMP, [MASCARAANTESVIRGULA]; Coloca em R10 00FF
	AND R11, TEMP; coloca o R11 SO com o segundo digito
	SUB R11, R10; Transforma o R11 de ASCII para unidades
	MOV TEMP, [NUMERO10]; Coloca o numero 10 em 
	MUL R9, Temp; Multiplica R9 por 10
	ADD R9,R11; Coloca em R9, o valor total das decimas
	MUL R9, R3; Multiplica a parte decimal pelo peso
	MOV TEMP, [NUMERO100]; Coloca em TEMP o numero 100
	MOV R11, 0;Coloca o R11 a 0 para ser o valor adicionado caso as decimas sejam superiores a 100
LoopDecimas:
	CMP R9,TEMP ;Verifica se o R9 e maior que 100
	JLE ColocaDecimas;salta para o proximo passo se for
	SUB R9, TEMP; Subtrai 100 
	ADD R11, 1; Adiciona 1 para as unidades
	JMP LoopDecimas; Volta ao inicio do loop
ColocaDecimas:
	ADD R8, R11; Adiciona o valor obtido antes para R8
	MOV R7, R5; Volta ao inicio do produto
	MOV R6, [DISTANCIATOTAL]; Mete a distancia para o total em R6
	ADD R7, R6; coloca O apontador (R7) para o total
	MOV [R7], R8; Coloca no total o valor de R8
	MOV TEMP, [PONTOASCII]; Coloca o "ponto" ASCII em TEMP
	ADD R7,2;Passa uma casa a frente
	MOV [R7], TEMP; Coloca o "ponto" ASCII
	ADD R7, 2; Passa uma casa a frente
	MOV [R7], R9; Coloca o valor decimal 
	;Aqui os valores ja estao todos como deviao estar
	;Agora falta so transormar o R8 e o R9 em valores ASCII
	;E coloca los na memoria

	POP TEMP
	POP R11
	POP R10
	POP R9
	POP R8
	POP R7
	POP R6
	RET

;Falta na parte das opcoes e perciso let tambem quando o valor e 2 
; Valor 2 Ver os registos Ja feitos
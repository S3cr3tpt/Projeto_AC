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
;Memoria	
INICIOPRODUTOS		EQU			0300H
ICREMENTOPRODUTOS	EQU			0060H
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
	WORD 70
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
	String "      Uvas      "
	String "Peso :          "
	String "              KG"
	String "Preco:          "
	String "      5.34EUR/KG"
	String "Total:          "
	String "                "
Place 0370H
Melancia:	
	String "    Melancia    "
	String "              KG"
	String "                "
	String "Preco:          "
	String "      1.87EUR/KG"
	String "Total:          "
	String "                "

Place 03E0H
Ananas:	
	String "     Ananas     "
	String "              KG"
	String "                "
	String "Preco:          "
	String "      1.87EUR/KG"
	String "Total:          "
	String "             EUR"
Place 0450H
Kiwi:	
	String "      Kiwi      "
	String "Peso :          "
	String "              KG"
	String "Preco:          "
	String "      3.56EUR/KG"
	String "Total:          "
	String "             EUR"
Place 04C0H
Pessego:	
	String "     Pessego    "
	String "Peso :          "
	String "              KG"
	String "Preco:          "
	String "      4.46EUR/KG"
	String "Total:          "
	String "             EUR"
Place 0530H
Framboesa:	
	String "    Framboesa   "
	String "Peso :          "
	String "              KG"
	String "Preco:          "
	String "     17.81EUR/KG"
	String "Total:          "
	String "             EUR"
Place 05A0H
Laranja:	
	String "     Laranja    "
	String "Peso :          "
	String "              KG"
	String "Preco:          "
	String "      1.60EUR/KG"
	String "Total:          "
	String "             EUR"
Place 0610H
Tangerina:	
	String "    Tangerina   "
	String "Peso :          "
	String "              KG"
	String "Preco:          "
	String "      2.22EUR/KG"
	String "Total:          "
	String "             EUR"
Place 0680H
Cenoura:	
	String "     Cenoura    "
	String "Peso :          "
	String "              KG"
	String "Preco:          "
	String "      1.04EUR/KG"
	String "Total:          "
	String "             EUR"
Place 06F0H
Batata:	
	String "     Batata     "
	String "Peso :          "
	String "              KG"
	String "Preco:          "
	String "      1.14EUR/KG"
	String "Total:          "
	String "             EUR"
Place 0760H
Nabo:	
	String "      Nabo      "
	String "Peso :          "
	String "              KG"
	String "Preco:          "
	String "      2.28EUR/KG"
	String "Total:          "
	String "             EUR"
Place 07D0H
Beterraba:	
	String "    Beterraba   "
	String "Peso :          "
	String "              KG"
	String "Preco:          "
	String "      5.23EUR/KG"
	String "Total:          "
	String "             EUR"
Place 0840H
Alho:	
	String "      Alho      "
	String "Peso :          "
	String "              KG"
	String "Preco:          "
	String "      6.19EUR/KG"
	String "Total:          "
	String "             EUR"
Place 08B0H
Cebola:	
	String "     Cebola     "
	String "Peso :          "
	String "              KG"
	String "Preco:          "
	String "     1.43EUR/KG"
	String "Total:          "
	String "             EUR"
Place 0920H
Ervilha:	
	String "     Ervilha    "
	String "Peso :          "
	String "              KG"
	String "Preco:          "
	String "      1.42EUR/KG"
	String "Total:          "
	String "             EUR"
Place 0990H
Lentilhas:	
	String "    Lentilhas   "
	String "Peso :          "
	String "              KG"
	String "Preco:          "
	String "      2.19EUR/KG"
	String "Total:          "
	String "             EUR"
Place 0A00H
Trigo:	
	String "      Trigo     "
	String "Peso :          "
	String "              KG"
	String "Preco:          "
	String "      0.95EUR/KG"
	String "Total:          "
	String "             EUR"
Place 0A70H
Milho:	
	String "      Milho     "
	String "Peso :          "
	String "              KG"
	String "Preco:          "
	String "      3.62EUR/KG"
	String "Total:          "
	String "             EUR"
Place 0AE0H
Favas:	
	String "      Favas     "
	String "Peso :          "
	String "              KG"
	String "Preco:          "
	String "      4.07EUR/KG"
	String "Total:          "
	String "             EUR"
Place 0B50H
Castanhas:	
	String "    Castanhas   "
	String "Peso :          "
	String "              KG"
	String "Preco:          "
	String "      8.92EUR/KG"
	String "Total:          "
	String "             EUR"
Place 0BC0H
Noz:	
	String "       Noz      "
	String "Peso :          "
	String "              KG"
	String "Preco:          "
	String "     18.39EUR/KG"
	String "Total:          "
	String "             EUR"
Place 0C30H
Amendoim:	
	String "    Amendoim    "
	String "Peso :          "
	String "              KG"
	String "Preco:          "
	String "      8.03EUR/KG"
	String "Total:          "
	String "             EUR"
Place 0CA0H
Cafe:	
	String "      Cafe      "
	String "Peso :          "
	String "              KG"
	String "Preco:          "
	String "     20.25EUR/KG"
	String "Total:          "
	String "             EUR"


Place 0D10H
Banana:	
	String "     Banana     "
	String "Peso :          "
	String "              KG"
	String "Preco:          "
	String "     2.58EUR/KG"
	String "Total:          "
	String "             EUR"
Place 0D80H
Morango:	
	String "     Morango    "
	String "Peso :          "
	String "              KG"
	String "Preco:          "
	String "     4.46EUR/KG"
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


Place 2000H
MenuInicio:
	String " MENU PRINCIPAL "
	String "1 - BALANCA     "
	String "2 - REGISTOS    "
	string "----------------"
	String "4 - LIMPAR      "
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
	String "     ATENCAO    "
	String "                "
	String "      OPCAO     "
	string "     ERRADA     "
	String "                "
	String "                "	
	String "                "

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
		CMP R1,1
		JEQ ligado
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
		MOVB R1, [R0]
		CMP R1, 0
		JEQ Le_Opcao
		CMP R1, MBalanca
		JEQ BufferBalanca
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
;-----------------------------------------------------
;Isto e simplemente para dar clear nos registos pois 
;estamos a assumir que so pode ter uma vez cada fruta
;e o Total e o registo que vai ficar
;-----------------------------------------------------
ClearRegistos:
	MOV R1,1
	MOV R2, INICIOPRODUTOS
	JMP R2; salta para dar refresh nos produtos


;------------------
;  	 Balanca
;------------------	
OBalanca:
	;carrega o valor dos perifericos
	MOV R0, PRODUTO
	MOV R1, PESO
	MOV R7, OK
	MOVB R8, [R7]	; R8 = BOTAO DE OK
	MOVB R2, [R0]	; R2 = PRODUTO
	MOV R3, [R1]	; R3 = PESO
	MOV R4, [LIMITEPESO]
	CMP R2, 0; VERIFICAR SE O PRODUTO ESTA A 00
	JLE OBalanca
	CMP R3,0; VERIFICAR SE O PESO ESTA A 00
	JLE OBalanca
	CMP R4, R3	;VERIFICAR SE O PESO ULTRAPASSA 3000 QUE E BB0H
	JLE RotinaERRO
	CMP R8, 0
	JLE OBalanca
	MOV R5, INICIOPRODUTOS ; onde vamos guardar onde estamos nos menus
	MOV R6, [ICREMENTOPRODUTOS]	; o valor que vai incrementar nos menus
	MOV R4, [MUDANCACPM]
	SUB R2,R4; aqui fica guardado no r2 qual e o produto
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
	PUSH TEMP
	MOV R6, [DISTANCIAPESO]; mete em r6 a distancia ao peso
	MOV R7, R5
	MOV R8, [MASCARAANTESVIRGULA]
	MOV R9, [MASCARADPSVIRGULA]
	MOV R10,[NUMERO0ASCII] ; COLOCAR O NUMERO 0 ASCII EM R10 MUDAR ISTO PARA DINAMICO DEPOIS

	MOV TEMP, [PONTOASCII]
	AND R8, R3 ; Vai buscar os digitos antes da virgula
	AND R9, R3 ;Vai buscar os numeros depois da virgula
	SHR R9,8
	ADD R7,R6
	MOV [R7],R8;Coloca a parte inteira
	ADD R7,2;avanca
	MOV [R7], TEMP; coloca o ponto
	ADD R7,2;avanca
	MOV [R7], R9;coloca a parte decimal
	MOV R6, [DISTANCIAPRECO] ; coloca a distancia ao preco para ir buscalo
	MOV R7, R5	; volta ao inicio para o incremento estar certo
	ADD R7,R6	;POE O APONTADOR R7 PARA O PRECO
	MOVB R8, [R7] ; Coloca a parte decimal do preco em R8
	


	POP TEMP
	POP R10
	POP R9
	POP R8
	POP R7
	POP R6
	RET

; COMO FAZER AS MULTIPLICACOES, IR BUSCAR O NUMERO ANTESW
;BASICAMENTE IR PARA A POSICAO ANTESERIROR E GUARDAR ESSE
;DEPOIS IR BUSCAR O PROXIMO E USAR A MASCARA E UM BITSHIFT
;PARA CONSEGUIR O VALOR PRETENDIDO OU SO USAR UM MOVB
;DEPOIS IR BUSCAR OS VALORES DECIMAIS
;TIRAR 48 DO VALOR ORIGINAL POIS OS NUMEROS SAO EM EXADECIMAL E ASCII
; PARA DEPOIS FAZER A MULTIPLICACAO COM AS UNIDADES
; PARA DEPOIS FAZER COM AS DECIMAS E SE A MULTIPLICACAO COM AS DECIMAS DER 
;3 DIGITOS EU TIRO O TERCEIRO E ADICIONO O AO VALOR DECIMAL
; DEOPOIS BASTA COLOCAR OS VALORES OUTRAVEZ EM heXADECIMAL DE ASCII 
; E COLOCALOS NA TABELA